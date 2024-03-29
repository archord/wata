package com.gwac.model;
// Generated 2015-10-2 9:40:37 by Hibernate Tools 3.6.0

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * DataProcessMachine generated by hbm2java
 */
@Entity
@Table(name = "data_process_machine", schema = "public"
)
public class DataProcessMachine implements java.io.Serializable {

  private short dpmId;
  private String name;
  private String ip;
  private Float totalStorageSize;
  private Float usedStorageSize;
  private Date lastActiveTime;
  private Integer totalBackupImage;
  private String lastBackupImageName;
  private String userName;
  private String password;
  private Integer status;
  private Integer sshPort;

  public DataProcessMachine() {
  }

  public DataProcessMachine(short dpmId) {
    this.dpmId = dpmId;
  }

  @Id
  @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "dpm_seq")
  @SequenceGenerator(name = "dpm_seq", sequenceName = "dpm_id_seq")
  @Column(name = "dpm_id", unique = true, nullable = false)
  public short getDpmId() {
    return this.dpmId;
  }

  public void setDpmId(short dpmId) {
    this.dpmId = dpmId;
  }

  @Column(name = "name")
  public String getName() {
    return this.name;
  }

  public void setName(String name) {
    this.name = name;
  }

  @Column(name = "ip", length = 15)
  public String getIp() {
    return this.ip;
  }

  public void setIp(String ip) {
    this.ip = ip;
  }

  @Column(name = "total_storage_size", precision = 8, scale = 8)
  public Float getTotalStorageSize() {
    return this.totalStorageSize;
  }

  public void setTotalStorageSize(Float totalStorageSize) {
    this.totalStorageSize = totalStorageSize;
  }

  @Column(name = "used_storage_size", precision = 8, scale = 8)
  public Float getUsedStorageSize() {
    return this.usedStorageSize;
  }

  public void setUsedStorageSize(Float usedStorageSize) {
    this.usedStorageSize = usedStorageSize;
  }


  @Temporal(TemporalType.TIMESTAMP)
  @Column(name = "last_active_time", length = 29)
  public Date getLastActiveTime() {
    return this.lastActiveTime;
  }

  public void setLastActiveTime(Date lastActiveTime) {
    this.lastActiveTime = lastActiveTime;
  }


  /**
   * @return the totalBackupImage
   */
  @Column(name = "total_backup_image")
  public Integer getTotalBackupImage() {
    return totalBackupImage;
  }

  /**
   * @param totalBackupImage the totalBackupImage to set
   */
  public void setTotalBackupImage(Integer totalBackupImage) {
    this.totalBackupImage = totalBackupImage;
  }

  /**
   * @return the lastBackupImageName
   */
  @Column(name = "last_backup_image_name")
  public String getLastBackupImageName() {
    return lastBackupImageName;
  }

  /**
   * @param lastBackupImageName the lastBackupImageName to set
   */
  public void setLastBackupImageName(String lastBackupImageName) {
    this.lastBackupImageName = lastBackupImageName;
  }

  /**
   * @return the userName
   */
  @Column(name = "user_name")
  public String getUserName() {
    return userName;
  }

  /**
   * @param userName the userName to set
   */
  public void setUserName(String userName) {
    this.userName = userName;
  }

  /**
   * @return the password
   */
  @Column(name = "password")
  public String getPassword() {
    return password;
  }

  /**
   * @param password the password to set
   */
  public void setPassword(String password) {
    this.password = password;
  }

  /**
   * @return the status
   */
  @Column(name = "status")
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
   * @return the sshPort
   */
  @Column(name = "ssh_port")
  public Integer getSshPort() {
    return sshPort;
  }

  /**
   * @param sshPort the sshPort to set
   */
  public void setSshPort(Integer sshPort) {
    this.sshPort = sshPort;
  }


}
