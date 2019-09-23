/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.dao;

import com.gwac.model.MountState;
import java.util.List;

/**
 *
 * @author xy
 */
public interface MountStateDao extends BaseHibernateDao<MountState> {
  public void updateStatus(String mounts, String status);
  public String getMountsStatus();
  public List<MountState> getAll();
  public MountState getByGroupUnitId(String groupId, String unitId);
}
