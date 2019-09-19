package com.gwac.action;

import com.gwac.dao.MoveObjectDao;
import com.gwac.model.MoveObject;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import javax.annotation.Resource;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Actions;
import org.apache.struts2.convention.annotation.ExceptionMapping;
import org.apache.struts2.convention.annotation.Result;

@Result(name = "error", location = "/error.jsp")
@ExceptionMapping(exception = "java.lang.Exception", result = "error")
public class GetObjectListJson extends ActionSupport {

  /**
   * @param dateStr the dateStr to set
   */
  public void setDateStr(String dateStr) {
    this.dateStr = dateStr;
  }

  /**
   * @param camId the camId to set
   */
  public void setCamId(int camId) {
    this.camId = camId;
  }

  private static final long serialVersionUID = -3454448234583441394L;
  private static final Log log = LogFactory.getLog(GetObjectListJson.class);

  @Resource
  private MoveObjectDao dao;
  private List<MoveObject> objs;
  
  private String dateStr;
  private int camId;

  @Actions({
    @Action(value = "/get-object-list-json", results = {
      @Result(name = "json", type = "json")})
  })
  @SuppressWarnings("unchecked")
  public String execute() throws Exception {

    objs = dao.getMovObjs(dateStr, camId);
    return "json";
  }

  /**
   * @param dao the dao to set
   */
  public void setDao(MoveObjectDao dao) {
    this.dao = dao;
  }

  /**
   * @return the objs
   */
  public List<MoveObject> getObjs() {
    return objs;
  }

}
