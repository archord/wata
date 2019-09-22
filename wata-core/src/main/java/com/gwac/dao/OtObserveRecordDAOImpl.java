/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.dao;

import com.gwac.model.OtLevel2;
import com.gwac.model.OtObserveRecord;
import com.gwac.model.OtObserveRecordMovObj;
import com.gwac.model.OtObserveRecordShow;
import com.gwac.model.OtTmplWrong;
import com.gwac.util.CommonFunction;
import com.gwac.util.SearchBoxSphere;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
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
@Repository(value = "otObserveRecordDAO")
public class OtObserveRecordDAOImpl extends BaseHibernateDaoImpl<OtObserveRecord> implements OtObserveRecordDAO {

  private static final Log log = LogFactory.getLog(OtObserveRecordDAOImpl.class);

  @Override
  public String getLatestRecord(String minOorId) {
    Session session = getCurrentSession();
    String sql = " select date_ut, ff_number, x_temp, y_temp, ra_d, dec_d, mag_aper, magerr_aper, time_sub_second, dpm_id, sky_id, oor_id "
	    + " from ot_observe_record "
	    + " where data_produce_method='1' and ot_id=0 and oor_id> " + minOorId
	    + " ORDER BY dpm_id, sky_id, date_ut, ra_d";

    Query q = session.createSQLQuery(sql);
    Iterator itor = q.list().iterator();

    StringBuilder sb = new StringBuilder();
    while (itor.hasNext()) {
      Object[] row = (Object[]) itor.next();
      sb.append(CommonFunction.getDateTimeString2((Date) row[0]));
      sb.append(",");
      sb.append(row[1]);
      sb.append(",");
      sb.append(row[2]);
      sb.append(",");
      sb.append(row[3]);
      sb.append(",");
      sb.append(row[4]);
      sb.append(",");
      sb.append(row[5]);
      sb.append(",");
      sb.append(row[6]);
      sb.append(",");
      sb.append(row[7]);
      sb.append(",");
      sb.append(row[8]);
      sb.append(",");
      sb.append(row[9]);
      sb.append(",");
      sb.append(row[10]);
      sb.append(",");
      sb.append(row[11]);
      sb.append("\n");
    }
    return sb.toString();
  }

  @Override
  public List<String> getAllDateStr(boolean history) {

    List<String> result = new ArrayList<>();
    String sql = "select distinct date_str from ot_observe_record;";
    if (history) {
      sql = "select distinct date_str from ot_observe_record_his where date_str>'171126' order by date_str;";
    }
    Session session = getCurrentSession();
    Query q = session.createSQLQuery(sql);
    List list = q.list();
    Iterator iter = list.iterator();
    while (iter.hasNext()) {
      String his = (String) iter.next();
      result.add(his);
    }
    return result;
  }

  @Override
  public List<String> getAllDateStr() {

    List<String> result = new ArrayList<>();
    String sql = "select distinct date_str from ot_observe_record_his where ot_id is not null order by date_str;";
//    String sql = "select distinct date_str from ot_observe_record_his where ot_id is not null and date_str<'141027' order by date_str;";

    Session session = getCurrentSession();
    Query q = session.createSQLQuery(sql);
    List list = q.list();
    Iterator iter = list.iterator();
    while (iter.hasNext()) {
      String his = (String) iter.next();
      result.add(his);
    }
    return result;
  }

