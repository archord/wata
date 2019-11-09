/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.job;

import java.io.IOException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

/**
 * 数据转移，清空需要频繁查询的表，这些表只存储当天的最新数据，之后将表中数据移动到历史表
 *
 * @author xy
 */
@Service(value = "stampGenerateService")
public class StampGenerateServiceImpl implements BaseService {

  private static final Log log = LogFactory.getLog(StampGenerateServiceImpl.class);
  private static boolean running = true;

  @Value("#{syscfg.gwacServerBeijing}")
  private Boolean isBeiJingServer;
  @Value("#{syscfg.gwacServerTest}")
  private Boolean isTestServer;

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
      runDaemon();
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

  void runDaemon() {
    String runCmd = "/home/wata/program/anaconda3/envs/imgdiff3/bin/python /home/wata/program/wataBatch/wataDaemon.py";
    try {
	Runtime r = Runtime.getRuntime();
	Process p = r.exec(runCmd);
	try {
	  int result = p.waitFor();
	  if (result != 0) {
	    log.error("runDaemon: " + runCmd + " error!");
	  }
	} catch (InterruptedException ex) {
	  log.error("wataDaemon error!", ex);
	}
    } catch (IOException ex) {
      log.error("runDaemon: " + runCmd + " error!", ex);
    }
  }

}
