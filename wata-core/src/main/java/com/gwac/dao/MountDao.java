/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.dao;

import com.gwac.model.Mount;
import com.gwac.model.MountState;

/**
 *
 * @author xy
 */
public interface MountDao extends BaseHibernateDao<Mount> {
  public void updateMountStatus(MountState obj);
  public void updateLinked(String groupId, String unitId, Integer linked);
  public Mount getByGroupUnitId(String groupId, String unitId);
}
