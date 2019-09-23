/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.dao;

import com.gwac.model.Camera;
import com.gwac.model.Dome;
import com.gwac.model.DomeStatus;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

/**
 *
 * @author xy
 */
@Repository
public class DomeDaoImpl extends BaseHibernateDaoImpl<Dome> implements DomeDao {

  private static final Log log = LogFactory.getLog(DomeDaoImpl.class);

  @Override
  public Dome getByName(String gid) {
    Session session = getCurrentSession();
    String sql = "select * from dome where gid='" + gid + "' ;";
    Query q = session.createSQLQuery(sql).addEntity(Dome.class);
    if (!q.list().isEmpty()) {
      return (Dome) q.list().get(0);
    } else {
      return null;
    }
  }
  
  @Override
  public void updateDomeLinked(String gId, Integer linked) {
    Session session = getCurrentSession();
    String sql = "update dome set cover_linked=? where gid=?";
    SQLQuery query = session.createSQLQuery(sql);
    query.setInteger(0, linked);
    query.setString(1, gId);
    
    query.executeUpdate();
  }
  
  @Override
  public void updateDomeStatus(DomeStatus obj) {
    Session session = getCurrentSession();
    String sql = "update camera set ctime=?, state=?, errcode=? where dome_id=?";
    SQLQuery query = session.createSQLQuery(sql);
    query.setDate(0, obj.getCtime());
    query.setInteger(1, obj.getStatus());
    query.setInteger(2, obj.getErrcode());
    query.setInteger(3, obj.getDomeId());
    
    query.executeUpdate();
  }

}
