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
import com.gwac.dao.MountStateDao;
import com.gwac.model.Mount;
import com.gwac.model.MountState;
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
public class UploadMountState extends ActionSupport {

  private static final Log log = LogFactory.getLog(UploadMountState.class);
  private static final String dateFormateString2 = "yyyyMMdd HHmmss";

  @Resource
  private MountDao dao1;
  @Resource
  private MountStateDao dao2;

  private String gid;
  private String uid;
  private String ctime;
  private Integer state;
  private Integer errcode;
  private Double ra;
  private Double dec;
  private Double azi;
  private Double alt;
  
  private String echo = "";

  @Action(value = "updateMountLinked")
  public void upload() {

    echo = "";

    if (null != gid && !gid.isEmpty() && null != uid && !uid.isEmpty()) {
      Mount mount = dao1.getByGroupUnitId(gid, uid);
      
      MountState obj = new MountState();
      obj.setMountId(mount.getMountId());
      if (ctime != null && !ctime.isEmpty()) {
	obj.setCtime(CommonFunction.stringToDate(ctime, dateFormateString2));
      }
      obj.setGroupId(gid);
      obj.setUnitId(uid);
      obj.setState(state);
      obj.setErrcode(errcode);
      obj.setRa(ra);
      obj.setDec(dec);
      obj.setAzi(azi);
      obj.setAlt(alt);
      dao2.save(obj);
      
      dao1.updateMountStatus(obj);
      
      echo = "upload mount state success!";
    } else {
      echo = "mount state error: gid or uid is empty!";
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
   * @param ctime the ctime to set
   */
  public void setCtime(String ctime) {
    this.ctime = ctime;
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
   * @param ra the ra to set
   */
  public void setRa(Double ra) {
    this.ra = ra;
  }

  /**
   * @param dec the dec to set
   */
  public void setDec(Double dec) {
    this.dec = dec;
  }

  /**
   * @param azi the azi to set
   */
  public void setAzi(Double azi) {
    this.azi = azi;
  }

  /**
   * @param alt the alt to set
   */
  public void setAlt(Double alt) {
    this.alt = alt;
  }

}