  @Override
  public String getMagCurveByTypeIdStarId(int typeId, long starId, int dataProduceMethod) {
    Session session = getCurrentSession();
    String sql = "SELECT name, array_to_string(array_agg(date_ut), ',')  dateUt,  array_to_string(array_agg(mag_aper),',')  mag,   "
	    + "array_to_string(array_agg(magerr_aper),',')  magerr   "
	    + "FROM ( select ot2.name, extract(epoch from oorh.date_ut-"
	    + "(select min(found_time_utc) from ot_level2_his where ot_id in "
	    + "(SELECT ot_id FROM ot_level2_match WHERE mt_id=" + typeId + " AND match_id=" + starId + "))) as date_ut, oorh.mag_aper, oorh.magerr_aper  "
	    + "from ot_observe_record_his oorh  "
	    + "inner join ot_level2_his ot2 on oorh.ot_id =ot2.ot_id and ot2.data_produce_method='" + dataProduceMethod + "' and ot2.ot_id in "
	    + "(SELECT ot_id FROM ot_level2_match ot2m WHERE ot2m.mt_id=" + typeId + " AND ot2m.match_id=" + starId + ") "
	    + "order by oorh.date_ut  "
	    + ") as rst  "
	    + "group by name;";

    Query q = session.createSQLQuery(sql);
    Iterator itor = q.list().iterator();

    StringBuilder sb = new StringBuilder("[");
    while (itor.hasNext()) {
      Object[] row = (Object[]) itor.next();
      sb.append("{otName:\"");
      sb.append(row[0]);
      sb.append("\",dateUt:[");
      sb.append(row[1]);
      sb.append("],mag:[");
      sb.append(row[2]);
      sb.append("],magerr:[");
      sb.append(row[3]);
      sb.append("]},");
    }
    sb.append("]");
    return sb.toString();
  }

  @Override
  public String getOt2TmplOpticalVaration(OtTmplWrong ot2Tmpl) {
    Session session = getCurrentSession();
    String sql = "SELECT name, array_to_string(array_agg(date_ut), ',')  dateUt,  array_to_string(array_agg(mag_aper),',')  mag "
	    + "FROM ( select ot2.name, extract(epoch from oorh.date_ut-'" + ot2Tmpl.getFirstFoundTimeUtc() + "') as date_ut, oorh.mag_aper "
	    + "from ot_observe_record_his oorh "
	    + "inner join ot_level2_his ot2 on oorh.ot_id =ot2.ot_id "
	    + "inner join ot_level2_match ot2m on ot2.ot_id=ot2m.ot_id and ot2m.mt_id=6 and ot2m.match_id=" + ot2Tmpl.getOtId() + " "
	    + "order by oorh.date_ut "
	    + ") as rst "
	    + "group by name;";

    Query q = session.createSQLQuery(sql);
    Iterator itor = q.list().iterator();

    StringBuilder sb = new StringBuilder("[");
    while (itor.hasNext()) {
      Object[] row = (Object[]) itor.next();
      sb.append("{otName:\"");
      sb.append(row[0]);
      sb.append("\",dateUt:[");
      sb.append(row[1]);
      sb.append("],mag:[");
      sb.append(row[2]);
      sb.append("]},");
    }
    sb.append("]");
    return sb.toString();
  }

  @Override
  public List<OtObserveRecordMovObj> getOt1ByOorId(int camId, long oorId) {

    Session session = getCurrentSession();
    String sql = "select oor.*, ff.img_name as ff_name from ot_observe_record oor inner join fits_file2 ff on oor.ff_id=ff.ff_id"
	    + " where ot_id=0 and ra_d is not null and dec_d is not null "
	    + "and x_temp is not null and y_temp is not null and data_produce_method='1' and dpm_id=" + camId + " and oor_id>" + oorId
	    + " order by dpm_id, ff_number asc limit 2000";
    Query q = session.createSQLQuery(sql).addEntity(OtObserveRecordMovObj.class);
    return q.list();
  }

  @Override
  public List<OtObserveRecord> getOt1ByDateDpmSkyId(String dateStr, int dpmId, int skyId, boolean history) {

    Session session = getCurrentSession();
    String sql = "select * from ot_observe_record";
    if (history) {
      sql += "_his";
    }
    sql += " where ot_id=0 and ra_d is not null and dec_d is not null "
	    + "and x_temp is not null and y_temp is not null and data_produce_method='1' and date_str='" + dateStr
	    + "' and dpm_id=" + dpmId + " and sky_id=" + skyId
	    + " order by ff_number asc";
    Query q = session.createSQLQuery(sql).addEntity(OtObserveRecord.class);
    return q.list();
  }

