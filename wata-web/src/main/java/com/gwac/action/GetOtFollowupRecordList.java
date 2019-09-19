package com.gwac.action;

import com.gwac.dao.FollowUpObjectDao;
import com.gwac.dao.FollowUpRecordDao;
import com.gwac.dao.OtLevel2Dao;
import com.gwac.model.FollowUpObject;
import com.gwac.model.FollowUpRecord;
import com.gwac.model.OtLevel2;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
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
public class GetOtFollowupRecordList extends ActionSupport {

  private static final long serialVersionUID = -3454448234482641394L;
  private static final Log log = LogFactory.getLog(GetOtFollowupRecordList.class);

  private String otName;
  private Boolean queryHis;

  @Resource
  private FollowUpRecordDao furDao;
  @Resource
  private OtLevel2Dao obDao;

  private OtLevel2 ot2;
  private List<FollowUpRecord> objs;

  @Actions({
    @Action(value = "/get-ot-followup-record-list", results = {
      @Result(name = "json", type = "json")})
  })
  @SuppressWarnings("unchecked")
  public String execute() throws Exception {

    List<Integer> tlist = obDao.hisOrCurExist(otName);
    if (!tlist.isEmpty()) {
      Integer his = tlist.get(0);
      queryHis = his == 1;
      ot2 = obDao.getOtLevel2ByName(otName, queryHis);
      objs = furDao.getByOtId(ot2.getOtId(), queryHis);
    } else {
      objs = new ArrayList();
    }

    return "json";
  }

  /**
   * @param otName the otName to set
   */
  public void setOtName(String otName) {
    this.otName = otName;
  }

  /**
   * @param queryHis the queryHis to set
   */
  public void setQueryHis(Boolean queryHis) {
    this.queryHis = queryHis;
  }

  /**
   * @return the ot2
   */
  public OtLevel2 getOt2() {
    return ot2;
  }

  /**
   * @return the objs
   */
  public List<FollowUpRecord> getObjs() {
    return objs;
  }

}
