/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.dao;

import com.gwac.model.ObservationPlan;
import com.gwac.model.ObservationPlanState;
import java.util.List;

/**
 *
 * @author msw
 */
public interface ObservationPlanDao extends BaseHibernateDao<ObservationPlan> {
  
  public void abandonUndo();
  
  public void updateObservationPlanStatus(ObservationPlanState obj);

  public String findRecord(int start, int length, String unitId, String executeStatus);

  public Long findRecordCount(String unitId, String executeStatus);

  public String getAllUnObservated();
  
  public List<String> getFieldId(String dateStr, String unitId);
  
  public ObservationPlan getLatestObservationPlanByFieldId(String unitId, String fieldId);
  
  public Boolean exist(String opSn);
}
