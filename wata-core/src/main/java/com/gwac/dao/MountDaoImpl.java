/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.dao;

import com.gwac.model.Mount;
import com.gwac.model.MountState;
import java.util.List;
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
public class MountDaoImpl extends BaseHibernateDaoImpl<Mount> implements MountDao {

  private static final Log log = LogFactory.getLog(MountDaoImpl.class);

  @Override
  public void updateLinked(String groupId, String unitId, Integer linked) {
    Session session = getCurrentSession();
    String sql = "update mount set linked=? where group_id=? and unit_id=?";
    SQLQuery query = session.createSQLQuery(sql);
    query.setInteger(0, linked);
    query.setString(1, groupId);
    query.setString(2, unitId);
    
    query.executeUpdate();
  }

  @Override
  public void updateMountStatus(MountState obj) {
    Session session = getCurrentSession();
    String sql = "update mount set time_utc=?, state=?, errcode=?, ra=?, dec=?, azi=?, alt=?,mount_id=? where group_id=? and unit_id=?";
    SQLQuery query = session.createSQLQuery(sql);
    query.setDate(0, obj.getCtime());
    query.setInteger(1, obj.getState());
    query.setInteger(2, obj.getErrcode());
    query.setDouble(3, obj.getRa());
    query.setDouble(4, obj.getDec());
    query.setDouble(5, obj.getAzi());
    query.setDouble(6, obj.getAlt());
    query.setInteger(7, obj.getMountId());
    query.setString(8, obj.getGroupId());
    query.setString(9, obj.getUnitId());
    
    query.executeUpdate();
  }

  @Override
  public Mount getByGroupUnitId(String groupId, String unitId) {
    Session session = getCurrentSession();
    String sql = "select * from mount where group_id='" + groupId + "' and unit_id='" + unitId + "'";
    Query q = session.createSQLQuery(sql).addEntity(Mount.class);

    if (!q.list().isEmpty()) {
      return (Mount) q.list().get(0);
    } else {
      return null;
    }
  }

}
