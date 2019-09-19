package com.gwac.action;

import com.gwac.dao.OtObserveRecordDAO;
import com.opensymphony.xwork2.ActionSupport;
import java.io.IOException;
import java.io.PrintWriter;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Actions;
import org.apache.struts2.convention.annotation.ExceptionMapping;
import org.apache.struts2.convention.annotation.Result;

@Result(name = "error", location = "/error.jsp")
@ExceptionMapping(exception = "java.lang.Exception", result = "error")
public class GetLatestOT1 extends ActionSupport {

  private static final long serialVersionUID = -3454448234588641394L;
  private static final Log log = LogFactory.getLog(GetLatestOT1.class);

  @Resource
  private OtObserveRecordDAO otorDao;
  private String lastId;

  @Actions({
    @Action(value = "/get-latest-ot1", results = {
      @Result(name = "json", type = "json")})
  })
  @SuppressWarnings("unchecked")
  public String execute() throws Exception {

    HttpServletResponse response = ServletActionContext.getResponse();
    response.setContentType("text/html;charset=UTF-8");
    PrintWriter out;
    try {
      String ots = otorDao.getLatestRecord(lastId);
      out = response.getWriter();
      out.print(ots);
    } catch (IOException ex) {
      log.error("response error: ", ex);
    }

    return null;
  }

  /**
   * @param otorDao the otorDao to set
   */
  public void setOtorDao(OtObserveRecordDAO otorDao) {
    this.otorDao = otorDao;
  }

  /**
   * @param lastId the lastId to set
   */
  public void setLastId(String lastId) {
    this.lastId = lastId;
  }
}
