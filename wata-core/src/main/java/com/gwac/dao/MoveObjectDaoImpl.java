/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.dao;

import com.gwac.model.MoveObject;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

/**
 *
 * @author xy
 */
@Repository(value = "moveObjectDao")
public class MoveObjectDaoImpl extends BaseHibernateDaoImpl<MoveObject> implements MoveObjectDao {
  
  @Override
  public MoveObject getMovObj(String dateStr, int todayMovId){
    String sql="select * from move_object where date_str='"+dateStr+"' and today_mov_id="+todayMovId;
    
    Session session = getCurrentSession();
    Query q = session.createSQLQuery(sql).addEntity(MoveObject.class);
    if(q.list().isEmpty()){
      return null;
    }else{
      return (MoveObject)q.list().get(0);
    }
  }
  
  @Override
  public List<MoveObject> getMovObjs(String dateStr, int camId){
    String sql="select * from move_object where date_str='"+dateStr+"' and dpm_id="+camId;
    
    Session session = getCurrentSession();
    Query q = session.createSQLQuery(sql).addEntity(MoveObject.class);
    return q.list();
  }

  @Override
  public Map<String, Float[]> getMotFitsList(int motId) {

    String sql = " SELECT ff.img_name, oor.x, oor.y "
            + " FROM ot_observe_record_his oor "
            + " INNER JOIN move_object_record mor ON mor.oor_id = oor.oor_id  "
            + " INNER JOIN move_object mo ON mo.mov_id = mor.mov_id "
            + " INNER JOIN fits_file2_his ff ON ff.ff_id = oor.ff_id "
            + " WHERE mo.mov_id=" + motId
            + " ORDER BY ff.img_name";

    Session session = getCurrentSession();
    Query q = session.createSQLQuery(sql);
    Map<String, Float[]> rst = new HashMap();
    Iterator iter = q.list().iterator();
    while (iter.hasNext()) {
      Object row[] = (Object[]) iter.next();
      Float[] coor = new Float[2];
      String imgName = (String) row[0];
      coor[0] = (Float) row[1];
      coor[1] = (Float) row[2];
      rst.put(imgName, coor);
    }
    return rst;
  }

  @Override
  public List<String> getAllDateStr() {

    String sql = "select distinct date_str from move_object order by date_str desc;";

    Session session = getCurrentSession();
    Query q = session.createSQLQuery(sql);
    return q.list();
  }

  @Override
  public Map<Long, String> getMoveObjsInfoByDate(String dateStr, char moveType, int minFrameNumber) {
    Session session = getCurrentSession();
    String sql = "SELECT moor.mov_id, text(ARRAY_AGG((SELECT r FROM (SELECT date_ut, ra_d, dec_d, x_temp, y_temp, dpm_id, ff_number) r))) as mov_detail  "
            + "FROM (  "
            + "SELECT mo.mov_id, "
            + "to_char(oor.ra_d, '999.99999') as ra_d, "
            + "to_char(oor.dec_d, '99.99999') as dec_d, "
            + "to_char(oor.date_ut, 'YYYY MM DD HH24 MI SS') || '.' || to_char(oor.time_sub_second, 'FM999999') as date_ut, "
            + "oor.dpm_id, "
            + "to_char(oor.x_temp, '9999.99') as x_temp, "
            + "to_char(oor.y_temp, '9999.99') as y_temp, oor.ff_number  "
            + "FROM ot_observe_record_his oor  "
            + "INNER JOIN move_object_record mor ON mor.oor_id = oor.oor_id  "
            + "INNER JOIN move_object mo ON mo.mov_id = mor.mov_id and mo.mov_type='" + moveType + "' and total_frame_number>" + minFrameNumber + "  "
            + "WHERE oor.ot_id=0 and mor.mov_id IS NOT NULL AND oor.date_str='" + dateStr + "' "
            + "ORDER BY mo.mov_id, oor.date_ut, oor.dec_d  "
            + ")as moor  "
            + "GROUP BY moor.mov_id order by moor.mov_id";

    Query q = session.createSQLQuery(sql);

    Map<Long, String> rst = new HashMap();
    Iterator iter = q.list().iterator();
    while (iter.hasNext()) {
      Object row[] = (Object[]) iter.next();
      BigInteger movId = (BigInteger) row[0];
      rst.put(movId.longValue(), (String) row[1]);
    }
    return rst;
  }

  @Override
  public String getMoveObjsByDate(String dateStr) {
    Session session = getCurrentSession();
    String sql = "SELECT text(JSON_AGG((SELECT r FROM (SELECT mov_id, tt_frm_num, mov_type, mov_detail) r)))  "
            + "FROM( SELECT  "
            + "moor.mov_id as mov_id, moor.total_frame_number as tt_frm_num, moor.mov_type as mov_type, "
            + "JSON_AGG((SELECT r FROM (SELECT moor.ff_number, moor.ra_d, moor.dec_d, moor.x, moor.y, moor.img_name file_name ORDER BY (moor.mov_id, moor.ff_number, moor.dec_d)) r)) as mov_detail  "
            + "FROM (  "
            + "SELECT oor.ff_number, oor.ra_d, oor.dec_d, oor.x, oor.y, oor.date_ut, oor.oor_id, mor.mov_id, mo.total_frame_number, mo.mov_type, ff.img_name "
            + "FROM ot_observe_record_his oor  "
            + "INNER JOIN move_object_record mor ON mor.oor_id = oor.oor_id  "
            + "INNER JOIN move_object mo ON mo.mov_id = mor.mov_id "
            + "INNER JOIN fits_file2_his ff ON ff.ff_id = oor.ff_id "
            + "WHERE oor.ot_id=0 AND oor.date_str=? "
            + "ORDER BY mo.mov_id, oor.date_ut, oor.dec_d  "
            + ")as moor  "
            + "GROUP BY moor.mov_id, moor.total_frame_number, moor.mov_type "
            + ")as moor2";

    String rst = "";
    Query q = session.createSQLQuery(sql);
    q.setString(0, dateStr);
    if (q.list().size() > 0) {
      rst = (String) q.list().get(0);
    }
    return rst;
  }

  @Override
  public String getNotMatchOTByDate(String dateStr) {
    Session session = getCurrentSession();
    String sql = "SELECT text(JSON_AGG((SELECT r FROM (SELECT ff_number, mov_detail) r))) "
            + "FROM( SELECT "
            + "	moor.ff_number as ff_number, JSON_AGG((SELECT r FROM (SELECT moor.ra_d, moor.dec_d, moor.x, moor.y, moor.img_name file_name) r)) as mov_detail "
            + "FROM ( "
            + "		SELECT oor.ff_number, oor.ra_d, oor.dec_d, oor.x, oor.y, oor.date_ut, oor.oor_id, mor.mov_id, ff.img_name "
            + "		FROM ot_observe_record_his oor "
            + "     INNER JOIN fits_file2_his ff ON ff.ff_id = oor.ff_id "
            + "		LEFT JOIN move_object_record mor ON mor.oor_id = oor.oor_id "
            + "		WHERE oor.ot_id=0 and oor.data_produce_method='1' and mor.mov_id IS NULL AND oor.date_str=? "
            + "		ORDER BY date_ut "
            + "	)as moor "
            + "GROUP BY moor.ff_number "
            + "ORDER BY moor.ff_number "
            + ")as moor2";

    String rst = "";
    Query q = session.createSQLQuery(sql);
    q.setString(0, dateStr);
    if (q.list().size() > 0) {
      rst = (String) q.list().get(0);
    }
    return rst;
  }
}
