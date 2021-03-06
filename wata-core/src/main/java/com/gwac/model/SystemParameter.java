package com.gwac.model;
// Generated 2015-10-2 9:40:37 by Hibernate Tools 3.6.0

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

/**
 * DataProcessMachine generated by hbm2java
 */
@Entity
@Table(name = "system_parameter", schema = "public"
)
public class SystemParameter implements java.io.Serializable {

  private long spId;
  private String clouldImageIp;
  private String clouldImageUser;
  private String clouldImagePassword;
  private String clouldImagePath;
  private String latestClouldImage;
  private Date latestClouldImageTime;
  private String controlServerIp;
  private String systemStatus;
  private Integer controlServerPort;

  @Id
  @GenericGenerator(name = "generator", strategy = "seqhilo", parameters = {
    @Parameter(name = "max_lo", value = "49"),
    @Parameter(name = "sequence", value = "sp_id_seq")})
  @GeneratedValue(generator = "generator")
  @Column(name = "sp_id", unique = true, nullable = false)
  public long getSpId() {
    return spId;
  }

  /**
   * @param spId the spId to set
   */
  public void setSpId(long spId) {
    this.spId = spId;
  }

  /**
   * @return the clouldImageIp
   */
  @Column(name = "clould_image_ip")
  public String getClouldImageIp() {
    return clouldImageIp;
  }

  /**
   * @param clouldImageIp the clouldImageIp to set
   */
  public void setClouldImageIp(String clouldImageIp) {
    this.clouldImageIp = clouldImageIp;
  }

  /**
   * @return the clouldImageUser
   */
  @Column(name = "clould_image_user")
  public String getClouldImageUser() {
    return clouldImageUser;
  }

  /**
   * @param clouldImageUser the clouldImageUser to set
   */
  public void setClouldImageUser(String clouldImageUser) {
    this.clouldImageUser = clouldImageUser;
  }

  /**
   * @return the clouldImagePassword
   */
  @Column(name = "clould_image_password")
  public String getClouldImagePassword() {
    return clouldImagePassword;
  }

  /**
   * @param clouldImagePassword the clouldImagePassword to set
   */
  public void setClouldImagePassword(String clouldImagePassword) {
    this.clouldImagePassword = clouldImagePassword;
  }

  /**
   * @return the clouldImagePath
   */
  @Column(name = "clould_image_path")
  public String getClouldImagePath() {
    return clouldImagePath;
  }

  /**
   * @param clouldImagePath the clouldImagePath to set
   */
  public void setClouldImagePath(String clouldImagePath) {
    this.clouldImagePath = clouldImagePath;
  }

  /**
   * @return the latestClouldImage
   */
  @Column(name = "latest_clould_image")
  public String getLatestClouldImage() {
    return latestClouldImage;
  }

  /**
   * @param latestClouldImage the latestClouldImage to set
   */
  public void setLatestClouldImage(String latestClouldImage) {
    this.latestClouldImage = latestClouldImage;
  }

  /**
   * @return the monitorImageTime
   */
  @Column(name = "latest_clould_image_time")
  @Temporal(javax.persistence.TemporalType.TIMESTAMP)
  public Date getLatestClouldImageTime() {
    return latestClouldImageTime;
  }

  /**
   * @param monitorImageTime the monitorImageTime to set
   */
  public void setLatestClouldImageTime(Date latestClouldImageTime) {
    this.latestClouldImageTime = latestClouldImageTime;
  }

  /**
   * @return the controlServerIp
   */
  @Column(name = "control_server_ip")
  public String getControlServerIp() {
    return controlServerIp;
  }

  /**
   * @param controlServerIp the controlServerIp to set
   */
  public void setControlServerIp(String controlServerIp) {
    this.controlServerIp = controlServerIp;
  }

  /**
   * @return the systemStatus
   */
  @Column(name = "system_status")
  public String getSystemStatus() {
    return systemStatus;
  }

  /**
   * @param systemStatus the systemStatus to set
   */
  public void setSystemStatus(String systemStatus) {
    this.systemStatus = systemStatus;
  }

  /**
   * @return the controlServerPort
   */
  @Column(name = "control_server_port")
  public Integer getControlServerPort() {
    return controlServerPort;
  }

  /**
   * @param controlServerPort the controlServerPort to set
   */
  public void setControlServerPort(Integer controlServerPort) {
    this.controlServerPort = controlServerPort;
  }
  
}
