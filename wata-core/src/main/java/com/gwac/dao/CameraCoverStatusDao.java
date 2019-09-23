/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.dao;

import com.gwac.model.CameraCoverStatus;
import java.util.List;

/**
 *
 * @author xy
 */
public interface CameraCoverStatusDao extends BaseHibernateDao<CameraCoverStatus> {
  public void updateStatus(String mounts, String status);
  public String getMountsStatus();
  public List<CameraCoverStatus> getAll();
  public CameraCoverStatus getByGroupUnitId(String groupId, String unitId);
}
