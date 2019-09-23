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
@Table(name = "mount_state", schema = "public")
public class MountState implements Serializable {

  /**
   * @return the unitId
   */
  public String getUnitId() {
    return unitId;
  }

  /**
   * @param unitId the unitId to set
   */
  public void setUnitId(String unitId) {
    this.unitId = unitId;
  }

  /**
   * @return the groupId
   */
  public String getGroupId() {
    return groupId;
  }

  /**
   * @param groupId the groupId to set
   */
  public void setGroupId(String groupId) {
    this.groupId = groupId;
  }

  /**
   * @return the mountStatusId
   */
  public long getMountStatusId() {
    return mountStatusId;
  }

  /**
   * @param mountStatusId the mountStatusId to set
   */
  public void setMountStatusId(long mountStatusId) {
    this.mountStatusId = mountStatusId;
  }

  /**
   * @return the mountId
   */
  public Integer getMountId() {
    return mountId;
  }

  /**
   * @param mountId the mountId to set
   */
  public void setMountId(Integer mountId) {
    this.mountId = mountId;
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

  /**
   * @return the ra
   */
  public Double getRa() {
    return ra;
  }

  /**
   * @param ra the ra to set
   */
  public void setRa(Double ra) {
    this.ra = ra;
  }

  /**
   * @return the dec
   */
  public Double getDec() {
    return dec;
  }

  /**
   * @param dec the dec to set
   */
  public void setDec(Double dec) {
    this.dec = dec;
  }

  /**
   * @return the azi
   */
  public Double getAzi() {
    return azi;
  }

  /**
   * @param azi the azi to set
   */
  public void setAzi(Double azi) {
    this.azi = azi;
  }

  /**
   * @return the alt
   */
  public Double getAlt() {
    return alt;
  }

  /**
   * @param alt the alt to set
   */
  public void setAlt(Double alt) {
    this.alt = alt;
  }

  private static final long serialVersionUID = 1L;  
  @Id
  @GenericGenerator(name = "generator", strategy = "seqhilo", parameters = {
    @Parameter(name = "max_lo", value = "49"),
    @Parameter(name = "sequence", value = "mount_status_id_seq")})
  @GeneratedValue(generator = "generator")
  @Column(name = "mount_status_id", unique = true, nullable = false)
  private long mountStatusId;
  @Column(name = "mount_id")
  private Integer mountId;
  @Column(name = "ctime")
  @Temporal(TemporalType.TIMESTAMP)
  private Date ctime;
  @Column(name = "state")
  private Integer state;
  @Column(name = "errcode")
  private Integer errcode;
  @Column(name = "ra")
  private Double ra;
  @Column(name = "dec")
  private Double dec;
  @Column(name = "azi")
  private Double azi;
  @Column(name = "alt")
  private Double alt;
  @Column(name = "unit_id")
  private String unitId;
  @Column(name = "group_id")
  private String groupId;

  
}
