package com.gwac.model;
// Generated 2015-10-19 21:58:46 by Hibernate Tools 3.6.0

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
 * FollowUpObservation generated by hbm2java
 */
@Entity
@Table(name = "follow_up_observation", schema = "public"
)
public class FollowUpObservation implements java.io.Serializable {

  private long foId;
  private String foName;
  private Long otId;
  private Integer userId;
  private Float ra;
  private Float dec;
  private String epoch;
  private String imageType;
  private Short exposeDuration;
  private Short frameCount;
  private String filter;
  private Short priority;
  private Date triggerTime;
  private Integer backImageCount;
  private String foParmFile;
  private Short foObjCount;
  private char triggerType;
  private Short telescopeId;
  private Date beginTime;
  private Date endTime;
  private char executeStatus;
  private char processResult;
  private String comment;
  private String objName;
  private Long soId;
  private Integer autoLoop;
  private Float limitMag;

  public FollowUpObservation() {
  }

  @GenericGenerator(name = "generator", strategy = "seqhilo", parameters = {
    @Parameter(name = "max_lo", value = "49"),
    @Parameter(name = "sequence", value = "fo_id_seq")})
  @Id
  @GeneratedValue(generator = "generator")
  @Column(name = "fo_id", unique = true, nullable = false)
  public long getFoId() {
    return this.foId;
  }

  public void setFoId(long foId) {
    this.foId = foId;
  }

  @Column(name = "fo_name", length = 20)
  public String getFoName() {
    return this.foName;
  }

  public void setFoName(String foName) {
    this.foName = foName;
  }

  @Column(name = "ot_id")
  public Long getOtId() {
    return this.otId;
  }

  public void setOtId(Long otId) {
    this.otId = otId;
  }

  @Column(name = "user_id")
  public Integer getUserId() {
    return this.userId;
  }

  public void setUserId(Integer userId) {
    this.userId = userId;
  }

  @Column(name = "ra", precision = 8, scale = 8)
  public Float getRa() {
    return this.ra;
  }

  public void setRa(Float ra) {
    this.ra = ra;
  }

  @Column(name = "dec", precision = 8, scale = 8)
  public Float getDec() {
    return this.dec;
  }

  public void setDec(Float dec) {
    this.dec = dec;
  }

  @Column(name = "epoch", length = 10)
  public String getEpoch() {
    return this.epoch;
  }

  public void setEpoch(String epoch) {
    this.epoch = epoch;
  }

  @Column(name = "image_type", length = 10)
  public String getImageType() {
    return this.imageType;
  }

  public void setImageType(String imageType) {
    this.imageType = imageType;
  }

  @Column(name = "expose_duration")
  public Short getExposeDuration() {
    return this.exposeDuration;
  }

  public void setExposeDuration(Short exposeDuration) {
    this.exposeDuration = exposeDuration;
  }

  @Column(name = "frame_count")
  public Short getFrameCount() {
    return this.frameCount;
  }

  public void setFrameCount(Short frameCount) {
    this.frameCount = frameCount;
  }

  @Column(name = "filter")
  public String getFilter() {
    return this.filter;
  }

  public void setFilter(String filter) {
    this.filter = filter;
  }

  @Column(name = "priority")
  public Short getPriority() {
    return this.priority;
  }

  public void setPriority(Short priority) {
    this.priority = priority;
  }

  @Temporal(TemporalType.TIMESTAMP)
  @Column(name = "trigger_time", length = 29)
  public Date getTriggerTime() {
    return this.triggerTime;
  }

  public void setTriggerTime(Date triggerTime) {
    this.triggerTime = triggerTime;
  }

  @Column(name = "back_image_count")
  public Integer getBackImageCount() {
    return this.backImageCount;
  }

  public void setBackImageCount(Integer backImageCount) {
    this.backImageCount = backImageCount;
  }

  @Column(name = "fo_parm_file")
  public String getFoParmFile() {
    return this.foParmFile;
  }

  public void setFoParmFile(String foParmFile) {
    this.foParmFile = foParmFile;
  }

  @Column(name = "fo_obj_count")
  public Short getFoObjCount() {
    return this.foObjCount;
  }

  public void setFoObjCount(Short foObjCount) {
    this.foObjCount = foObjCount;
  }

  @Column(name = "trigger_type", length = 1)
  public char getTriggerType() {
    return this.triggerType;
  }

  public void setTriggerType(char triggerType) {
    this.triggerType = triggerType;
  }

  /**
   * @return the telescopeId
   */
  @Column(name = "telescope_id")
  public Short getTelescopeId() {
    return telescopeId;
  }

  /**
   * @param telescopeId the telescopeId to set
   */
  public void setTelescopeId(Short telescopeId) {
    this.telescopeId = telescopeId;
  }

  /**
   * @return the beginTime
   */
  @Temporal(TemporalType.TIMESTAMP)
  @Column(name = "begin_time", length = 29)
  public Date getBeginTime() {
    return beginTime;
  }

  /**
   * @param beginTime the beginTime to set
   */
  public void setBeginTime(Date beginTime) {
    this.beginTime = beginTime;
  }

  /**
   * @return the endTime
   */
  @Temporal(TemporalType.TIMESTAMP)
  @Column(name = "end_time", length = 29)
  public Date getEndTime() {
    return endTime;
  }

  /**
   * @param endTime the endTime to set
   */
  public void setEndTime(Date endTime) {
    this.endTime = endTime;
  }

  /**
   * @return the executeStatus
   */
  @Column(name = "execute_status")
  public char getExecuteStatus() {
    return executeStatus;
  }

  /**
   * @param executeStatus the executeStatus to set
   */
  public void setExecuteStatus(char executeStatus) {
    this.executeStatus = executeStatus;
  }

  /**
   * @return the processResult
   */
  @Column(name = "process_result")
  public char getProcessResult() {
    return processResult;
  }

  /**
   * @param processResult the processResult to set
   */
  public void setProcessResult(char processResult) {
    this.processResult = processResult;
  }

  /**
   * @return the comment
   */
  @Column(name = "comment")
  public String getComment() {
    return comment;
  }

  /**
   * @param comment the comment to set
   */
  public void setComment(String comment) {
    this.comment = comment;
  }

  /**
   * @return the objName
   */
  @Column(name = "obj_name")
  public String getObjName() {
    return objName;
  }

  /**
   * @param objName the objName to set
   */
  public void setObjName(String objName) {
    this.objName = objName;
  }

  /**
   * @return the soId
   */
  @Column(name = "so_id")
  public Long getSoId() {
    return soId;
  }

  /**
   * @param soId the soId to set
   */
  public void setSoId(Long soId) {
    this.soId = soId;
  }

  @Column(name = "auto_loop")
  public Integer getAutoLoop() {
    return this.autoLoop;
  }

  public void setAutoLoop(Integer autoLoop) {
    this.autoLoop = autoLoop;
  }

  @Column(name = "limit_mag")
  public Float getLimitMag() {
    return this.limitMag;
  }

  public void setLimitMag(Float limitMag) {
    this.limitMag = limitMag;
  }
}
