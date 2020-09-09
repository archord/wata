/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.action;

/**
 *
 * @author xy
 */
import com.gwac.dao.ObservationPlanDao;
import com.gwac.dao.ObservationPlanStateDao;
import com.gwac.model.ObservationPlanState;
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
public class UploadObservationPlanState extends ActionSupport {

  private static final Log log = LogFactory.getLog(UploadObservationPlanState.class);
  private static final String dateFormateString2 = "yyyyMMdd HHmmss";

  @Resource
  private ObservationPlanStateDao obsPlanStateDao;
  @Resource
  private ObservationPlanDao obsPlanDao;

  private String opSn;
  private String state;
  private String ctime;
  private String echo = "";

  @Action(value = "uploadObservationPlanRecord")
  public void upload() {

    echo = "";

    if (null != opSn && !opSn.isEmpty()) {
      ObservationPlanState obsPlanState = new ObservationPlanState();
      obsPlanState.setOpId(Long.parseLong(opSn));
      obsPlanState.setState(state);
      if (null != ctime) {
	obsPlanState.setCtime(CommonFunction.stringToDate(ctime.replace("T", " "), dateFormateString2));
      }
      obsPlanStateDao.save(obsPlanState);
      obsPlanDao.updateObservationPlanStatus(obsPlanState);
      echo = "upload observation state success!";
    } else {
      echo = "error: observation plan id is empty!";
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
   * @param state the state to set
   */
  public void setState(String state) {
    this.state = state;
  }

  /**
   * @param ctime the ctime to set
   */
  public void setCtime(String ctime) {
    this.ctime = ctime;
  }

  /**
   * @param opSn the opSn to set
   */
  public void setOpSn(String opSn) {
    this.opSn = opSn;
  }

}
