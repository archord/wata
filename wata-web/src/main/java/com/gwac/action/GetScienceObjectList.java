package com.gwac.action;

import com.gwac.dao.ScienceObjectDao;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import javax.annotation.Resource;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

/**
 * 对OT2列表分页显示
 *
 * @author xy
 */
@Action(value = "get-sciobj-list", results = {
  @Result(name = "success", type = "json")})
public class GetScienceObjectList extends ActionSupport {

  private static final long serialVersionUID = 5073694279068591293L;
  private static final Log log = LogFactory.getLog(GetScienceObjectList.class);

  /**
   * search condition
   */
  private int draw;
  private int start;
  private int length;

  /**
   * search result
   */
  private String dataStr;
  private int recordsTotal;
  private int recordsFiltered;

  @Resource
  private ScienceObjectDao dao;

  @SuppressWarnings("unchecked")
//  @Transactional(readOnly=true)
  public String execute() {

    if (start < 0) {
      start = 0;
    }
    if (length < 0) {
      length = 100;
    }

    dataStr = dao.findRecord(start, length);
    if (dataStr == null) {
      dataStr = "[]";
    }
    recordsTotal = dao.findRecordCount().intValue();
    recordsFiltered = recordsTotal;

    return SUCCESS;
  }

  /**
   * @return the draw
   */
  public int getDraw() {
    return draw;
  }

  /**
   * @param draw the draw to set
   */
  public void setDraw(int draw) {
    this.draw = draw;
  }

  /**
   * @return the recordsTotal
   */
  public int getRecordsTotal() {
    return recordsTotal;
  }

  /**
   * @return the recordsFiltered
   */
  public int getRecordsFiltered() {
    return recordsFiltered;
  }

  /**
   * @param start the start to set
   */
  public void setStart(int start) {
    this.start = start;
  }

  /**
   * @param length the length to set
   */
  public void setLength(int length) {
    this.length = length;
  }

  /**
   * @return the dataStr
   */
  public String getDataStr() {
    return dataStr;
  }

  /**
   * @return the start
   */
  public int getStart() {
    return start;
  }

  /**
   * @return the length
   */
  public int getLength() {
    return length;
  }

}
