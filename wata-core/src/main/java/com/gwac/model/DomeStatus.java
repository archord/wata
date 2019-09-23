/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

/**
 *
 * @author msw
 */
@Entity
@Table(name = "dome_status", schema = "public")
public class DomeStatus implements Serializable {

  /**
   * @return the domeStatusId
   */
  public long getDomeStatusId() {
    return domeStatusId;
  }

  /**
   * @param domeStatusId the domeStatusId to set
   */
  public void setDomeStatusId(long domeStatusId) {
    this.domeStatusId = domeStatusId;
  }

  /**
   * @return the domeId
   */
  public Integer getDomeId() {
    return domeId;
  }

  /**
   * @param domeId the domeId to set
   */
  public void setDomeId(Integer domeId) {
    this.domeId = domeId;
  }

  /**
   * @return the ctime
   */
  public Date getCtime() {
    return ctime;
  }

  /**
   * @param ctime the ctime to set
   */
  public void setCtime(Date ctime) {
    this.ctime = ctime;
  }

  /**
   * @return the status
   */
  public Integer getStatus() {
    return status;
  }

  /**
   * @param status the status to set
   */
  public void setStatus(Integer status) {
    this.status = status;
  }

  /**
   * @return the errcode
   */
  public Integer getErrcode() {
    return errcode;
  }

  /**
   * @param errcode the errcode to set
   */
  public void setErrcode(Integer errcode) {
    this.errcode = errcode;
  }

  private static final long serialVersionUID = 1L;  
  
  @Id
  @GenericGenerator(name = "generator", strategy = "seqhilo", parameters = {
    @Parameter(name = "max_lo", value = "49"),
    @Parameter(name = "sequence", value = "dome_status_id_seq")})
  @GeneratedValue(generator = "generator")
  @Column(name = "dome_status_id", unique = true, nullable = false)
  private long domeStatusId;
  @Column(name = "dome_id", unique = true, nullable = false)
  private Integer domeId;
  @Column(name = "ctime")
  @Temporal(TemporalType.TIMESTAMP)
  private Date ctime;
  @Column(name = "status")
  private Integer status;
  @Column(name = "errcode")
  private Integer errcode;

  
}
