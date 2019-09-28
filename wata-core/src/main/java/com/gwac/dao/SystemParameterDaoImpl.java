/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.dao;

import com.gwac.model.SystemParameter;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Repository;

/**
 *
 * @author xy
 */
@Repository
public class SystemParameterDaoImpl extends BaseHibernateDaoImpl<SystemParameter> implements SystemParameterDao {

  private static final Log log = LogFactory.getLog(SystemParameterDaoImpl.class);


}