  @Override
  public void updateFfcId(OtObserveRecord oor) {
    String sql = "update ot_observe_record set ffc_id=" + oor.getFfcId() + " where oor_id=" + oor.getOorId();
    Session session = getCurrentSession();
    session.createSQLQuery(sql).executeUpdate();
  }

  @Override
  public List<OtObserveRecord> getLastRecord(OtLevel2 ot2) {

    Session session = getCurrentSession();
    String sql = "select * from ot_observe_record where ot_id=" + ot2.getOtId() + " and ff_number=" + ot2.getLastFfNumber();
    Query q = session.createSQLQuery(sql).addEntity(OtObserveRecord.class);
    return q.list();
  }

  @Override
  public OtObserveRecord getByFfIdRecordFileId(long ffId, int recordFileId) {

    Session session = getCurrentSession();
    String sql = "select * from ot_observe_record where ff_id=" + ffId + " and ff_number=" + recordFileId;
    Query q = session.createSQLQuery(sql).addEntity(OtObserveRecord.class);
    List rst = q.list();
    if (rst.size() > 0) {
      return (OtObserveRecord) rst.get(0);
    } else {
      return null;
    }
  }

  @Override
  public List<OtObserveRecord> getRecordByOt2Id(long ot2Id, boolean queryHis) {

    Session session = getCurrentSession();
    String sql1 = "select * from ot_observe_record where ot_id=" + ot2Id;
    String sql2 = "select * from ot_observe_record_his where ot_id=" + ot2Id;
    String unionSql;
    if (queryHis) {
      unionSql = sql2 + " order by date_ut asc";
    } else {
      unionSql = sql1 + " order by date_ut asc";
    }
    Query q = session.createSQLQuery(unionSql).addEntity(OtObserveRecord.class);
    return q.list();
  }

  @Override
  public List<OtObserveRecord> getUnCutRecord(long otId, int lastCuttedNum) {

    Session session = getCurrentSession();
    String sql = "select * from ot_observe_record where ot_id=" + otId + " and ff_number>=" + lastCuttedNum + " order by ff_number asc";
    Query q = session.createSQLQuery(sql).addEntity(OtObserveRecord.class);
    return q.list();
  }

  @Override
  public List<OtObserveRecord> searchOT2TmplWrong(OtObserveRecord obj, float searchRadius, float mag) {

    SearchBoxSphere sbs = new SearchBoxSphere(obj.getRaD(), obj.getDecD(), searchRadius);
    int tflag = sbs.calSearchBox();
    if (tflag != 0) {
      Session session = getCurrentSession();
      String sql = "select * from ot_observe_record_his where ot_id=0 and data_produce_method='" + obj.getDataProduceMethod()
	      + "' and date_str='" + obj.getDateStr() + "' and sky_id=" + obj.getSkyId() + " and dpm_id!=" + obj.getDpmId() + " and ";
      if (tflag == 1) {
	sql += "ra_d between " + sbs.getMinRa() + " and " + sbs.getMaxRa() + " and ";
	sql += "dec_d between " + sbs.getMinDec() + " and " + sbs.getMaxDec() + " ";
      } else {
	sql += "(ra_d > " + sbs.getMinRa() + " or ra_d <" + sbs.getMaxRa() + ") and ";
	sql += "dec_d between " + sbs.getMinDec() + " and " + sbs.getMaxDec() + " ";
      }

      Query q = session.createSQLQuery(sql).addEntity(OtObserveRecord.class);
      return q.list();
    }
    return new ArrayList();
  }

  @Override
  public List<OtObserveRecord> getOt1ByDate(String dateStr) {

    Session session = getCurrentSession();
    String sql = "select * from ot_observe_record_his where ot_id=0 and date_str='" + dateStr + "'";
    Query q = session.createSQLQuery(sql).addEntity(OtObserveRecord.class);
    return q.list();
  }

