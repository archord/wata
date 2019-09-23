/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.dao;

import com.gwac.model.Camera;
import com.gwac.model.CameraCoverStatus;
import com.gwac.model.CameraMonitor;
import java.util.List;

/**
 *
 * @author xy
 */
public interface CameraDao extends BaseHibernateDao<Camera> {
  
  public void updateCameraStatus(CameraMonitor obj);
  
  public void updateCameraCoverStatus(CameraCoverStatus obj);
  
  public void updateLinked(String gId, String uId, String cId, Integer linked);
  
  public void updateCoverLinked(String gId, String uId, String cId, Integer linked);
  
  public void updateStatus(String ccds, String status);
  
  public String getCamersStatus();

  public List<Camera> getAllCameras();

  public void updateMonitorImageTime(String name);
  
  public void updateLastActiveTime(String dmpName);

  public Camera getByName(String name);
  public Camera getByName(String gid,String uid,String cid);

  public void updateCurProcessNumber(Camera cam);

  public Camera getById(long id);
  
  public void updateFirstRecordNumber(String dpmName, int number);
  
  public int getFirstRecordNumber(String dpmName);
  
  public void everyDayInit();
}
