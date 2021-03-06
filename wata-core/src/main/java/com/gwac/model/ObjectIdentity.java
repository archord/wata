package com.gwac.model;
// Generated 2017-1-10 20:46:20 by Hibernate Tools 3.6.0


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
 * ObjectIdentity generated by hbm2java
 */
@Entity
@Table(name="object_identity"
    ,schema="public"
)
public class ObjectIdentity  implements java.io.Serializable {


     private int objId;
     private String objName;
     private String objManfacturer;
     private String objModel;
     private String objSn;
     private String objMac;
     private String objIp;
     private String objPort;
     private Short objTypeId;
     private Short objTypeIdInner;
     private Short obsSiteId;
     private Short objGroupId;
     private Short objUnitId;
     private Short objUnitIdInner;
     private Short objArrayId;
     private Short objArayIdInner;
     private Short adminUserId;
     private Boolean isNetDev;
     private Boolean isOnline;
     private Date lastOnlineTime;
     private String objCfgFile;
     private String comment;
     private Short sysKwId;

    public ObjectIdentity() {
    }

	
    public ObjectIdentity(int objId) {
        this.objId = objId;
    }
    public ObjectIdentity(int objId, String objName, String objManfacturer, String objModel, String objSn, String objMac, String objIp, String objPort, Short objTypeId, Short objTypeIdInner, Short obsSiteId, Short objGroupId, Short objUnitId, Short objUnitIdInner, Short objArrayId, Short objArayIdInner, Short adminUserId, Boolean isNetDev, Boolean isOnline, Date lastOnlineTime, String objCfgFile, String comment, Short sysKwId) {
       this.objId = objId;
       this.objName = objName;
       this.objManfacturer = objManfacturer;
       this.objModel = objModel;
       this.objSn = objSn;
       this.objMac = objMac;
       this.objIp = objIp;
       this.objPort = objPort;
       this.objTypeId = objTypeId;
       this.objTypeIdInner = objTypeIdInner;
       this.obsSiteId = obsSiteId;
       this.objGroupId = objGroupId;
       this.objUnitId = objUnitId;
       this.objUnitIdInner = objUnitIdInner;
       this.objArrayId = objArrayId;
       this.objArayIdInner = objArayIdInner;
       this.adminUserId = adminUserId;
       this.isNetDev = isNetDev;
       this.isOnline = isOnline;
       this.lastOnlineTime = lastOnlineTime;
       this.objCfgFile = objCfgFile;
       this.comment = comment;
       this.sysKwId = sysKwId;
    }
   
  @GenericGenerator(name = "generator", strategy = "seqhilo", parameters = {
    @Parameter(name = "max_lo", value = "49"),
    @Parameter(name = "sequence", value = "obj_id_seq")})
  @Id
  @GeneratedValue(generator = "generator")
  @Column(name = "obj_id", unique = true, nullable = false)
    public int getObjId() {
        return this.objId;
    }
    
    public void setObjId(int objId) {
        this.objId = objId;
    }

    
    @Column(name="obj_name", length=128)
    public String getObjName() {
        return this.objName;
    }
    
    public void setObjName(String objName) {
        this.objName = objName;
    }

    
    @Column(name="obj_manfacturer", length=128)
    public String getObjManfacturer() {
        return this.objManfacturer;
    }
    
    public void setObjManfacturer(String objManfacturer) {
        this.objManfacturer = objManfacturer;
    }

    
    @Column(name="obj_model", length=128)
    public String getObjModel() {
        return this.objModel;
    }
    
    public void setObjModel(String objModel) {
        this.objModel = objModel;
    }

    
    @Column(name="obj_sn", length=128)
    public String getObjSn() {
        return this.objSn;
    }
    
    public void setObjSn(String objSn) {
        this.objSn = objSn;
    }

    
    @Column(name="obj_mac", length=128)
    public String getObjMac() {
        return this.objMac;
    }
    