  @Override
  public void moveDataToHisTable() {

    Session session = getCurrentSession();
    String sql = "WITH moved_rows AS ( DELETE FROM ot_observe_record RETURNING * ) INSERT INTO ot_observe_record_his SELECT * FROM moved_rows;";
    session.createSQLQuery(sql).executeUpdate();
  }

  /**
   * 返回OT的光变和位置变化字符串，中间用=隔开
   *
   * @param ot2
   * @param queryHis
   * @return
   */
  @Override
  public String getOtOpticalVaration(OtLevel2 ot2, Boolean queryHis) {
    Session session = getCurrentSession();
    String sql1 = "select oor.date_ut, oor.mag_aper , oor.x, oor.y, oor.x_temp, oor.y_temp, oor.oor_id  from ot_observe_record oor  where oor.ot_id=" + ot2.getOtId();
    String sql2 = "select oorh.date_ut, oorh.mag_aper , oorh.x, oorh.y, oorh.x_temp, oorh.y_temp, oorh.oor_id  from ot_observe_record_his oorh  where oorh.ot_id=" + ot2.getOtId();

    String unionSql = "";
    if (queryHis) {
      unionSql = sql1 + " union " + sql2 + " order by date_ut asc";
    } else {
      unionSql = sql1 + " order by date_ut asc";
    }

    Query q = session.createSQLQuery(unionSql);
    Iterator itor = q.list().iterator();

//    Date baseDate = CommonFunction.stringToDate("2015-01-01 00:00:00", "yyyy-MM-dd HH:mm:ss.SSS");
    Date baseDate = ot2.getFoundTimeUtc();
    Calendar cal = Calendar.getInstance();
    cal.setTime(baseDate);
    /**
     * 天 86400000.0 小时 3600000.0 分钟 60000.0
     */
    double baseDay = cal.getTimeInMillis() / 60000.0;
//    double baseDay = CommonFunction.dateToJulian(baseDate)*1440;

    StringBuilder sb = new StringBuilder();
    StringBuilder sb2 = new StringBuilder();
    StringBuilder sb3 = new StringBuilder();
    int i = 0;
    float x0 = 0, y0 = 0, xn, yn;
    float xt0 = 0, yt0 = 0, xtn, ytn;
    while (itor.hasNext()) {
      Object[] row = (Object[]) itor.next();
      try {
	cal.setTime((Date) row[0]);
	/**
	 * 天 86400000.0 小时 3600000.0 分钟 60000.0
	 */
	double now = cal.getTimeInMillis() / 60000.0;
//        double now = CommonFunction.dateToJulian((Date) row[0])*1440;
	sb.append("[");
	sb.append(now - baseDay);
	sb.append(",");
	sb.append(row[1]);
	sb.append("],");

	//计算后面的记录与首条记录位置偏差
	if (i == 0) {
	  x0 = (Float) row[2];
	  y0 = (Float) row[3];
	  xt0 = (Float) row[4];
	  yt0 = (Float) row[5];
	  i++;
	}
	xn = (Float) row[2];
	yn = (Float) row[3];
	sb2.append("[");
	sb2.append(xn - x0);
	sb2.append(",");
	sb2.append(yn - y0);
	sb2.append("],");

	xtn = (Float) row[4];
	ytn = (Float) row[5];
	sb3.append("[");
	sb3.append(xtn - xt0);
	sb3.append(",");
	sb3.append(ytn - yt0);
	sb3.append("],");
      } catch (Exception e) {
	e.printStackTrace();
      }
    }
    String tStr = sb.toString();
    String tStr2 = sb2.toString();
    String tStr3 = sb3.toString();
    if (tStr.isEmpty()) {
      tStr = "[]";
    } else {
      tStr = "[" + tStr + "]";
    }
    if (tStr2.isEmpty()) {
      tStr2 = "[]";
    } else {
      tStr2 = "[" + tStr2 + "]";
    }
    if (tStr3.isEmpty()) {
      tStr3 = "[]";
    } else {
      tStr3 = "[" + tStr3 + "]";
    }
    return tStr + "=" + tStr2 + "=" + tStr3;
  }

