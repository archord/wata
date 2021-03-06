package com.gwac.model;
// Generated 2015-10-2 9:40:37 by Hibernate Tools 3.6.0

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

/**
 * DataProcessMachine generated by hbm2java
 */
@Entity
@Table(name = "camera_temperature_monitor", schema = "public"
)
public class CameraTemperatureMonitor implements java.io.Serializable {

  private long ctmId;
  private Integer camId;
  private Float voltage;
  private Float current;
  private Float hotEndTemperature;
  private Float coldEndTemperature;
  private Float coolset;
  private Boolean online;
  private Date time;

  public CameraTemperatureMonitor() {
  }

  public CameraTemperatureMonitor(int ctmId) {
    this.ctmId = ctmId;
  }

  @GenericGenerator(name = "generator", strategy = "seqhilo", parameters = {
    @Parameter(name = "max_lo", value = "49"),
    @Parameter(name = "sequence", value = "ctm_id_seq")})
  @Id
  @GeneratedValue(generator = "generator")
  @Column(name = "ctm_id", unique = true, nullable = false)
  public long getCtmId() {
    return ctmId;
  }

  /**
   * @param ctmId the ctmId to set
   */
  public void setCtmId(long ctmId) {
    this.ctmId = ctmId;
  }

  /**
   * @return the camId
   */
  @Column(name = "cam_id")
  public Integer getCamId() {
    return camId;
  }

  /**
   * @param camId the camId to set
   */
  public void setCamId(Integer camId) {
    this.camId = camId;
  }

  /**
   * @return the voltage
   */
  @Column(name = "voltage")
  public Float getVoltage() {
    return voltage;
  }

  /**
   * @param voltage the voltage to set
   */
  public void setVoltage(Float voltage) {
    this.voltage = voltage;
  }

  /**
   * @return the current
   */
  @Column(name = "current")
  public Float getCurrent() {
    return current;
  }

  /**
   * @param current the current to set
   */
  public void setCurrent(Float current) {
    this.current = current;
  }

  /**
   * @return the hotEndTemperature
   */
  @Column(name = "hot_end_temperature")
  public Float getHotEndTemperature() {
    return hotEndTemperature;
  }

  /**
   * @param hotEndTemperature the hotEndTemperature to set
   */
  public void setHotEndTemperature(Float hotEndTemperature) {
    this.hotEndTemperature = hotEndTemperature;
  }

  /**
   * @return the coldEndTemperature
   */
  @Column(name = "cold_end_temperature")
  public Float getColdEndTemperature() {
    return coldEndTemperature;
  }

  /**
   * @param coldEndTemperature the coldEndTemperature to set
   */
  public void setColdEndTemperature(Float coldEndTemperature) {
    this.coldEndTemperature = coldEndTemperature;
  }

  /**
   * @return the coolset
   */
  @Column(name = "coolset")
  public Float getCoolset() {
    return coolset;
  }

  /**
   * @param coolset the coolset to set
   */
  public void setCoolset(Float coolset) {
    this.coolset = coolset;
  }

  /**
   * @return the online
   */
  @Column(name = "online")
  public Boolean getOnline() {
    return online;
  }

  /**
   * @param online the online to set
   */
  public void setOnline(Boolean online) {
    this.online = online;
  }

  /**
   * @return the time
   */
  @Column(name = "time")
  public Date getTime() {
    return time;
  }

  /**
   * @param time the time to set
   */
  public void setTime(Date time) {
    this.time = time;
  }

}
