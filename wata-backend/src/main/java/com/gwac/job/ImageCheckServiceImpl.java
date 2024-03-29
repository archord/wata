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
      String rootPath = "/data/wata_data/yuntu/allsky/Session1";
      File file = new File(rootPath);
      String[] fileNames = file.list();
      String latestFileName = "";  //DSC_2019-11-07__12-32-32.jpg 20191112130242.jpg
      for (String fileName : fileNames) {
	if (fileName.length()==18) {
	  if (latestFileName.length() == 0) {
	    latestFileName = fileName;
	  } else {
	    if (latestFileName.compareTo(fileName) < 0) {
	      latestFileName = fileName;
	    }
	  }
	}
      }
      if(latestFileName.length()==18){
	String dateStr = latestFileName.substring(0, 14);
	Date td = CommonFunction.stringToDate(dateStr, "yyyyMMddHHmmss");
	SystemParameter sp = new SystemParameter();
	sp.setSpId(0);
	sp.setLatestClouldImage(latestFileName);
	sp.setLatestClouldImageTime(td);
	sysParmDao.updateYuntu(sp);
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
      String rootPath = "/data/wata_data/yuntu/allsky/SQMReadings.txt";
      File tfile = new File(rootPath);
      if (!tfile.exists()) {
	log.error("file not exist " + tfile);
      }
      BufferedReader br = new BufferedReader(new FileReader(tfile));
      String line = "";
      String splitBy = ",";
      int lineNum = 0;

      StringBuilder sb = new StringBuilder();
      sb.append("[");
      while ((line = br.readLine()) != null) {
	lineNum++;
	if (lineNum <= 2) {
	  continue;
	}
	String[] strs = line.split(splitBy);
	sb.append("{dateStr:\"");
	sb.append(strs[0]);
	sb.append(" ");
	sb.append(strs[1]);
	sb.append("\",mag:");
	sb.append(strs[2]);
	sb.append("},");
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