  /**
   * 该方法并没有使用，取而代之的是FitsFileCutDAOImpl的getUnCuttedStarList
   *
   * @param dpmId
   * @return
   */
  public String getUnCuttedStarList(int dpmId) {

    String sql = "WITH updated_rows AS "
	    + " ( update ot_observe_record set request_cut=true where ot_id>0 and request_cut=false and dpm_id=" + dpmId + " RETURNING * ) "
	    + " select ff.file_name ffname, oor.x, oor.y, ffc.file_name ffcname "
	    + " from updated_rows oor "
	    + " inner join fits_file ff on oor.ff_id=ff.ff_id "
	    + " inner join fits_file_cut ffc on oor.ffc_id=ffc.ffc_id ";
    Session session = getCurrentSession();
    Query q = session.createSQLQuery(sql);
    Iterator itor = q.list().iterator();

    StringBuilder rst = new StringBuilder();
    while (itor.hasNext()) {
      Object[] row = (Object[]) itor.next();
      try {
	rst.append(row[0]);
	rst.append(" ");
	rst.append(row[1]);
	rst.append(" ");
	rst.append(row[2]);
	rst.append(" ");
	rst.append(row[3]);
	rst.append("\n");
      } catch (Exception e) {
	e.printStackTrace();
      }
    }
    return rst.toString();
  }

  @Override
  public List<OtObserveRecord> getLatestNLv1OT(int n) {
    Session session = getCurrentSession();
    String sql = "select oor.* "
	    + "from ot_observe_record oor "
	    + "inner join camera dpm on oor.dpm_id = dpm.camera_id and oor.ff_number>dpm.cur_process_number-" + n + " "
	    + "where oor.ot_id=0 and oor.data_produce_method='1';";
    Query q = session.createSQLQuery(sql).addEntity(OtObserveRecord.class);
    return q.list();
  }

  @Override
  public List<OtObserveRecord> getAllOrderByDate() {
    Session session = getCurrentSession();
    String sql = "select oor.* "
	    + "from ot_observe_record oor "
	    + "where  oor.data_produce_method='1' order by date_ut asc;"; //date_ut ff_number  oor.ot_id=0 and
    Query q = session.createSQLQuery(sql).addEntity(OtObserveRecord.class);
    return q.list();
  }

  @Override
  public Boolean exist(OtObserveRecord obj, float errorBox) {
    Boolean flag = false;
    Session session = getCurrentSession();
    String sql = "select oort_id from ot_observe_record where ff_id="
	    + obj.getFfId()
	    //            + " and abs(x_temp-" + obj.getXTemp() + ")<" + errorBox + " "
	    //            + " and abs(y_temp-" + obj.getYTemp() + ")<" + errorBox + " "
	    + " and sqrt(power(x_temp-" + obj.getXTemp() + ", 2)+power(y_temp-" + obj.getYTemp() + ", 2))<" + errorBox + " ";
    Query q = session.createSQLQuery(sql);
    if (!q.list().isEmpty()) {
      BigInteger objId = (BigInteger) q.list().get(0);
      obj.setOorId(objId.longValue());
      flag = true;
    }
    return flag;
  }

  @Override
  public List<OtObserveRecord> existInAll(OtObserveRecord obj, float errorBox) {
    Session session = getCurrentSession();
    String sql = "select * from ot_observe_record "
	    + " where ot_id=0"
	    + " and dpm_id=" + obj.getDpmId()
	    + " and sky_id=" + obj.getSkyId()
	    + " and data_produce_method='" + obj.getDataProduceMethod() + "'"
	    + " and sqrt(power(x-" + obj.getX() + ", 2)+power(y-" + obj.getY() + ", 2))<" + errorBox + " "
	    + " order by ff_number asc";
    Query q = session.createSQLQuery(sql).addEntity(OtObserveRecord.class);
    return q.list();
  }

