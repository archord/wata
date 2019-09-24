/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.dao;

import com.gwac.model.Rainfall;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Repository;

/**
 *
 * @author xy
 */
@Repository
public class RainfallDaoImpl extends BaseHibernateDaoImpl<Rainfall> implements RainfallDao {

  private static final Log log = LogFactory.getLog(RainfallDaoImpl.class);


}
