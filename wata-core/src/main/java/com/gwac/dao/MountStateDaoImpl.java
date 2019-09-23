/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.dao;

import com.gwac.model.MountState;
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
public class MountStateDaoImpl extends BaseHibernateDaoImpl<MountState> implements MountStateDao {

  private static final Log log = LogFactory.getLog(MountStateDaoImpl.class);

  @Override
  public void updateStatus(String mounts, String status) {
    Session session = getCurrentSession();
    String sql = "update mount set status="+status+" where name in("+mounts+")";
    session.createSQLQuery(sql).executeUpdate();
  }

  @Override
  public String getMountsStatus() {
    Session session = getCurrentSession();
    String sql = "SELECT text(JSON_AGG((SELECT r FROM (SELECT name, status) r)))  "
            + "FROM( "
            + "SELECT name, status "
            + "FROM mount "
            + "where mount_id<51 "
            + "ORDER BY mount_id "
            + ")as obj";
    Query q = session.createSQLQuery(sql);
    return (String) q.list().get(0);
  }

  @Override
  public List<MountState> getAll() {
    Session session = getCurrentSession();
    String sql = "select * from mount order by mount_id";
    Query q = session.createSQLQuery(sql).addEntity(MountState.class);
    return q.list();
  }

  @Override
  public MountState getByGroupUnitId(String groupId, String unitId) {
    Session session = getCurrentSession();
    String sql = "select * from mount where group_id='" + groupId + "' and unit_id='" + unitId + "'";
    Query q = session.createSQLQuery(sql).addEntity(MountState.class);

    if (!q.list().isEmpty()) {
      return (MountState) q.list().get(0);
    } else {
      return null;
    }
  }

}