  @Override
  public List<OtObserveRecord> matchLatestN(OtObserveRecord obj, float errorBox, int n) {
    Session session = getCurrentSession();
    String sql = "select * from ot_observe_record "
	    + " where ff_number>" + (obj.getFfNumber() - n)
	    + " and ot_id=0"
	    + " and dpm_id=" + obj.getDpmId()
	    + " and sky_id=" + obj.getSkyId()
	    + " and data_produce_method='" + obj.getDataProduceMethod() + "'"
	    + " and sqrt(power(x_temp-" + obj.getXTemp() + ", 2)+power(y_temp-" + obj.getYTemp() + ", 2))<" + errorBox + " "
	    + " order by ff_number asc";
    Query q = session.createSQLQuery(sql).addEntity(OtObserveRecord.class);
    return q.list();
  }

  @Override
  public int countRecordByOtName(String otName, Boolean queryHis) {

    String sql1 = "select count(*) "
	    + "from ot_observe_record oor "
	    + "where oor.ot_id=(select ob.ot_id from ot_level2 ob where name='" + otName + "') ";

    String sql2 = "select count(*) "
	    + "from ot_observe_record_his oor "
	    + "where oor.ot_id=(select ob.ot_id from ot_level2_his ob where name='" + otName + "') ";

    String unionSql = "";
    if (queryHis) {
      unionSql = sql1 + " union " + sql2;
    } else {
      unionSql = sql1;
    }

    int total = 0;
    Session session = getCurrentSession();
    Query q = session.createSQLQuery(unionSql);
    Iterator itor = q.list().iterator();
    while (itor.hasNext()) {
      BigInteger tNum = (BigInteger) itor.next();
      total += tNum.intValue();
    }
    return total;
  }

