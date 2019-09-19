/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.dao;

import com.gwac.model.Mount;
import java.util.List;

/**
 *
 * @author xy
 */
public interface MountDao extends BaseHibernateDao<Mount> {
  public void updateStatus(String mounts, String status);
  public String getMountsStatus();
  public List<Mount> getAll();
  public Mount getByGroupUnitId(String groupId, String unitId);
}
