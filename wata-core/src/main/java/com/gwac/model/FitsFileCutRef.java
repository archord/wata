package com.gwac.model;
// Generated 2015-10-2 9:40:37 by Hibernate Tools 3.6.0


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
 * FitsFileCutRef generated by hbm2java
 */
@Entity
@Table(name="fits_file_cut_ref"
    ,schema="public"
)
public class FitsFileCutRef  implements java.io.Serializable {


     private long ffcrId;
     private Long otId;
     private String fileName;
     private String storePath;
     private Date generateTime;
     private Float magnitude;
     private Boolean requestCut;
     private Boolean successCut;
     private Long dpmId;
     private Long ffId;
     private Boolean isSync;
     private Boolean isRecvOk;

    public FitsFileCutRef() {
    }

	
    public FitsFileCutRef(long ffcrId) {
        this.ffcrId = ffcrId;
    }
    public FitsFileCutRef(long ffcrId, Long otId, String fileName, String storePath, Date generateTime, Float magnitude, Boolean requestCut, Boolean successCut, Long dpmId, Long ffId) {
       this.ffcrId = ffcrId;
       this.otId = otId;
       this.fileName = fileName;
       this.storePath = storePath;
       this.generateTime = generateTime;
       this.magnitude = magnitude;
       this.requestCut = requestCut;
       this.successCut = successCut;
       this.dpmId = dpmId;
       this.ffId = ffId;
    }
   
  @GenericGenerator(name = "generator", strategy = "seqhilo", parameters = {
    @Parameter(name = "max_lo", value = "49"),
    @Parameter(name = "sequence", value = "ffcr_id_seq")})
     @Id 
  @GeneratedValue(generator = "generator")

  @Column(name = "ffcr_id", unique = true, nullable = false)
    public long getFfcrId() {
        return this.ffcrId;
    }
    
    public void setFfcrId(long ffcrId) {
        this.ffcrId = ffcrId;
    }

    
    @Column(name="ot_id")
    public Long getOtId() {
        return this.otId;
    }
    
    public void setOtId(Long otId) {
        this.otId = otId;
    }

    
    @Column(name="file_name")
    public String getFileName() {
        return this.fileName;
    }
    
    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    
    @Column(name="store_path")
    public String getStorePath() {
        return this.storePath;
    }
    
    public void setStorePath(String storePath) {
        this.storePath = storePath;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="generate_time", length=29)
    public Date getGenerateTime() {
        return this.generateTime;
    }
    
    public void setGenerateTime(Date generateTime) {
        this.generateTime = generateTime;
    }

    
    @Column(name="magnitude", precision=8, scale=8)
    public Float getMagnitude() {
        return this.magnitude;
    }
    
    public void setMagnitude(Float magnitude) {
        this.magnitude = magnitude;
    }

    
    @Column(name="request_cut")
    public Boolean getRequestCut() {
        return this.requestCut;
    }
    
    public void setRequestCut(Boolean requestCut) {
        this.requestCut = requestCut;
    }

    
    @Column(name="success_cut")
    public Boolean getSuccessCut() {
        return this.successCut;
    }
    
    public void setSuccessCut(Boolean successCut) {
        this.successCut = successCut;
    }

    
    @Column(name="dpm_id")
    public Long getDpmId() {
        return this.dpmId;
    }
    
    public void setDpmId(Long dpmId) {
        this.dpmId = dpmId;
    }

    
    @Column(name="ff_id")
    public Long getFfId() {
        return this.ffId;
    }
    
    public void setFfId(Long ffId) {
        this.ffId = ffId;
    }



  /**
   * @return the isSync
   */
    @Column(name="is_sync")
  public Boolean getIsSync() {
    return isSync;
  }

  /**
   * @param isSync the isSync to set
   */
  public void setIsSync(Boolean isSync) {
    this.isSync = isSync;
  }

  /**
   * @return the isRecvOk
   */
    @Column(name="is_recv_ok")
  public Boolean getIsRecvOk() {
    return isRecvOk;
  }

  /**
   * @param isRecvOk the isRecvOk to set
   */
  public void setIsRecvOk(Boolean isRecvOk) {
    this.isRecvOk = isRecvOk;
  }


}


