package com.gwac.action;

import com.gwac.dao.SystemParameterDao;
import com.gwac.model.SystemParameter;
import com.opensymphony.xwork2.ActionSupport;
import javax.annotation.Resource;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Actions;
import org.apache.struts2.convention.annotation.Result;

@Actions({
  @Action(value = "/update-system-parameter", results = {
    @Result(name = "success", type = "json")})})
public class UpdateSystemParameter extends ActionSupport {

  private static final long serialVersionUID = 1079394279068833593L;
  private static final Log log = LogFactory.getLog(UpdateSystemParameter.class);

  @Resource
  private SystemParameterDao systemParameterDao = null;

  private Long spId;
  private String controlServerIp;
  private Integer controlServerPort;

  @SuppressWarnings("unchecked")
  public String execute() {
    System.out.println(spId);
    System.out.println(controlServerIp);
    System.out.println(controlServerPort);
    SystemParameter sp = new SystemParameter();
    sp.setSpId(spId);
    sp.setControlServerIp(controlServerIp);
    sp.setControlServerPort(controlServerPort);
    systemParameterDao.updateControlServerIpPort(sp);

    return SUCCESS;
  }


  /**
   * @param spId the spId to set
   */
  public void setSpId(Long spId) {
    this.spId = spId;
  }

  /**
   * @param controlServerIp the controlServerIp to set
   */
  public void setControlServerIp(String controlServerIp) {
    this.controlServerIp = controlServerIp;
  }

  /**
   * @param controlServerPort the controlServerPort to set
   */
  public void setControlServerPort(Integer controlServerPort) {
    this.controlServerPort = controlServerPort;
  }

}
