/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.action;

/**
 *
 * @author xy
 */
import com.gwac.dao.CameraCoverStatusDao;
import com.gwac.dao.CameraDao;
import com.gwac.model.Camera;
import com.gwac.model.CameraCoverStatus;
import com.gwac.util.CommonFunction;
import com.opensymphony.xwork2.ActionSupport;
import java.io.IOException;
import java.io.PrintWriter;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;

/**
 * from MultipleCommonFileUploadAction
 *
 * @author xy
 */
public class UploadCameraCoverStatus extends ActionSupport {

  /**
   * @param gId the gId to set
   */
  public void setGid(String gId) {
    this.gId = gId;
  }

  /**
   * @param uId the uId to set
   */
  public void setUid(String uId) {
    this.uId = uId;
  }

  /**
   * @param cId the cId to set
   */
  public void setCid(String cId) {
    this.cId = cId;
  }

  private static final Log log = LogFactory.getLog(UploadCameraCoverStatus.class);
  private static final String dateFormateString2 = "yyyyMMdd HHmmss";

  private String gId;
  private String uId;
  private String cId;
  private String utc;
  private Integer state;
  private Integer errcode;

  @Resource
  private CameraDao cameraDao;
  @Resource
  private CameraCoverStatusDao cmDao;
  private String echo = "";

  @Action(value = "uploadCameraCoverStatus")
  public void upload() {

    echo = "";
    log.debug("groupId:" + gId);
    log.debug("unitId:" + uId);
    log.debug("camId:" + cId);
    log.debug("utc:" + utc);
    log.debug("state:" + state);
    log.debug("errcode:" + errcode);

    if (gId == null || gId.isEmpty() || uId == null || uId.isEmpty()
             || cId == null || cId.isEmpty()) {
      echo = "groupId, unitId and camId cannot be empty.";
      log.warn(echo);
    } else {
      Camera tcamera = cameraDao.getByName(gId, uId, cId);
      if (tcamera != null) {
        CameraCoverStatus obj = new CameraCoverStatus();
        obj.setCameraId(tcamera.getCameraId());
        if (null != utc) {
          obj.setCtime(CommonFunction.stringToDate(utc.replace("T", " "), dateFormateString2));
        }
        obj.setState(state);
        obj.setErrcode(errcode);
        cmDao.save(obj);
	cameraDao.updateCameraCoverStatus(obj);
        echo = "upload camera cover state success.";
      } else {
        echo = "can not find camera: " + cId;
      }
      log.debug(echo);
    }

    sendResultMsg(echo);
  }

  public void sendResultMsg(String msg) {

    HttpServletResponse response = ServletActionContext.getResponse();
    response.setContentType("text/html;charset=UTF-8");
    PrintWriter out;
    try {
      out = response.getWriter();
      out.print(msg);
    } catch (IOException ex) {
      log.error("response error: ", ex);
    }
  }

  /**
   * @return the echo
   */
  public String getEcho() {
    return echo;
  }

  /**
   * @param utc the utc to set
   */
  public void setUtc(String utc) {
    this.utc = utc;
  }

  /**
   * @param state the state to set
   */
  public void setState(Integer state) {
    this.state = state;
  }

  /**
   * @param errcode the errcode to set
   */
  public void setErrcode(Integer errcode) {
    this.errcode = errcode;
  }
  

}
