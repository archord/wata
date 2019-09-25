/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.action;

/**
 *
 * @author xy
 */
import com.gwac.dao.DomeDao;
import com.gwac.dao.DomeStatusDao;
import com.gwac.model.Dome;
import com.gwac.model.DomeStatus;
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
public class UploadDomeStatus extends ActionSupport {

  private static final Log log = LogFactory.getLog(UploadDomeStatus.class);
  private static final String dateFormateString2 = "yyyyMMdd HHmmss";

  private String gid;
  private String utc;
  private Integer state;
  private Integer errcode;

  @Resource
  private DomeDao dao1;
  @Resource
  private DomeStatusDao dao2;
  private String echo = "";

  @Action(value = "uploadDomeStatus")
  public void upload() {

    echo = "";
    log.debug("gid:" + gid);
    log.debug("utc:" + utc);
    log.debug("state:" + state);
    log.debug("errcode:" + errcode);

    if (gid == null || gid.isEmpty()) {
      echo = "groupId cannot be empty.";
      log.warn(echo);
    } else {
      Dome tdome = dao1.getByName(gid);
      if (tdome != null) {
        DomeStatus obj = new DomeStatus();
        obj.setDomeId(tdome.getDomeId());
        if (null != utc) {
          obj.setCtime(CommonFunction.stringToDate(utc.replace("T", " "), dateFormateString2));
        }
        obj.setStatus(state);
        obj.setErrcode(errcode);
        dao2.save(obj);
	dao1.updateDomeStatus(obj);
        echo = "upload dome state success.";
      } else {
        echo = "can not find dome: " + gid;
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

  /**
   * @param gid the gid to set
   */
  public void setGid(String gid) {
    this.gid = gid;
  }
}
