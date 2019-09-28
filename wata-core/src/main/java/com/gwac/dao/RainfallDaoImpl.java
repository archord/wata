/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.dao;

import com.gwac.model.Camera;
import com.gwac.model.Rainfall;
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
public class RainfallDaoImpl extends BaseHibernateDaoImpl<Rainfall> implements RainfallDao {

  private static final Log log = LogFactory.getLog(RainfallDaoImpl.class);


  @Override
  public Rainfall getLatestRecord() {
    Session session = getCurrentSession();
    String sql = "select * from rainfall ORDER BY rain_id desc limit 1;";

    Query q = session.createSQLQuery(sql).addEntity(Rainfall.class);
    if (!q.list().isEmpty()) {
      return (Rainfall) q.list().get(0);
    } else {
      return null;
    }
  }

}
