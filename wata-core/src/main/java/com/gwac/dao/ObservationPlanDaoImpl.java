/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.dao;

import com.gwac.model.ObservationPlanState;
import com.gwac.model.ObservationPlan;
import java.math.BigInteger;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

/**
 *
 * @author msw
 */
@Repository(value = "observationPlanDao")
public class ObservationPlanDaoImpl extends BaseHibernateDaoImpl<ObservationPlan> implements ObservationPlanDao {

  private static final Log log = LogFactory.getLog(ObservationPlanDaoImpl.class);

  @Override
  public void updateObservationPlanStatus(ObservationPlanState obj) {
    Session session = getCurrentSession();
    String sql = "update observation_plan set ctime=?, execute_status=? where op_sn=?";
    SQLQuery query = session.createSQLQuery(sql);
    query.setTimestamp(0, obj.getCtime());
    query.setString(1, obj.getState());
    query.setLong(2, obj.getOpId());

    query.executeUpdate();
  }

  @Override
  public String findRecord(int start, int length, String unitId, String executeStatus) {

    String sql = "SELECT text(JSON_AGG((SELECT r FROM (SELECT tmp1.*) r))) "
	    + "from(SELECT sl.* FROM observation_plan sl ";
    if (executeStatus.equalsIgnoreCase("begin") || executeStatus.equalsIgnoreCase("over")) {
      sql = sql + " where execute_status is not null ";
    }else{
      sql = sql + " where execute_status is null ";
    }
//    if (unitId != null && !unitId.isEmpty()) {
//      sql += "and unit_id='" + unitId + "' ";
//    }
    sql += "ORDER BY begin_time desc ";
    if(length>0){
      sql += " OFFSET " + start + " LIMIT " + length + " ";
    }
      sql += " )as tmp1";

    //log.debug(sql);
    String rst = "";
    Query q = this.getCurrentSession().createSQLQuery(sql);
    if (q.list().size() > 0) {
      rst = (String) q.list().get(0);
    }
    return rst;
  }

  @Override
  public Long findRecordCount(String unitId, String executeStatus) {

    String sql = "SELECT count(*) FROM observation_plan  ";

    if (executeStatus.equalsIgnoreCase("begin") || executeStatus.equalsIgnoreCase("over")) {
      sql = sql + " where execute_status is not null ";
    }else{
      sql = sql + " where execute_status is null ";
    }
//    if (unitId != null && !unitId.isEmpty()) {
//      sql += "and unit_id='" + unitId + "' ";
//    }
    Query q = this.getCurrentSession().createSQLQuery(sql);
    return ((BigInteger) q.list().get(0)).longValue();
  }

  @Override
  public String getAllUnObservated() {

    String sql = "SELECT text(JSON_AGG((SELECT r FROM (SELECT tmp1.*) r))) "
	    + "from(SELECT sl.* FROM observation_plan sl where execute_status='0' "
	    + "ORDER BY op_time desc )as tmp1";

    //log.debug(sql);
    String rst = "";
    Query q = this.getCurrentSession().createSQLQuery(sql);
    if (q.list().size() > 0) {
      rst = (String) q.list().get(0);
    }
    return rst;
  }

  @Override
  public List<String> getFieldId(String dateStr, String unitId) {

    String sql = "select DISTINCT field_id "
	    + "from observation_plan "
	    + "where unit_id='" + unitId + "' and op_time>='" + dateStr + " 8:00:00' and op_time<'" + dateStr + " 23:59:59'";

    Query q = this.getCurrentSession().createSQLQuery(sql);
    return q.list();
  }

  @Override
  public ObservationPlan getLatestObservationPlanByFieldId(String unitId, String fieldId) {

    String sql = "select * "
	    + "from observation_plan "
	    + "where unit_id='" + unitId + "' and field_id='" + fieldId + "'  "
	    + "ORDER BY op_id desc limit 1";

    Query q = this.getCurrentSession().createSQLQuery(sql).addEntity(ObservationPlan.class);

    ObservationPlan tobsPlan = null;
    if (q.list().size() > 0) {
      tobsPlan = (ObservationPlan) q.list().get(0);
    }
    return tobsPlan;
  }

  @Override
  public Boolean exist(String opSn) {

    String sql = "select * from observation_plan where op_sn=" + opSn;

    Query q = this.getCurrentSession().createSQLQuery(sql).addEntity(ObservationPlan.class);

    Boolean rst = false;
    if (q.list().size() > 0) {
      rst = true;
    }
    return rst;
  }

}
