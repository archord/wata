package com.gwac.action;

import com.gwac.dao.OtLevel2Dao;
import com.gwac.model.OtLevel2;
import com.gwac.model4.OtLevel2QueryParameter;
import com.gwac.util.CommonFunction;
import com.opensymphony.xwork2.ActionSupport;
import java.util.*;
import javax.annotation.Resource;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.convention.annotation.Result;

@Result(name = "success", type = "json")
public class GetOtLevel2List extends ActionSupport{

  private static final long serialVersionUID = 5073694279068543593L;
  private static final Log log = LogFactory.getLog(GetOtLevel2List.class);
  // Your result List
  private List<OtLevel2> gridModel;
  // get how many rows we want to have into the grid - rowNum attribute in the
  // grid
  private Integer rows = 0;
  // Get the requested page. By default grid sets this to 1.
  private Integer page = 0;
  // sorting order - asc or desc
  private String sord;
  // get index row - i.e. user click to sort.
  private String sidx;
  // Search Field
  private String searchField;
  // The Search String
  private String searchString;
  // Limit the result when using local data, value form attribute rowTotal
  private Integer totalrows;
  // he Search Operation
  // ['eq','ne','lt','le','gt','ge','bw','bn','in','ni','ew','en','cn','nc']
  private String searchOper;
  // Your Total Pages
  private Integer total = 0;
  // All Records
  private Integer records = 0;
  private boolean loadonce = false;
  @Resource
  private OtLevel2Dao obDao = null;
  private OtLevel2QueryParameter ot2qp;

  @SuppressWarnings("unchecked")
//  @Transactional(readOnly=true)
  public String execute() {
      
      log.debug("get ot level2 list");

    // Calucalate until rows ware selected
    int to = (rows * page);
    // Calculate the first row to read
    int from = to - rows;
    ot2qp.setStart(from);
    ot2qp.setLength(rows);
    checkIsHistory(ot2qp);
//    log.debug(ot2qp.toString());

    gridModel = obDao.queryOtLevel2(ot2qp);
    records = obDao.countOtLevel2(ot2qp);

    if (totalrows != null) {
      records = totalrows;
    }

    // Set to = max rows
    if (to > records) {
      to = records;
    }

    // Calculate total Pages
    total = (int) Math.ceil((double) records / (double) rows);

    return SUCCESS;
  }
  
  public void checkIsHistory(OtLevel2QueryParameter ot2qp){
    String curUtc = CommonFunction.getCurUTCDateString();
    System.out.println(curUtc);
    if(ot2qp.getStartDate().isEmpty()&&ot2qp.getEndDate().isEmpty()){
      ot2qp.setQueryHis(false);
    }else if(ot2qp.getStartDate().equals(curUtc)&&ot2qp.getEndDate().equals(curUtc)){
      ot2qp.setQueryHis(false);
    }else{
      ot2qp.setQueryHis(true);
    }
  }

  /**
   * @return how many rows we want to have into the grid
   */
  public Integer getRows() {
    return rows;
  }

  /**
   * @param rows how many rows we want to have into the grid
   */
  public void setRows(Integer rows) {
    this.rows = rows;
  }

  /**
   * @return current page of the query
   */
  public Integer getPage() {
    return page;
  }

  /**
   * @param page current page of the query
   */
  public void setPage(Integer page) {
    this.page = page;
  }

  /**
   * @return total pages for the query
   */
  public Integer getTotal() {
    return total;
  }

  /**
   * @param total total pages for the query
   */
  public void setTotal(Integer total) {
    this.total = total;
  }

  /**
   * @return total number of records for the query. e.g. select count(*) from
   * table
   */
  public Integer getRecords() {
    return records;
  }

  /**
   * @param records total number of records for the query. e.g. select count(*)
   * from table
   */
  public void setRecords(Integer records) {

    this.records = records;

    if (this.records > 0 && this.rows > 0) {
      this.total = (int) Math.ceil((double) this.records
              / (double) this.rows);
    } else {
      this.total = 0;
    }
  }

  /**
   * @return an collection that contains the actual data
   */
  public List<OtLevel2> getGridModel() {
    return gridModel;
  }

  /**
   * @param gridModel an collection that contains the actual data
   */
  public void setGridModel(List<OtLevel2> gridModel) {
    this.gridModel = gridModel;
  }

  /**
   * @return sorting order
   */
  public String getSord() {
    return sord;
  }

  /**
   * @param sord sorting order
   */
  public void setSord(String sord) {
    this.sord = sord;
  }

  /**
   * @return get index row - i.e. user click to sort.
   */
  public String getSidx() {
    return sidx;
  }

  /**
   * @param sidx get index row - i.e. user click to sort.
   */
  public void setSidx(String sidx) {
    this.sidx = sidx;
  }

  public void setSearchField(String searchField) {
    this.searchField = searchField;
  }

  public void setSearchString(String searchString) {
    this.searchString = searchString;
  }

  public void setSearchOper(String searchOper) {
    this.searchOper = searchOper;
  }

  public void setTotalrows(Integer totalrows) {
    this.totalrows = totalrows;
  }

  /**
   * @return the ot2qp
   */
  public OtLevel2QueryParameter getOt2qp() {
    return ot2qp;
  }

  /**
   * @param ot2qp the ot2qp to set
   */
  public void setOt2qp(OtLevel2QueryParameter ot2qp) {
    this.ot2qp = ot2qp;
  }
}
