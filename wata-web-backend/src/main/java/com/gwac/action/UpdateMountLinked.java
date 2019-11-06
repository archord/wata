/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.action;

/**
 *
 * @author xy
 */
import com.gwac.dao.MountDao;
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
public class UpdateMountLinked extends ActionSupport {

  private static final Log log = LogFactory.getLog(UpdateMountLinked.class);
  private static final String dateFormateString2 = "yyyyMMdd HHmmss";

  @Resource
  private MountDao dao;

  private String gid;
  private String uid;
  private String linked;
  private String echo = "";

  @Action(value = "updateMountLinked")
  public void upload() {

    log.debug("gid:" + gid);
    log.debug("uid:" + uid);
    log.debug("linked:" + linked);
    echo = "";

    if (null != gid && !gid.isEmpty() && null != uid && !uid.isEmpty()) {
      Integer tval = 0;
      if (linked!=null && linked.equals("1")) {
	tval = 1;
      }
      dao.updateLinked(gid, uid, tval);
      echo = "update mount linked success!";
    } else {
      echo = "mount error: gid or uid is empty!";
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
   * @param uid the uid to set
   */
  public void setUid(String uid) {
    this.uid = uid;
  }

  /**
   * @param linked the linked to set
   */
  public void setLinked(String linked) {
    this.linked = linked;
  }

}