  @Override
  public List<OtObserveRecordShow> getRecordByOtName(String otName, int start, int resultSize, Boolean queryHis) {

    Session session = getCurrentSession();
    String sql1 = "select ff.img_name ff_name, ff.img_path ff_path, ffc.file_name ffc_name, ffc.store_path ffc_path, oor.*"
	    + "from ot_observe_record oor "
	    + "left join fits_file2 ff on oor.ff_id=ff.ff_id "
	    + "left join fits_file_cut ffc on oor.ffc_id=ffc.ffc_id "
	    + "where oor.ot_id=(select ob.ot_id from ot_level2 ob where name='" + otName + "') ";
    String sql2 = "select ff.img_name ff_name, ff.img_path ff_path, ffc.file_name ffc_name, ffc.store_path ffc_path, oor.*"
	    + "from ot_observe_record_his oor "
	    + "left join fits_file2_his ff on oor.ff_id=ff.ff_id "
	    + "left join fits_file_cut_his ffc on oor.ffc_id=ffc.ffc_id "
	    + "where oor.ot_id=(select ob.ot_id from ot_level2_his ob where name='" + otName + "') ";

    String unionSql = "";
    if (queryHis) {
      unionSql = sql1 + " union " + sql2 + " order by date_ut";
    } else {
      unionSql = sql1 + " order by date_ut";
    }

    Query q = session.createSQLQuery(unionSql).addEntity(OtObserveRecordShow.class);
    q.setFirstResult(start);
    q.setMaxResults(resultSize);
    return q.list();
  }

//  @Override
  public List<OtObserveRecordShow> getRecordByOtName1(String otName, int start, int resultSize, Boolean queryHis) {

    ArrayList<OtObserveRecordShow> oorss = new ArrayList<OtObserveRecordShow>();
    Session session = getCurrentSession();
    String sql1 = "select ff.file_name ff_name, ff.store_path ff_path, ffc.file_name ffc_name, ffc.store_path ffc_path, oor.*"
	    + "from ot_observe_record oor "
	    + "left join fits_file ff on oor.ff_id=ff.ff_id "
	    + "left join fits_file_cut ffc on oor.ffc_id=ffc.ffc_id "
	    + "where oor.ot_id=(select ob.ot_id from ot_level2 ob where name='" + otName + "') ";
    String sql2 = "select ff.file_name ff_name, ff.store_path ff_path, ffc.file_name ffc_name, ffc.store_path ffc_path, oor.*"
	    + "from ot_observe_record_his oor "
	    + "left join fits_file ff on oor.ff_id=ff.ff_id "
	    + "left join fits_file_cut_his ffc on oor.ffc_id=ffc.ffc_id "
	    + "where oor.ot_id=(select ob.ot_id from ot_level2_his ob where name='" + otName + "') ";

    String unionSql = "";
    if (queryHis) {
      unionSql = sql1 + " union " + sql2 + " order by date_ut";
    } else {
      unionSql = sql1 + " order by date_ut";
    }

    Query q = session.createSQLQuery(unionSql);
    q.setFirstResult(start);
    q.setMaxResults(resultSize);
    Iterator itor = q.list().iterator();
    while (itor.hasNext()) {
      Object[] row = (Object[]) itor.next();
      try {
	//ff_number,dpm_id,date_str,request_cut,success_cut
	String ffFileName = (String) row[0];
	String ffStorePath = (String) row[1];
	String ffcFileName = (String) row[2];
	String ffcStorePath = (String) row[3];

	BigInteger otID = (BigInteger) row[4];
	BigInteger ffId = (BigInteger) row[5];
	BigInteger ffcId = (BigInteger) row[6];
	BigInteger oortId = (BigInteger) row[7];
	Short otTypeId = (Short) row[8];
	float raD = (Float) row[9];
	float decD = (Float) row[10];
	float x = (Float) row[11];
	float y = (Float) row[12];
	float xTemp = (Float) row[13];
	float yTemp = (Float) row[14];
	Date dateUt = (Date) row[15];
	float flux = (Float) row[16];
	Boolean flag = (Boolean) row[17];
//        float flagChb = (Float) row[18];
	float background = (Float) row[19];
	float threshold = (Float) row[20];
	float magAper = (Float) row[21];
	float magerrAper = (Float) row[22];
	float ellipticity = (Float) row[23];
	float ClassStar = (Float) row[24];
	Boolean otFlag = (Boolean) row[25];

	OtObserveRecordShow oors = new OtObserveRecordShow();
	oors.setBackground(background);
	oors.setClassStar(ClassStar);
	oors.setDateUt(dateUt);
	oors.setDecD(decD);
	oors.setEllipticity(ellipticity);
	oors.setFfId(ffId.longValue());
	oors.setFfName(ffFileName);
	oors.setFfPath(ffStorePath);
	oors.setFfcId(ffcId.longValue());
	oors.setFfcName(ffcFileName);
	oors.setFfcPath(ffcStorePath);
	oors.setFlag(flag);
//        oors.setFlagChb(flagChb);
	oors.setFlux(flux);
	oors.setMagAper(magAper);
	oors.setMagerrAper(magerrAper);
	oors.setOorId(oortId.longValue());
	oors.setOtFlag(otFlag);
	oors.setOtId(otID.longValue());
	oors.setRaD(raD);
	oors.setThreshold(threshold);
	oors.setX(x);
	oors.setXTemp(xTemp);
	oors.setY(y);
	oors.setYTemp(yTemp);
	oors.setOtTypeId(otTypeId);
	oorss.add(oors);
      } catch (ClassCastException cce) {
	cce.printStackTrace();
      }
    }
    return oorss;
  }

