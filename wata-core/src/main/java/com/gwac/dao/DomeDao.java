/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.dao;

import com.gwac.model.Dome;
import com.gwac.model.DomeStatus;

/**
 *
 * @author xy
 */
public interface DomeDao extends BaseHibernateDao<Dome> {
  public Dome getByName(String gid);
  public void updateDomeLinked(String gId, Integer linked);
  public void updateDomeStatus(DomeStatus obj);
}
