package com.gwac.action;

import com.gwac.dao.MoveObjectRecordDao;
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
public class GetObjectRecordsJson extends ActionSupport {

  private static final long serialVersionUID = -3454448234583441394L;
  private static final Log log = LogFactory.getLog(GetObjectRecordsJson.class);

  @Resource
  private MoveObjectRecordDao dao;
  private String objs;
  
  private int movId;

  @Actions({
    @Action(value = "/get-object-records-json", results = {
      @Result(name = "json", type = "json")})
  })
  @SuppressWarnings("unchecked")
  public String execute() throws Exception {

    objs = dao.getMoveObjsRecords(movId);
    return "json";
  }

  /**
   * @param dao the dao to set
   */
  public void setDao(MoveObjectRecordDao dao) {
    this.dao = dao;
  }

  /**
   * @return the objs
   */
  public String getObjs() {
    return objs;
  }

  /**
   * @param movId the movId to set
   */
  public void setMovId(int movId) {
    this.movId = movId;
  }

}
