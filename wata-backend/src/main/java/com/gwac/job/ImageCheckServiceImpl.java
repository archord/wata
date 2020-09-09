/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.job;

import com.gwac.dao.FitsFile2DAO;
import com.gwac.dao.SystemParameterDao;
import com.gwac.model.SystemParameter;
import com.gwac.util.CommonFunction;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import javax.annotation.Resource;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

/**
 * 数据转移，清空需要频繁查询的表，这些表只存储当天的最新数据，之后将表中数据移动到历史表
 *
 * @author xy
 */
@Service(value = "imageCheckService")
public class ImageCheckServiceImpl implements BaseService {

  private static final Log log = LogFactory.getLog(ImageCheckServiceImpl.class);
  private static boolean running = true;

  @Value("#{syscfg.gwacServerBeijing}")
  private Boolean isBeiJingServer;
  @Value("#{syscfg.gwacServerTest}")
  private Boolean isTestServer;

  @Resource
  private FitsFile2DAO ff2Dao;
  @Resource
  private SystemParameterDao sysParmDao;

  @Override
  public void startJob() {

    if (isTestServer) {
      return;
    }

    if (running == true) {
      log.debug("start job...");
      running = false;
    } else {
      log.warn("job is running, jump this scheduler.");
      return;
    }

    long startTime = System.nanoTime();
    try {//JDBCConnectionException or some other exception
      getLatestYuntu();
      parseNightMag();
    } catch (Exception ex) {
      log.error("Job error", ex);
    } finally {
      if (running == false) {
	running = true;
      }
    }
    long endTime = System.nanoTime();
    log.debug("job consume " + 1.0 * (endTime - startTime) / 1e9 + " seconds.");
  }

  void getLatestYuntu() {
    try {
      String rootPath = "/data/wata_data/yuntu";
      File file = new File(rootPath);
      String[] fileNames = file.list();
      String latestFileName = "";
      String tmpName = "2020-09-09T11:32:33.jpg";
      
      ArrayList tlist = new ArrayList();
      for (String fileName : fileNames) {
	tlist.add(fileName);
	if (fileName.length() == tmpName.length()) {
	  if (latestFileName.length() == 0) {
	    latestFileName = fileName;
	  } else {
	    if (latestFileName.compareTo(fileName) < 0) {
	      latestFileName = fileName;
	    }
	  }
	}
      }
      
      if (latestFileName.length() == tmpName.length()) {
	String dateStr = latestFileName.replace("T", " ");
	Date td = CommonFunction.stringToDate(dateStr, "yyyy-MM-dd HH:mm:ss");
	SystemParameter sp = new SystemParameter();
	sp.setSpId(0);
	sp.setLatestClouldImage(latestFileName);
	sp.setLatestClouldImageTime(td);
	sysParmDao.updateYuntu(sp);
      }
     
      Collections.sort(tlist);
      for (int i=0; i<tlist.size()-10080; i++) { //按一分钟一幅图，保留最近一周的云图
	String tpath = rootPath + "/" + tlist.get(i);
	File tfile = new File(tpath); 
	tfile.delete();
      }
      
    } catch (Exception ex) {
      log.error("Job error", ex);
    }
  }

  void getLatestYuntu2() {
    try {
      String rootPath = "/data/wata_data/yuntu/allsky/Session1";
      File file = new File(rootPath);
      String[] fileNames = file.list();
      String latestFileName = "";  //DSC_2019-11-07__12-32-32.jpg
      for (String fileName : fileNames) {
	if (fileName.startsWith("DSC")) {
	  if (latestFileName.length() == 0) {
	    latestFileName = fileName;
	  } else {
	    if (latestFileName.compareTo(fileName) < 0) {
	      latestFileName = fileName;
	    }
	  }
	}
      }
      String dateStr = latestFileName.substring(4, 24).replace("__", " ");
      Date td = CommonFunction.stringToDate(dateStr, "yyyy-MM-dd HH-mm-ss");
      SystemParameter sp = new SystemParameter();
      sp.setSpId(0);
      sp.setLatestClouldImage(latestFileName);
      sp.setLatestClouldImageTime(td);
      sysParmDao.updateYuntu(sp);

    } catch (Exception ex) {
      log.error("Job error", ex);
    }
  }

  void parseNightMag() {
    try {
      String rootPath = "/data/wata_data/skylight/skylight.txt";
      File tfile = new File(rootPath);
      if (!tfile.exists()) {
	log.error("file not exist " + tfile);
      }
      BufferedReader br = new BufferedReader(new FileReader(tfile));
      String line = "";
      String splitBy = " ";

      StringBuilder sb = new StringBuilder();
      sb.append("[");
      while ((line = br.readLine()) != null) {
	String[] strs = line.split(splitBy);
	if (strs.length == 2) {
	  sb.append("{dateStr:\"");
	  sb.append(strs[0].replace("T", " "));
	  sb.append("\",mag:");
	  sb.append(strs[1]);
	  sb.append("},");
	}
      }
      sb.append("]");
      String savePath = "/data/wata_data/realTimeOtDistribution/nightMag.json";
      FileOutputStream fileOutputStream = new FileOutputStream(savePath, false);
      OutputStreamWriter outputStreamWriter = new OutputStreamWriter(fileOutputStream, "UTF-8");
      BufferedWriter out = new BufferedWriter(outputStreamWriter);
      out.write(sb.toString());
      out.flush();
      out.close();
    } catch (FileNotFoundException e) {
      log.error(e);
    } catch (Exception e) {
      log.error(e);
    }
  }
}
