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
@Table(name = "camera_cover_status", schema = "public")
public class CameraCoverStatus implements Serializable {

  /**
   * @return the cameraCoverStatusId
   */
  public long getCameraCoverStatusId() {
    return cameraCoverStatusId;
  }

  /**
   * @param cameraCoverStatusId the cameraCoverStatusId to set
   */
  public void setCameraCoverStatusId(long cameraCoverStatusId) {
    this.cameraCoverStatusId = cameraCoverStatusId;
  }

  /**
   * @return the cameraId
   */
  public Integer getCameraId() {
    return cameraId;
  }

  /**
   * @param cameraId the cameraId to set
   */
  public void setCameraId(Integer cameraId) {
    this.cameraId = cameraId;
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
   * @return the state
   */
  public Integer getState() {
    return state;
  }

  /**
   * @param state the state to set
   */
  public void setState(Integer state) {
    this.state = state;
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
    @Parameter(name = "sequence", value = "camera_cover_status_id_seq")})
  @GeneratedValue(generator = "generator")
  @Column(name = "camera_cover_status_id", unique = true, nullable = false)
  private long cameraCoverStatusId;
  @Column(name = "camera_id")
  private Integer cameraId;
  @Column(name = "ctime")
  @Temporal(TemporalType.TIMESTAMP)
  private Date ctime;
  @Column(name = "state")
  private Integer state;
  @Column(name = "errcode")
  private Integer errcode;

  
}
