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
@Table(name = "camera_vacuum_monitor", schema = "public"
)
public class CameraVacuumMonitor implements java.io.Serializable {

  private long cvmId;
  private Integer camId;
  private Boolean online;
  private Float voltage;
  private Float current;
  private Float pressure;
  private Date time;

  public CameraVacuumMonitor() {
  }

  public CameraVacuumMonitor(int cvmId) {
    this.cvmId = cvmId;
  }

  @GenericGenerator(name = "generator", strategy = "seqhilo", parameters = {
    @Parameter(name = "max_lo", value = "49"),
    @Parameter(name = "sequence", value = "cvm_id_seq")})
  @Id
  @GeneratedValue(generator = "generator")
  @Column(name = "cvm_id", unique = true, nullable = false)
  public long getCvmId() {
    return cvmId;
  }

  /**
   * @param cvmId the cvmId to set
   */
  public void setCvmId(long cvmId) {
    this.cvmId = cvmId;
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
   * @return the pressure
   */
  @Column(name = "pressure")
  public Float getPressure() {
    return pressure;
  }

  /**
   * @param pressure the pressure to set
   */
  public void setPressure(Float pressure) {
    this.pressure = pressure;
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
