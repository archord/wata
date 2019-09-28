/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.dao;

import com.gwac.model.SystemParameter;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

/**
 *
 * @author xy
 */
@Repository
public class SystemParameterDaoImpl extends BaseHibernateDaoImpl<SystemParameter> implements SystemParameterDao {

  private static final Log log = LogFactory.getLog(SystemParameterDaoImpl.class);

  @Override
  public void updateControlServerIpPort(SystemParameter sp){
    
    Session session = getCurrentSession();
    String sql = "update system_parameter set control_server_ip=?, control_server_port=? where sp_id=?";
    SQLQuery query = session.createSQLQuery(sql);
    query.setString(0, sp.getControlServerIp());
    query.setInteger(1, sp.getControlServerPort());
    query.setLong(2, sp.getSpId());
    
    query.executeUpdate();
  }
}
