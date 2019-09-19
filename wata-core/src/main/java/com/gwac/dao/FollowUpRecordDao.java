/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.dao;

import com.gwac.model.FollowUpRecord;
import com.gwac.model.Telescope;
import java.util.List;

/**
 *
 * @author xy
 */
public interface FollowUpRecordDao extends BaseHibernateDao<FollowUpRecord> {

  public List<FollowUpRecord> getByOtId(long otId, Boolean queryHis);

  public List<FollowUpRecord> getByFuoId(long fuoId, Boolean queryHis);
  
  public List<FollowUpRecord> getByFufId(long fufId, Boolean queryHis);
}
