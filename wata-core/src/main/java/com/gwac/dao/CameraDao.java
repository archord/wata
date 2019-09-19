/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.dao;

import com.gwac.model.Camera;
import java.util.List;

/**
 *
 * @author xy
 */
public interface CameraDao extends BaseHibernateDao<Camera> {
  
  public void updateStatus(String ccds, String status);
  
  public String getCamersStatus();

  public List<Camera> getAllCameras();

  public void updateMonitorImageTime(String name);
  
  public void updateLastActiveTime(String dmpName);

  public Camera getByName(String name);

  public void updateCurProcessNumber(Camera cam);

  public Camera getById(long id);
  
  public void updateFirstRecordNumber(String dpmName, int number);
  
  public int getFirstRecordNumber(String dpmName);
  
  public void everyDayInit();
}
