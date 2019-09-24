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
@Table(name = "rainfall", schema = "public")
public class Rainfall implements Serializable {

  /**
   * @return the rainId
   */
  public long getRainId() {
    return rainId;
  }

  /**
   * @param rainId the rainId to set
   */
  public void setRainId(long rainId) {
    this.rainId = rainId;
  }

  /**
   * @return the gid
   */
  public String getGid() {
    return gid;
  }

  /**
   * @param gid the gid to set
   */
  public void setGid(String gid) {
    this.gid = gid;
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
   * @return the value
   */
  public Float getValue() {
    return value;
  }

  /**
   * @param value the value to set
   */
  public void setValue(Float value) {
    this.value = value;
  }


  private static final long serialVersionUID = 1L;  
  
  @Id
  @GenericGenerator(name = "generator", strategy = "seqhilo", parameters = {
    @Parameter(name = "max_lo", value = "49"),
    @Parameter(name = "sequence", value = "rain_id_seq")})
  @GeneratedValue(generator = "generator")
  @Column(name = "rain_id", unique = true, nullable = false)
  private long rainId;
  @Column(name = "gid")
  private String gid;
  @Column(name = "ctime")
  @Temporal(TemporalType.TIMESTAMP)
  private Date ctime;
  @Column(name = "value")
  private Float value;

  
}
