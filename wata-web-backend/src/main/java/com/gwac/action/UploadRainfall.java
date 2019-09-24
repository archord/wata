/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.action;

/**
 *
 * @author xy
 */
import com.gwac.dao.RainfallDao;
import com.gwac.model.Rainfall;
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
public class UploadRainfall extends ActionSupport {

  private static final Log log = LogFactory.getLog(UploadRainfall.class);
  private static final String dateFormateString2 = "yyyyMMdd HHmmss";

  private String gid;
  private String utc;
  private Float value;

  @Resource
  private RainfallDao dao;
  private String echo = "";

  @Action(value = "uploadRainfall")
  public void upload() {

    echo = "";
    log.debug("gid:" + gid);
    log.debug("utc:" + utc);
    log.debug("value:" + value);

    if (gid == null || gid.isEmpty()) {
      echo = "groupId cannot be empty.";
      log.warn(echo);
    } else {
        Rainfall obj = new Rainfall();
        if (null != utc) {
          obj.setCtime(CommonFunction.stringToDate(utc.replace("T", " "), dateFormateString2));
        }
        obj.setGid(gid);
	obj.setValue(value);
        dao.save(obj);
        echo = "receive parameter success.";
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
   * @param gid the gid to set
   */
  public void setGid(String gid) {
    this.gid = gid;
  }

  /**
   * @param value the value to set
   */
  public void setValue(Float value) {
    this.value = value;
  }
}
