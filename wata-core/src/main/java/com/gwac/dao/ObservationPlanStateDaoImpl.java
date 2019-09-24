/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.dao;

import com.gwac.model.ObservationPlanState;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Repository;

/**
 *
 * @author xy
 */
@Repository
public class ObservationPlanStateDaoImpl extends BaseHibernateDaoImpl<ObservationPlanState> implements ObservationPlanStateDao {
  
  private static final Log log = LogFactory.getLog(ObservationPlanStateDaoImpl.class);
}
