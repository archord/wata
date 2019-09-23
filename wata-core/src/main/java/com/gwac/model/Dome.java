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
@Table(name = "dome", schema = "public")
public class Dome implements Serializable {

  /**
   * @return the domeId
   */
  public int getDomeId() {
    return domeId;
  }

  /**
   * @param domeId the domeId to set
   */
  public void setDomeId(int domeId) {
    this.domeId = domeId;
  }

  /**
   * @return the name
   */
  public String getName() {
    return name;
  }

  /**
   * @param name the name to set
   */
  public void setName(String name) {
    this.name = name;
  }

  /**
   * @return the linked
   */
  public Integer getLinked() {
    return linked;
  }

  /**
   * @param linked the linked to set
   */
  public void setLinked(Integer linked) {
    this.linked = linked;
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
    @Parameter(name = "sequence", value = "dome_id_seq")})
  @GeneratedValue(generator = "generator")
  @Column(name = "dome_id", unique = true, nullable = false)
  private int domeId;
  @Column(name = "name")
  private String name;
  @Column(name = "linked")
  private Integer linked;
  @Column(name = "status")
  private Integer status;
  @Column(name = "ctime")
  @Temporal(TemporalType.TIMESTAMP)
  private Date ctime;
  @Column(name = "errcode")
  private Integer errcode;

  
}
