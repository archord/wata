package com.gwac.model;
// Generated 2015-10-2 9:40:37 by Hibernate Tools 3.6.0


import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Grb generated by hbm2java
 */
@Entity
@Table(name="grb"
    ,schema="public"
)
public class Grb  implements java.io.Serializable {


     private long grbId;
     private String grbName;
     private Date triggerTime;
     private String triggerType;
     private String triggerName;
     private Float triggerRa;
     private Float triggerDec;

    public Grb() {
    }

	
    public Grb(long grbId) {
        this.grbId = grbId;
    }
    public Grb(long grbId, String grbName, Date triggerTime, String triggerType, String triggerName, Float triggerRa, Float triggerDec) {
       this.grbId = grbId;
       this.grbName = grbName;
       this.triggerTime = triggerTime;
       this.triggerType = triggerType;
       this.triggerName = triggerName;
       this.triggerRa = triggerRa;
       this.triggerDec = triggerDec;
    }
   
     @Id 

    
    @Column(name="grb_id", unique=true, nullable=false)
    public long getGrbId() {
        return this.grbId;
    }
    
    public void setGrbId(long grbId) {
        this.grbId = grbId;
    }

    
    @Column(name="grb_name")
    public String getGrbName() {
        return this.grbName;
    }
    
    public void setGrbName(String grbName) {
        this.grbName = grbName;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="trigger_time", length=29)
    public Date getTriggerTime() {
        return this.triggerTime;
    }
    
    public void setTriggerTime(Date triggerTime) {
        this.triggerTime = triggerTime;
    }

    
    @Column(name="trigger_type")
    public String getTriggerType() {
        return this.triggerType;
    }
    
    public void setTriggerType(String triggerType) {
        this.triggerType = triggerType;
    }

    
    @Column(name="trigger_name")
    public String getTriggerName() {
        return this.triggerName;
    }
    
    public void setTriggerName(String triggerName) {
        this.triggerName = triggerName;
    }

    
    @Column(name="trigger_ra", precision=8, scale=8)
    public Float getTriggerRa() {
        return this.triggerRa;
    }
    
    public void setTriggerRa(Float triggerRa) {
        this.triggerRa = triggerRa;
    }

    
    @Column(name="trigger_dec", precision=8, scale=8)
    public Float getTriggerDec() {
        return this.triggerDec;
    }
    
    public void setTriggerDec(Float triggerDec) {
        this.triggerDec = triggerDec;
    }




}


