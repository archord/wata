/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.model4;

import com.gwac.util.CommonFunction;
import java.util.Arrays;
import java.util.List;

/**
 *
 * @author xy
 */
public class OtLevel2QueryParameter {

  private String startDate;
  private String endDate;
  private float xtemp;
  private float ytemp;
  private float planeRadius;
  private float ra;
  private float dec;
  private float sphereRadius;
  private Boolean queryHis;
  /**
   * 查询结果集的大小，从start开始，查询size条记录
   */
  private int start;
  private int length;
  private String otName;
  private List<String> processType;
  private List<String> telscope;
  private List<String> isMatch;
  private List<String> matchType;
  private List<String> otType;
  private List<String> lookBackResult;
  private List<String> followUpResult;
  private List<String> lookBackCnn;

  @Override
  public String toString() {
    return "startDate=" + startDate + ", endDate=" + endDate + ", xtemp=" + xtemp
            + ", ytemp=" + ytemp + ", planeRadius=" + planeRadius + ", ra=" + ra
            + ", dec=" + dec + ", sphereRadius=" + sphereRadius + ", telscope="
            + telscope + ", queryHis=" + queryHis + ", processType=" + processType
            + ", isMatch=" + isMatch + ", otName=" + otName
            + ", matchType=" + matchType + ", otType=" + otType 
            + ", lookBackResult=" + lookBackResult + ", followUpResult=" + getFollowUpResult()
            + ", lookBackCnn=" + lookBackCnn
            + ", start=" + start + ", length=" + length;
  }

  public void removeEmpty() {
    List<String> emptyStr = Arrays.asList("", null);
    if (processType != null) {
      processType.removeAll(emptyStr);
    }
    if (telscope != null) {
      telscope.removeAll(emptyStr);
    }
    if (isMatch != null) {
      isMatch.removeAll(emptyStr);
    }
    if (matchType != null) {
      matchType.removeAll(emptyStr);
    }
    if (otType != null) {
      otType.removeAll(emptyStr);
    }
    if (lookBackResult != null) {
      lookBackResult.removeAll(emptyStr);
    }
    if (lookBackCnn != null) {
      lookBackCnn.removeAll(emptyStr);
    }
    if (getFollowUpResult() != null) {
      getFollowUpResult().removeAll(emptyStr);
    }
  }

  public Boolean isEmpty() {

    if (startDate.isEmpty() && endDate.isEmpty() && telscope.isEmpty()
            && Math.abs(planeRadius) < CommonFunction.MINFLOAT
            && Math.abs(sphereRadius) < CommonFunction.MINFLOAT) {
      return true;
    } else {
      return false;
    }
  }

  /**
   * @return the startDate
   */
  public String getStartDate() {
    return startDate;
  }

  /**
   * @param startDate the startDate to set
   */
  public void setStartDate(String startDate) {
    this.startDate = startDate;
  }

  /**
   * @return the endDate
   */
  public String getEndDate() {
    return endDate;
  }

  /**
   * @param endDate the endDate to set
   */
  public void setEndDate(String endDate) {
    this.endDate = endDate;
  }

  /**
   * @return the xtemp
   */
  public float getXtemp() {
    return xtemp;
  }

  /**
   * @param xtemp the xtemp to set
   */
  public void setXtemp(float xtemp) {
    this.xtemp = xtemp;
  }

  /**
   * @return the ytemp
   */
  public float getYtemp() {
    return ytemp;
  }

  /**
   * @param ytemp the ytemp to set
   */
  public void setYtemp(float ytemp) {
    this.ytemp = ytemp;
  }

  /**
   * @return the planeRadius
   */
  public float getPlaneRadius() {
    return planeRadius;
  }

  /**
   * @param planeRadius the planeRadius to set
   */
  public void setPlaneRadius(float planeRadius) {
    this.planeRadius = planeRadius;
  }

  /**
   * @return the ra
   */
  public float getRa() {
    return ra;
  }

  /**
   * @param ra the ra to set
   */
  public void setRa(float ra) {
    this.ra = ra;
  }

  /**
   * @return the dec
   */
  public float getDec() {
    return dec;
  }

  /**
   * @param dec the dec to set
   */
  public void setDec(float dec) {
    this.dec = dec;
  }

  /**
   * @return the sphereRadius
   */
  public float getSphereRadius() {
    return sphereRadius;
  }

  /**
   * @param sphereRadius the sphereRadius to set
   */
  public void setSphereRadius(float sphereRadius) {
    this.sphereRadius = sphereRadius;
  }

  /**
   * @return the telscope
   */
  public List<String> getTelscope() {
    return telscope;
  }

  /**
   * @param telscope the telscope to set
   */
  public void setTelscope(List<String> telscope) {
    this.telscope = telscope;
  }

  /**
   * @return the start
   */
  public int getStart() {
    return start;
  }

  /**
   * @param start the start to set
   */
  public void setStart(int start) {
    this.start = start;
  }


  /**
   * @return the queryHis
   */
  public Boolean getQueryHis() {
    return queryHis;
  }

  /**
   * @param queryHis the queryHis to set
   */
  public void setQueryHis(Boolean queryHis) {
    this.queryHis = queryHis;
  }

  /**
   * @return the processType
   */
  public List<String> getProcessType() {
    return processType;
  }

  /**
   * @param processType the processType to set
   */
  public void setProcessType(List<String> processType) {
    this.processType = processType;
  }

  /**
   * @return the isMatch
   */
  public List<String> getIsMatch() {
    return isMatch;
  }

  /**
   * @param isMatch the isMatch to set
   */
  public void setIsMatch(List<String> isMatch) {
    this.isMatch = isMatch;
  }

  /**
   * @return the otName
   */
  public String getOtName() {
    return otName;
  }

  /**
   * @param otName the otName to set
   */
  public void setOtName(String otName) {
    this.otName = otName;
  }

  /**
   * @return the matchType
   */
  public List<String> getMatchType() {
    return matchType;
  }

  /**
   * @param matchType the matchType to set
   */
  public void setMatchType(List<String> matchType) {
    this.matchType = matchType;
  }

  /**
   * @return the otType
   */
  public List<String> getOtType() {
    return otType;
  }

  /**
   * @param otType the otType to set
   */
  public void setOtType(List<String> otType) {
    this.otType = otType;
  }

  /**
   * @return the lookBackResult
   */
  public List<String> getLookBackResult() {
    return lookBackResult;
  }

  /**
   * @param lookBackResult the lookBackResult to set
   */
  public void setLookBackResult(List<String> lookBackResult) {
    this.lookBackResult = lookBackResult;
  }

  /**
   * @return the followUpResult
   */
  public List<String> getFollowUpResult() {
    return followUpResult;
  }

  /**
   * @param followUpResult the followUpResult to set
   */
  public void setFollowUpResult(List<String> followUpResult) {
    this.followUpResult = followUpResult;
  }

  /**
   * @return the length
   */
  public int getLength() {
    return length;
  }

  /**
   * @param length the length to set
   */
  public void setLength(int length) {
    this.length = length;
  }

  /**
   * @return the lookBackCnn
   */
  public List<String> getLookBackCnn() {
    return lookBackCnn;
  }

  /**
   * @param lookBackCnn the lookBackCnn to set
   */
  public void setLookBackCnn(List<String> lookBackCnn) {
    this.lookBackCnn = lookBackCnn;
  }
}
