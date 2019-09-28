package com.gwac.action;

import com.gwac.dao.SystemParameterDao;
import com.gwac.model.SystemParameter;
import com.opensymphony.xwork2.ActionSupport;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;
import javax.annotation.Resource;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Actions;
import org.apache.struts2.convention.annotation.Result;

@Actions({
  @Action(value = "/send-control-command", results = {
    @Result(name = "success", type = "json")})})
public class SendControlCommand extends ActionSupport {

  private static final long serialVersionUID = 1079394279068833593L;
  private static final Log log = LogFactory.getLog(SendControlCommand.class);

  @Resource
  private SystemParameterDao systemParameterDao = null;

  private String controlCommand;
  private String echo;
  private int errCode;

  @SuppressWarnings("unchecked")
  public String execute() {

    log.debug("get SystemParameter");
    SystemParameter systemParameter = systemParameterDao.getById((long) 0);

    Socket socket = null;
    DataOutputStream out = null;
    String tIP = systemParameter.getControlServerIp();
    int tPort = systemParameter.getControlServerPort();
    try {
      socket = new Socket(tIP, tPort);
      out = new DataOutputStream(socket.getOutputStream());

      try {
	String tcmd = controlCommand + "\n";
	out.write(tcmd.getBytes());
	out.flush();
	errCode = 1;
	echo="send success!";
      } catch (IOException ex) {
	errCode = 0;
	echo = "error: send control command: " + controlCommand;
	log.error(echo, ex);
      }
      try {
	out.close();
	socket.close();
      } catch (IOException ex) {
	errCode = 0;
	log.error("send ot2 followPlan, close socket error.", ex);
      }
    } catch (IOException ex) {
      errCode = 0;
      echo = "error: cannot connect to server " + tIP + ":" + tPort;
      log.error(echo);
      log.error("send ot2 followPlan, cannot connect to server.", ex);
    }
    return SUCCESS;
  }

  /**
   * @return the echo
   */
  public String getEcho() {
    return echo;
  }

  /**
   * @return the errCode
   */
  public int getErrCode() {
    return errCode;
  }

  /**
   * @param controlCommand the controlCommand to set
   */
  public void setControlCommand(String controlCommand) {
    this.controlCommand = controlCommand;
  }

}
