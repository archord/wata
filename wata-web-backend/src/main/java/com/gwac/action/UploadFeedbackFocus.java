/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.action;

/**
 *
 * @author xy
 */
import com.gwac.dao.CameraDao;
import com.gwac.dao.FeedbackFocusDao;
import com.gwac.model.Camera;
import com.gwac.model.FeedbackFocus;
import com.opensymphony.xwork2.ActionSupport;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
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
public class UploadFeedbackFocus extends ActionSupport {

  private static final Log log = LogFactory.getLog(UploadFeedbackFocus.class);

  private Integer focus;
  private String cameraId;

  @Resource
  private CameraDao cameraDao;
  @Resource
  private FeedbackFocusDao fbfDao;
  private String echo = "";

  @Action(value = "uploadFocusStatus")
  public void upload() {

    echo = "";
    log.debug("focus:" + focus);
    log.debug("cameraId:" + cameraId);

    if (cameraId == null || cameraId.isEmpty()) {
      echo = "cameraId and ispId cannot be empty.";
      log.warn(echo);
    } else {

      if (focus > 5000) {
        focus = 5000;
      } else if (focus < -5000) {
        focus = -5000;
      }

      Camera tcamera = cameraDao.getByName(cameraId);
      if (tcamera != null) {
        FeedbackFocus tff = new FeedbackFocus();
        tff.setCameraId(tcamera.getCameraId());
        tff.setFocus(focus);
        tff.setRecvTimeUtc(new Date());
        fbfDao.update(tff);
        echo = "receive parameter success.";
        log.debug(echo);
      } else {
        echo = "cannot find camera cameraName=" + cameraId;
        log.debug(echo);
      }
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
   * @param focus the focus to set
   */
  public void setFocus(Integer focus) {
    this.focus = focus;
  }

  /**
   * @param cameraId the cameraId to set
   */
  public void setCameraId(String cameraId) {
    this.cameraId = cameraId;
  }

}