  @Override
  public List<OtObserveRecordShow> getRecordByOtId(long otId) {

    ArrayList<OtObserveRecordShow> oorss = new ArrayList<OtObserveRecordShow>();
    Session session = getCurrentSession();
    String sql = "select oor.*, ff.file_name, ff.store_path, ffc.file_name, ffc.store_path "
	    + "from ot_observe_record oor "
	    + "left join fits_file ff on oor.ff_id=ff.ff_id "
	    + "left join fits_file_cut ffc on oor.ffc_id=ffc.ffc_id "
	    + "where ot_id='" + otId + "'";
    Iterator itor = session.createSQLQuery(sql).list().iterator();
    while (itor.hasNext()) {
      Object[] row = (Object[]) itor.next();
      try {
	BigInteger otID = (BigInteger) row[0];
	BigInteger ffId = (BigInteger) row[1];
	BigInteger ffcId = (BigInteger) row[2];
	BigInteger oortId = (BigInteger) row[3];
	Short otTypeId = (Short) row[4];
	float raD = (Float) row[5];
	float decD = (Float) row[6];
	float x = (Float) row[7];
	float y = (Float) row[8];
	float xTemp = (Float) row[9];
	float yTemp = (Float) row[10];
	Date dateUt = (Date) row[11];
	float flux = (Float) row[12];
	Boolean flag = (Boolean) row[13];
//        float flagChb = (Float) row[14];
	float background = (Float) row[15];
	float threshold = (Float) row[16];
	float magAper = (Float) row[17];
	float magerrAper = (Float) row[18];
	float ellipticity = (Float) row[19];
	float ClassStar = (Float) row[20];
	Boolean otFlag = (Boolean) row[21];
	//ff_number,dpm_id,date_str,request_cut,success_cut
	String ffFileName = (String) row[27];
	String ffStorePath = (String) row[28];
	String ffcFileName = (String) row[29];
	String ffcStorePath = (String) row[30];

	OtObserveRecordShow oors = new OtObserveRecordShow();
	oors.setBackground(background);
	oors.setClassStar(ClassStar);
	oors.setDateUt(dateUt);
	oors.setDecD(decD);
	oors.setEllipticity(ellipticity);
	oors.setFfId(ffId.longValue());
	oors.setFfName(ffFileName);
	oors.setFfPath(ffStorePath);
	oors.setFfcId(ffcId.longValue());
	oors.setFfcName(ffcFileName);
	oors.setFfcPath(ffcStorePath);
	oors.setFlag(flag);
//        oors.setFlagChb(flagChb);
	oors.setFlux(flux);
	oors.setMagAper(magAper);
	oors.setMagerrAper(magerrAper);
	oors.setOorId(oortId.longValue());
	oors.setOtFlag(otFlag);
	oors.setOtId(otId);
	oors.setRaD(raD);
	oors.setThreshold(threshold);
	oors.setX(x);
	oors.setXTemp(xTemp);
	oors.setY(y);
	oors.setYTemp(yTemp);
	oors.setOtTypeId(otTypeId);
	oorss.add(oors);
      } catch (ClassCastException cce) {
	cce.printStackTrace();
      }
    }
    return oorss;
  }

  @Override
  public Object[] getMinMaxDateOt1(String dateStr) {
    Session session = getCurrentSession();
    String sql = "SELECT min(date_ut) minDate, max(date_ut) maxDate, min(ff_number) minNum, max(ff_number) maxNum "
	    + "FROM ot_observe_record WHERE date_str ='" + dateStr + "'";

    Iterator itor = session.createSQLQuery(sql).list().iterator();
    Object[] row = (Object[]) itor.next();
    return row;
  }

  @Override
  public Object[] getMinMaxDateOt1() {
    Session session = getCurrentSession();
    String sql = "SELECT min(date_ut) minDate, max(date_ut) maxDate, min(ff_number) minNum, max(ff_number) maxNum "
	    + "FROM ot_observe_record WHERE ot_id=0";

    Iterator itor = session.createSQLQuery(sql).list().iterator();
    Object[] row = (Object[]) itor.next();
    return row;
  }
}
