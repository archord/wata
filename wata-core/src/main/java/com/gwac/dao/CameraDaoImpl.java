/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.dao;

import com.gwac.model.Camera;
import com.gwac.model.CameraCoverStatus;
import com.gwac.model.CameraMonitor;
import com.gwac.model.MountState;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

/**
 *
 * @author xy
 */
@Repository
public class CameraDaoImpl extends BaseHibernateDaoImpl<Camera> implements CameraDao {

  private static final Log log = LogFactory.getLog(CameraDaoImpl.class);

  @Override
  public void updateLinked(String gId, String uId, String cId, Integer linked) {
    Session session = getCurrentSession();
    String sql = "update camera set linked=? where gid=? and uid=? and cid=?";
    SQLQuery query = session.createSQLQuery(sql);
    query.setInteger(0, linked);
    query.setString(1, gId);
    query.setString(2, uId);
    query.setString(3, cId);
    
    query.executeUpdate();
  }
  
  @Override
  public void updateCoverLinked(String gId, String uId, String cId, Integer linked) {
    Session session = getCurrentSession();
    String sql = "update camera set cover_linked=? where gid=? and uid=? and cid=?";
    SQLQuery query = session.createSQLQuery(sql);
    query.setInteger(0, linked);
    query.setString(1, gId);
    query.setString(2, uId);
    query.setString(3, cId);
    
    query.executeUpdate();
  }
  
  @Override
  public void updateCameraStatus(CameraMonitor obj) {
    Session session = getCurrentSession();
    String sql = "update camera set camera_utc=?, status=?, errcode=?, coolget=? where camera_id=?";
    SQLQuery query = session.createSQLQuery(sql);
    query.setTimestamp(0, obj.getTimeUtc());
    query.setInteger(1, obj.getState());
    query.setInteger(2, obj.getErrcode());
    query.setFloat(3, obj.getCoolget());
    query.setInteger(4, obj.getCameraId());
    
    query.executeUpdate();
  }
  
  @Override
  public void updateCameraCoverStatus(CameraCoverStatus obj) {
    Session session = getCurrentSession();
    String sql = "update camera set camera_cover_utc=?, cover_status=?, camera_cover_errcode=? where camera_id=?";
    SQLQuery query = session.createSQLQuery(sql);
    query.setTimestamp(0, obj.getCtime());
    query.setInteger(1, obj.getState());
    query.setInteger(2, obj.getErrcode());
    query.setInteger(3, obj.getCameraId());
    
    query.executeUpdate();
  }
  
  @Override
  public void updateStatus(String ccds, String status) {
    Session session = getCurrentSession();
    String sql = "update camera set status=" + status + " where name in(" + ccds + ")";
    session.createSQLQuery(sql).executeUpdate();
  }

  @Override
  public String getCamersStatus() {
    Session session = getCurrentSession();
    String sql = "SELECT text(JSON_AGG((SELECT r FROM (SELECT name, status) r)))  "
            + "FROM( "
            + "SELECT name, status "
            + "FROM camera  "
            + "where camera_id<51 "
            + "ORDER BY camera_id "
            + ")as obj;";
    Query q = session.createSQLQuery(sql);
    return (String) q.list().get(0);
  }

  @Override
  public List<Camera> getAllCameras() {
    Session session = getCurrentSession();
    String sql = "select * from camera order by camera_id;";
    Query q = session.createSQLQuery(sql).addEntity(Camera.class);
    return q.list();
  }

  @Override
  public void updateLastActiveTime(String name) {
    Session session = getCurrentSession();
    String sql = "update camera set last_active_time=current_timestamp where name='" + name.toUpperCase() + "'";
    session.createSQLQuery(sql).executeUpdate();
  }

  @Override
  public void updateMonitorImageTime(String name) {
    Session session = getCurrentSession();
    String sql = "update camera set monitor_image_time=current_timestamp where name='" + name + "'";
    session.createSQLQuery(sql).executeUpdate();
  }

  @Override
  public void updateCurProcessNumber(Camera cam) {
    Session session = getCurrentSession();
    String sql = "update camera set cur_process_number="
            + cam.getCurProcessNumber() + " where camera_id=" + cam.getCameraId();
    session.createSQLQuery(sql).executeUpdate();
  }

  @Override
  public Camera getByName(String name) {
    Session session = getCurrentSession();
    String sql = "select * from camera where cid='" + name + "';";
    Query q = session.createSQLQuery(sql).addEntity(Camera.class);
    if (!q.list().isEmpty()) {
      return (Camera) q.list().get(0);
    } else {
      return null;
    }
  }

  @Override
  public Camera getByName(String gid,String uid,String cid) {
    Session session = getCurrentSession();
    String sql = "select * from camera where gid='" + gid + "' and uid='" + uid + "' and cid='" + cid + "';";

    Query q = session.createSQLQuery(sql).addEntity(Camera.class);
    if (!q.list().isEmpty()) {
      return (Camera) q.list().get(0);
    } else {
      return null;
    }
  }

  @Override
  public Camera getById(long id) {
    Session session = getCurrentSession();
    String sql = "select * from camera where camera_id=" + id;
    Query q = session.createSQLQuery(sql).addEntity(Camera.class);
    if (!q.list().isEmpty()) {
      return (Camera) q.list().get(0);
    } else {
      return null;
    }
  }

  @Override
  public void updateFirstRecordNumber(String dpmName, int number) {
    Session session = getCurrentSession();
    String sql = "update camera set first_record_number=" + number + " where name='" + dpmName + "'";
    session.createSQLQuery(sql).executeUpdate();
  }

  @Override
  public int getFirstRecordNumber(String dpmName) {
    int number = 0;
    Session session = getCurrentSession();
    String sql = "select first_record_number from camera where name='" + dpmName + "'";
    Query q = session.createSQLQuery(sql);
    List tlist = q.list();
    if (!tlist.isEmpty()) {
      number = (Integer) tlist.get(0);
    }
    return number;
  }

  @Override
  public void everyDayInit() {
    Session session = getCurrentSession();
    String sql = "update camera set first_record_number=0, cur_process_number=0;";
    session.createSQLQuery(sql).executeUpdate();
  }
}
