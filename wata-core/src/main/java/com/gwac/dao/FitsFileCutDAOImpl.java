/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.dao;

import com.gwac.model.FitsFileCut;
import com.gwac.model.OtLevel2;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

/**
 *
 * @author xy
 */
@Repository
public class FitsFileCutDAOImpl extends BaseHibernateDaoImpl<FitsFileCut> implements FitsFileCutDAO {

  private static final Log log = LogFactory.getLog(FitsFileCutDAOImpl.class);
  
  @Override
  public void moveDataToHisTable() {

    Session session = getCurrentSession();
    String sql = "WITH moved_rows AS ( DELETE FROM fits_file_cut RETURNING * ) INSERT INTO fits_file_cut_his SELECT * FROM moved_rows;";
    session.createSQLQuery(sql).executeUpdate();
  }
  
  @Override
  public List<FitsFileCut> getByName(String ffcName) {

    Session session = getCurrentSession();
    String sql = "select * from fits_file_cut where file_name='"+ffcName+"'";
    Query q = session.createSQLQuery(sql).addEntity(FitsFileCut.class);
    return q.list();
  }
  
  @Override
  public void updateIsRecvOk(long ffcId){
    Session session = getCurrentSession();
    String sql = "update fits_file_cut set is_recv_ok=true where ffc_id=" + ffcId;
    session.createSQLQuery(sql).executeUpdate();
  }
  
  @Override
  public List<FitsFileCut> getUnSyncList(int size) {
    Session session = getCurrentSession();

    String sql = "with updated_rows as "
            + "(update fits_file_cut ffc1 "
            + "set is_sync=true "
            + "from (select ffc_id from fits_file_cut where success_cut=true and (is_sync=false or is_sync is null ) limit " + size + ") ffc2 "
            + "where ffc1.ffc_id=ffc2.ffc_id returning *) "
            + "select ffc.* "
            + "from updated_rows ffc ";
    Query q = session.createSQLQuery(sql).addEntity(FitsFileCut.class);
    return q.list();
  }

  @Override
  public void save(FitsFileCut obj) {
    Session session = getCurrentSession();
    //createSQLQuery createQuery
    String sql = "select ffc_id from fits_file_cut where ot_id=" + obj.getOtId() + " and number=" + obj.getNumber();
    Query q = session.createSQLQuery(sql);
    if (q.list().isEmpty()) {
      super.save(obj);
    }
  }

  @Override
  public List<FitsFileCut> getFirstCutFile(OtLevel2 ot2) {

    Session session = getCurrentSession();
    String sql = "select * from fits_file_cut where ot_id=" + ot2.getOtId() + " and number=" + ot2.getFirstFfNumber();
    Query q = session.createSQLQuery(sql).addEntity(FitsFileCut.class);
    return q.list();
  }

  @Override
  public List<FitsFileCut> getUnCutImageByOtId(long otId, int lastCuttedId) {

    Session session = getCurrentSession();
    String sql = "select * from fits_file_cut where ot_id=" + otId + " and number>=" + lastCuttedId + " order by number asc";
    Query q = session.createSQLQuery(sql).addEntity(FitsFileCut.class);
    return q.list();
  }

  @Override
  public void uploadSuccessCutByName(String fileName) {

    Session session = getCurrentSession();
    String sql = "update fits_file_cut set success_cut=true, upload_time=now() where file_name='" + fileName + "'";
    session.createSQLQuery(sql).executeUpdate();
  }

  /**
   * 按priority升序排序，每次只获取size个未切图的OT2切图文件列表
   *
   * @param dpmId 数据处理机（CCD）的id
   * @param size 获取的图像的个数
   * @param maxPriority 仅仅选择优先级小于maxPriority的图片
   * @return
   */
  @Override
  public String getUnCuttedStarList(int dpmId, int size, int maxPriority) {
    Session session = getCurrentSession();
    //对每个ot2，裁剪所有生成的切图文件
    String sql = "with updated_rows as "
            + "(update fits_file_cut ffc1 "
            + "set request_cut=true, request_time=now() "
            + "from (select ffc_id from fits_file_cut where request_cut=false and dpm_id=" + dpmId + " and priority<" + maxPriority + " order by priority asc limit " + size + ") ffc2 "
            + "where ffc1.ffc_id=ffc2.ffc_id returning *) "
            + "select ff.img_name ffname, ffc.img_x, ffc.img_y, ffc.file_name ffcname, ff.img_path "
            + "from updated_rows ffc "
            + "inner join fits_file2 ff on ffc.ff_id=ff.ff_id "
            + "order by ffc.ot_id asc, ffc.number asc;";

    Query q = session.createSQLQuery(sql);
    List tlst = q.list();

    Iterator itor = tlst.iterator();
    StringBuilder rst = new StringBuilder();
    while (itor.hasNext()) {
      Object[] row = (Object[]) itor.next();
      rst.append(row[0]);
      rst.append(" ");
      rst.append(row[1]);
      rst.append(" ");
      rst.append(row[2]);
      rst.append(" ");
      rst.append(row[3]);
      rst.append(" ");
      rst.append(row[4]);
      rst.append("\n");
    }
    if (tlst.size() > 0) {
      log.debug("get " + tlst.size() + " cut images.");
      log.debug(rst.toString());
    }
    return rst.toString();
  }

  public List<FitsFileCut> getTmplCutImageByOtId(long otId, Boolean queryHis) {

    String sql = "select * from fits_file_cut_his "
            + "where ot_id in (select ot_id from ot_level2_match where mt_id=6 and match_id=" + otId + ") "
            + "order by ot_id, number limit 10;";

    Session session = getCurrentSession();
    Query q = session.createSQLQuery(sql).addEntity(FitsFileCut.class);
    return q.list();
  }

  @Override
  public List<FitsFileCut> getCutImageByOtId(long otId, Boolean queryHis) {

    String sql1 = "select * "
            + "from fits_file_cut ffc "
            + "where ffc.success_cut=true and ffc.ot_id=" + otId;

    String sql2 = "select * "
            + "from fits_file_cut_his ffc "
            + "where ffc.success_cut=true and ffc.ot_id=" + otId;

    String unionSql = "";
    if (queryHis) {
      unionSql = "(" + sql1 + ") union (" + sql2 + ") order by number";
    } else {
      unionSql = sql1 + " order by number";
    }

    Session session = getCurrentSession();
    Query q = session.createSQLQuery(unionSql).addEntity(FitsFileCut.class);
    return q.list();
  }

  /**
   * 通过OT名称，查询该OT所有的切图
   *
   * @param otName
   * @return OT切图路径和名称Map
   */
  public List<FitsFileCut> getCutImageByOtName(String otName) {

    Session session = getCurrentSession();
    String sql = "select * "
            + "from fits_file_cut ffc "
            + "where ffc.success_cut=true and ffc.ot_id=(select ot_id from ot_level2 ob where ob.name='" + otName + "') "
            + "order by ffc.number;";
    Query q = session.createSQLQuery(sql).addEntity(FitsFileCut.class);
    return q.list();
  }

  public List<FitsFileCut> getCutImageByOtNameFromHis(String otName) {

    Session session = getCurrentSession();
    String sql = "select * "
            + "from fits_file_cut_his ffc "
            + "where ffc.success_cut=true and ffc.ot_id=(select ot_id from ot_level2_his ob where ob.name='" + otName + "') "
            + "order by ffc.number;";
    Query q = session.createSQLQuery(sql).addEntity(FitsFileCut.class);
    return q.list();
  }
}
