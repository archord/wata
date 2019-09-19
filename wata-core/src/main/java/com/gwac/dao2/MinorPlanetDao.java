/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.gwac.dao2;

import com.gwac.dao.BaseHibernateDao;
import com.gwac.model.OtLevel2;
import com.gwac.model2.MinorPlanet;
import java.util.List;

/**
 *
 * @author xy
 */
public interface MinorPlanetDao extends BaseHibernateDao<MinorPlanet> {
  
  public List<MinorPlanet> queryByOt2(float ra, float dec, float searchRadius, float mag, String tableName);
  
  public boolean tableExists(String tableName);
}
