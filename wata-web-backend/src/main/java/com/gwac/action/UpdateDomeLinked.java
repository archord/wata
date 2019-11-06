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
public class UpdateDomeLinked extends ActionSupport {

  private static final Log log = LogFactory.getLog(UpdateDomeLinked.class);
  private static final String dateFormateString2 = "yyyyMMdd HHmmss";

  @Resource
  private DomeDao dao;

  private String gid;
  private String linked;
  private String echo = "";

  @Action(value = "updateDomeLinked")
  public void upload() {

    echo = "";
    log.debug("gid:" + gid);
    log.debug("linked:" + linked);

    if (null != gid && !gid.isEmpty()) {
      Integer tval = 0;
      if (linked!=null&&linked.equals("1")) {
	tval = 1;
      }
      dao.updateDomeLinked(gid, tval);
      echo = "update dome linked success!";
    } else {
      echo = "dome error: gid is empty!";
    }
    log.debug(echo);
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
   * @param gid the gid to set
   */
  public void setGid(String gid) {
    this.gid = gid;
  }

  /**
   * @param linked the linked to set
   */
  public void setLinked(String linked) {
    this.linked = linked;
  }

}