    public void setObjMac(String objMac) {
        this.objMac = objMac;
    }

    
    @Column(name="obj_ip", length=128)
    public String getObjIp() {
        return this.objIp;
    }
    
    public void setObjIp(String objIp) {
        this.objIp = objIp;
    }

    
    @Column(name="obj_port", length=128)
    public String getObjPort() {
        return this.objPort;
    }
    
    public void setObjPort(String objPort) {
        this.objPort = objPort;
    }

    
    @Column(name="obj_type_id")
    public Short getObjTypeId() {
        return this.objTypeId;
    }
    
    public void setObjTypeId(Short objTypeId) {
        this.objTypeId = objTypeId;
    }

    
    @Column(name="obj_type_id_inner")
    public Short getObjTypeIdInner() {
        return this.objTypeIdInner;
    }
    
    public void setObjTypeIdInner(Short objTypeIdInner) {
        this.objTypeIdInner = objTypeIdInner;
    }

    
    @Column(name="obs_site_id")
    public Short getObsSiteId() {
        return this.obsSiteId;
    }
    
    public void setObsSiteId(Short obsSiteId) {
        this.obsSiteId = obsSiteId;
    }

    
    @Column(name="obj_group_id")
    public Short getObjGroupId() {
        return this.objGroupId;
    }
    
    public void setObjGroupId(Short objGroupId) {
        this.objGroupId = objGroupId;
    }

    
    @Column(name="obj_unit_id")
    public Short getObjUnitId() {
        return this.objUnitId;
    }
    
    public void setObjUnitId(Short objUnitId) {
        this.objUnitId = objUnitId;
    }

    
    @Column(name="obj_unit_id_inner")
    public Short getObjUnitIdInner() {
        return this.objUnitIdInner;
    }
    
    public void setObjUnitIdInner(Short objUnitIdInner) {
        this.objUnitIdInner = objUnitIdInner;
    }

    
    @Column(name="obj_array_id")
    public Short getObjArrayId() {
        return this.objArrayId;
    }
    
    public void setObjArrayId(Short objArrayId) {
        this.objArrayId = objArrayId;
    }

    
    @Column(name="obj_aray_id_inner")
    public Short getObjArayIdInner() {
        return this.objArayIdInner;
    }
    
    public void setObjArayIdInner(Short objArayIdInner) {
        this.objArayIdInner = objArayIdInner;
    }

    
    @Column(name="admin_user_id")
    public Short getAdminUserId() {
        return this.adminUserId;
    }
    
    public void setAdminUserId(Short adminUserId) {
        this.adminUserId = adminUserId;
    }

    
    @Column(name="is_net_dev")
    public Boolean getIsNetDev() {
        return this.isNetDev;
    }
    
    public void setIsNetDev(Boolean isNetDev) {
        this.isNetDev = isNetDev;
    }

    
    @Column(name="is_online")
    public Boolean getIsOnline() {
        return this.isOnline;
    }
    
    public void setIsOnline(Boolean isOnline) {
        this.isOnline = isOnline;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="last_online_time", length=29)
    public Date getLastOnlineTime() {
        return this.lastOnlineTime;
    }
    
    public void setLastOnlineTime(Date lastOnlineTime) {
        this.lastOnlineTime = lastOnlineTime;
    }

    
    @Column(name="obj_cfg_file", length=256)
    public String getObjCfgFile() {
        return this.objCfgFile;
    }
    
    public void setObjCfgFile(String objCfgFile) {
        this.objCfgFile = objCfgFile;
    }

    
    @Column(name="comment", length=1024)
    public String getComment() {
        return this.comment;
    }
    
    public void setComment(String comment) {
        this.comment = comment;
    }

    
    @Column(name="sys_kw_id")
    public Short getSysKwId() {
        return this.sysKwId;
    }
    
    public void setSysKwId(Short sysKwId) {
        this.sysKwId = sysKwId;
    }




}


