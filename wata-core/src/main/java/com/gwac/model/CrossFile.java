package com.gwac.model;
// Generated 2015-10-2 9:40:37 by Hibernate Tools 3.6.0

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

/**
 * ConfigFile generated by hbm2java
 */
@Entity
@Table(name = "cross_file", schema = "public"
)
public class CrossFile implements java.io.Serializable {

  private long cfId;
  private String storePath;
  private String fileName;
  private Long ctId;

  public CrossFile() {
  }

  public CrossFile(long cfId) {
    this.cfId = cfId;
  }

  @GenericGenerator(name = "generator", strategy = "seqhilo", parameters = {
    @Parameter(name = "max_lo", value = "49"),
    @Parameter(name = "sequence", value = "cross_f_id_seq")})
  @Id
  @GeneratedValue(generator = "generator")
  @Column(name = "cf_id", unique = true, nullable = false)
  public long getCfId() {
    return this.cfId;
  }

  public void setCfId(long cfId) {
    this.cfId = cfId;
  }

  @Column(name = "store_path")
  public String getStorePath() {
    return this.storePath;
  }

  public void setStorePath(String storePath) {
    this.storePath = storePath;
  }

  @Column(name = "file_name")
  public String getFileName() {
    return this.fileName;
  }

  public void setFileName(String fileName) {
    this.fileName = fileName;
  }

  @Column(name = "ct_id")
  public Long getCtId() {
    return this.ctId;
  }

  public void setCtId(Long ctId) {
    this.ctId = ctId;
  }

}
