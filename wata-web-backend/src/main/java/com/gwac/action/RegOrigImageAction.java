/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.action;

/**
 *
 * @author xy
 */
import com.gwac.activemq.RegOrigImageMessageCreator;
import com.gwac.util.CommonFunction;
import com.opensymphony.xwork2.ActionSupport;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.jms.Destination;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.io.FileUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.interceptor.ApplicationAware;
import org.springframework.jms.JmsException;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.jms.core.MessageCreator;

/**
 * from MultipleCommonFileUploadAction
 *
 * @author xy
 */
public class RegOrigImageAction extends ActionSupport implements ApplicationAware {

  private static final Log log = LogFactory.getLog(RegOrigImageAction.class);

  private String groupId;
  private String unitId;
  private String camId;
  private String gridId;
  private String fieldId;
  private String imgName;
  private String imgPath;
  private String genTime; //yyyyMMddHHmmss
  private String microSecond;

  private List<File> fileUpload = new ArrayList<>();
  private List<String> fileUploadContentType = new ArrayList<>();
  private List<String> fileUploadFileName = new ArrayList<>();

  @Resource
  private JmsTemplate jmsTemplate;
  @Resource(name = "regOrigImageDest")
  private Destination msgDest;

  private Map<String, Object> appMap = null;
  private String dateStr = null;

  private String echo = "";

  @Action(value = "regOrigImg")
  public void upload() {

    echo = "";

    try {
      // || genTime.length() != "yyyy-MM-ddTHH:mm:ss.SSSSSS".length()
      if (camId == null || camId.isEmpty() || imgName == null || imgName.isEmpty()
	      || imgPath == null || imgPath.isEmpty() || genTime == null || genTime.isEmpty()) {
//      echo = "all parameter cannot be empty, and genTime must formated as 'yyyy-MM-ddTHH:mm:ss.SSSSSS'.";
	echo = "all parameter cannot be empty.";
	log.warn(echo);
	log.warn("camId:" + camId + ", imgName:" + imgName + ", imgPath:" + imgPath + ", genTime:" + genTime + ", microSecond:" + microSecond);
      } else {
	initObjType();

	String rootPath = getText("gwacDataRootDirectory");
	String origFitsDir = getText("gwacOrigFits");
	String dateStr = genTime.substring(0, 8);
	if (rootPath.charAt(rootPath.length() - 1) != '/') {
	  rootPath += "/";
	}
	String storePath = rootPath + origFitsDir + "/" + dateStr + "/G" + camId;

	int i = 0;
	for (File file : fileUpload) {
	  String tfilename = fileUploadFileName.get(i++).trim();
	  if (tfilename.isEmpty()) {
	    continue;
	  }
	  log.debug("receive file " + tfilename);
	  File destFile = new File(storePath, tfilename);
	  //如果存在，必须删除，否则FileUtils.moveFile报错FileExistsException
	  try {
	    if (destFile.exists()) {
	      log.warn(destFile + " already exist, delete it.");
	      FileUtils.forceDelete(destFile);
	    }
	    FileUtils.moveFile(file, destFile);
	  } catch (IOException ex) {
	    log.error("delete or move file errror ", ex);
	  }
	}
	Thread.sleep(1000);
	
	MessageCreator tmc = new RegOrigImageMessageCreator(groupId, unitId, camId, gridId, fieldId, imgName, storePath, genTime, microSecond, dateStr);
	jmsTemplate.send(msgDest, tmc);
	echo = "register image success.";
	log.debug(echo);
      }

    } catch (JmsException ex) {
      echo="Reg orig image error";
      log.error("send message error", ex);
    } catch (Exception ex) {
      echo="Reg orig image error";
      log.error("reg fits image error", ex);
    }

    sendResultMsg(echo);
  }

  public void sendResultMsg(String msg) {

    HttpServletResponse response = ServletActionContext.getResponse();
    response.setContentType("text/html;charset=UTF-8");
    PrintWriter out;
    try {
      out = response.getWriter();
      out.print(msg);
    } catch (IOException ex) {
      log.error("response error: ", ex);
    }
  }

  public void initObjType() {
    dateStr = (String) appMap.get("datestr");
    if (null == dateStr) {
      dateStr = CommonFunction.getUniqueDateStr();
      appMap.put("datestr", dateStr);
    }
  }

  /**
   * @return the echo
   */
  public String getEcho() {
    return echo;
  }

  /**
   * @param groupId the groupId to set
   */
  public void setGroupId(String groupId) {
    this.groupId = groupId;
  }

  /**
   * @param unitId the unitId to set
   */
  public void setUnitId(String unitId) {
    this.unitId = unitId;
  }

  /**
   * @param camId the camId to set
   */
  public void setCamId(String camId) {
    this.camId = camId;
  }

  /**
   * @param gridId the gridId to set
   */
  public void setGridId(String gridId) {
    this.gridId = gridId;
  }

  /**
   * @param fieldId the fieldId to set
   */
  public void setFieldId(String fieldId) {
    this.fieldId = fieldId;
  }

  /**
   * @param imgName the imgName to set
   */
  public void setImgName(String imgName) {
    this.imgName = imgName;
  }

  /**
   * @param imgPath the imgPath to set
   */
  public void setImgPath(String imgPath) {
    this.imgPath = imgPath;
  }

  /**
   * @param genTime the genTime to set
   */
  public void setGenTime(String genTime) {
    this.genTime = genTime;
  }

  @Override
  public void setApplication(Map<String, Object> map) {
    this.appMap = map;
  }

  /**
   * @param microSecond the microSecond to set
   */
  public void setMicroSecond(String microSecond) {
    this.microSecond = microSecond;
  }

  /**
   * @param fileUpload the fileUpload to set
   */
  public void setFileUpload(List<File> fileUpload) {
    this.fileUpload = fileUpload;
  }

  /**
   * @param fileUploadContentType the fileUploadContentType to set
   */
  public void setFileUploadContentType(List<String> fileUploadContentType) {
    this.fileUploadContentType = fileUploadContentType;
  }

  /**
   * @param fileUploadFileName the fileUploadFileName to set
   */
  public void setFileUploadFileName(List<String> fileUploadFileName) {
    this.fileUploadFileName = fileUploadFileName;
  }

}
