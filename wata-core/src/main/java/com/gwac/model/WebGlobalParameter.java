package com.gwac.model;
// Generated 2015-10-2 9:40:37 by Hibernate Tools 3.6.0

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * DataProcessMachine generated by hbm2java
 */
@Entity
@Table(name = "camera", schema = "public"
)
public class WebGlobalParameter implements java.io.Serializable {

  private String name;
  private String value;

  public WebGlobalParameter() {
  }

  public WebGlobalParameter(String name) {
    this.name = name;
  }

  @Id
  @Column(name = "name", unique = true, nullable = false)
  public String getName() {
    return this.name;
  }

  public void setName(String name) {
    this.name = name;
  }

  /**
   * @return the value
   */
  @Column(name = "value")
  public String getValue() {
    return value;
  }

  /**
   * @param value the value to set
   */
  public void setValue(String value) {
    this.value = value;
  }

}
