package com.gwac.action;

import com.gwac.dao.CameraDao;
import com.gwac.dao.DomeDao;
import com.gwac.dao.MountDao;
import com.gwac.dao.RainfallDao;
import com.gwac.dao.SystemParameterDao;
import com.gwac.dao.SystemStatusMonitorDao;
import com.gwac.linefind.CommonFunction;
import com.gwac.model.Camera;
import com.gwac.model.Dome;
import com.gwac.model.Mount;
import com.gwac.model.Rainfall;
import com.gwac.model.SystemParameter;
import com.gwac.model.SystemStatusMonitor;
import com.opensymphony.xwork2.ActionSupport;
import java.util.*;
import javax.annotation.Resource;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Actions;
import org.apache.struts2.convention.annotation.Result;

@Actions({
  @Action(value = "/get-system-parameter", results = {
    @Result(name = "success", type = "json")})})
public class GetSystemParameter extends ActionSupport {

  private static final long serialVersionUID = 1073694279068513593L;
  private static final Log log = LogFactory.getLog(GetSystemParameter.class);

  @Resource
  private SystemParameterDao systemParameterDao = null;
  @Resource
  private CameraDao cameraDao = null;
  @Resource
  private DomeDao domeDao = null;
  @Resource
  private MountDao mountDao = null;
  @Resource
  private RainfallDao rainfallDao = null;
  
  private SystemParameter systemParameter;
  private Camera camera;
  private Dome dome;
  private Mount mount;
  private Rainfall rainfall;

  @SuppressWarnings("unchecked")
  public String execute() {

    log.debug("get SystemParameter");
    systemParameter = systemParameterDao.getById((long)0);
    camera = cameraDao.getByName("001", "002", "003");
    dome = domeDao.getByName("001");
    mount = mountDao.getByGroupUnitId("001", "002");
    rainfall = rainfallDao.getLatestRecord();

    return SUCCESS;
  }

  /**
   * @return the systemParameter
   */
  public SystemParameter getSystemParameter() {
    return systemParameter;
  }

  /**
   * @return the camera
   */
  public Camera getCamera() {
    return camera;
  }

  /**
   * @return the dome
   */
  public Dome getDome() {
    return dome;
  }

  /**
   * @return the mount
   */
  public Mount getMount() {
    return mount;
  }

  /**
   * @return the rainfall
   */
  public Rainfall getRainfall() {
    return rainfall;
  }


}
