/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.job;

import com.gwac.dao.SyncFileDao;
import com.gwac.model.SyncFile;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.List;
import java.util.Properties;
import javax.annotation.Resource;
import org.apache.commons.io.IOUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ContentType;
import org.apache.http.entity.mime.MultipartEntityBuilder;
import org.apache.http.entity.mime.content.FileBody;
import org.apache.http.entity.mime.content.StringBody;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

/**
 * 对监测图像进行同步
 *
 * @author xy
 */
@Service(value = "monitorImageSyncService")
public class MonitorImageSyncServiceImpl implements BaseService {

  private static final Log log = LogFactory.getLog(MonitorImageSyncServiceImpl.class);
  private static boolean running = true;
  
  @Resource
  private SyncFileDao sfDao;
  @Value("#{syscfg.gwacDataRootDirectory}")
  private String rootDir;
  @Value("#{syscfg.gwacDataImgstatusDirectory}")
  private String statusImageLDir;
  @Value("#{syscfg.gwacServerUrlNaoc}")
  private String serverUrl;
  @Value("#{syscfg.gwacServerUploadimageUrl}")
  private String uploadUrl;
  @Value("#{syscfg.gwacServerBeijing}")
  private Boolean isBeiJingServer;
  @Value("#{syscfg.gwacServerTest}")
  private Boolean isTestServer;

  @Override
  public void startJob() {

    if (isBeiJingServer || isTestServer) {
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
      doUploadImage();
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

  public void doUploadImage() {

    try {
      List<SyncFile> objs = sfDao.getUnSyncFile();

      if (!objs.isEmpty()) {
        int fNum = 0;
        MultipartEntityBuilder mpEntity = MultipartEntityBuilder.create();
        for (SyncFile obj : objs) {

          String tpath1 = rootDir + "/" + obj.getPath() + "/" + obj.getFileName();
          File tfile1 = new File(tpath1);
          if (tfile1.exists()) {
            fNum++;
            mpEntity.addPart("filePaths", new StringBody(obj.getPath(), ContentType.TEXT_PLAIN));
            mpEntity.addPart("files", new FileBody(tfile1));
          } else {
            log.warn(tfile1.getAbsolutePath() + " not exist!");
          }
        }

        if (fNum > 0 && doUpload(mpEntity)) {
          log.debug("obj: " + objs.size() + ", add monitor images: " + fNum);
        } else {
          log.debug("cannot find any file.");
        }
      }
    } catch (Exception ex) {
      log.error("upload ffc error:", ex);
    }
  }

  public boolean doUpload(MultipartEntityBuilder mpEntity) {

    boolean flag = false;

    HttpEntity reqEntity = mpEntity.build();
    HttpPost httppost = new HttpPost(serverUrl + uploadUrl);
    httppost.setEntity(reqEntity);

    CloseableHttpClient httpclient = null;
    CloseableHttpResponse response = null;
    try {
      httpclient = HttpClients.createDefault();
      response = httpclient.execute(httppost);
      log.debug(response.getStatusLine());
      HttpEntity resEntity = response.getEntity();
      if (resEntity != null) {
        String rstContent = IOUtils.toString(resEntity.getContent());
        log.debug("response content: " + rstContent);
        if (rstContent.contains("Success")) {
          flag = true;
        }
      }
      EntityUtils.consume(resEntity);
    } catch (IOException ex) {
      log.error("read response error", ex);
    } catch (IllegalStateException ex) {
      log.error("get content error", ex);
    } finally {
      try {
        if (response != null) {
          response.close();
        }
        if (httpclient != null) {
          httpclient.close();
        }
      } catch (IOException ex) {
        log.error("close httpclient error", ex);
      }
    }
    return flag;
  }


  private void syncSyncFile(List<SyncFile> sfs) {

    if (rootDir.charAt(rootDir.length() - 1) != '/') {
      rootDir = (rootDir + "/");
    }

    if (sfs != null && sfs.size() > 0) {

      CloseableHttpClient httpclient = HttpClients.createDefault();
      HttpPost httppost = new HttpPost(serverUrl + uploadUrl);
      MultipartEntityBuilder mpEntity = MultipartEntityBuilder.create();

      for (SyncFile sf : sfs) {

        String sfPath = sf.getPath();
        if (sfPath.charAt(sfPath.length() - 1) != '/') {
          sfPath += "/";
        }

        String tpath = rootDir + sfPath + sf.getFileName().trim();
        File tfile1 = new File(tpath);
        if (tfile1.exists()) {
          mpEntity.addPart("fileUpload", new FileBody(tfile1));
        } else {
          log.warn(tfile1.getAbsolutePath() + " not exist!");
        }
      }

      HttpEntity reqEntity = mpEntity.build();
      httppost.setEntity(reqEntity);
      CloseableHttpResponse response = null;
      try {
        response = httpclient.execute(httppost);
        log.debug(response.getStatusLine());
        HttpEntity resEntity = response.getEntity();
        if (resEntity != null) {
          log.debug("response content: " + IOUtils.toString(resEntity.getContent()));
        }
        EntityUtils.consume(resEntity);
      } catch (IOException ex) {
        log.error("read response error", ex);
      } catch (IllegalStateException ex) {
        log.error("get content error", ex);
      } finally {
        try {
          if (response != null) {
            response.close();
          }
          if (httpclient != null) {
            httpclient.close();
          }
        } catch (IOException ex) {
          log.error("close response or httpclient error", ex);
        }
      }
    }

  }
  
  private void addImage() {

    for (int i = 1; i < 13; i++) {
      String tfilename = "M" + String.format("%02d", i) + "_bgbright.jpg";  //String ccdType = imageName.substring(0, 1); //"M"
      SyncFile tsf = new SyncFile();
      tsf.setFileName(tfilename);
      tsf.setIsSync(false);
      tsf.setIsSyncSuccess(false);
      tsf.setPath("realTimeOtDistribution");
      tsf.setStoreTime(new Date());
      sfDao.save(tsf);

      tfilename = "M" + String.format("%02d", i) + "_ccdimg.jpg";
      tsf = new SyncFile();
      tsf.setFileName(tfilename);
      tsf.setIsSync(false);
      tsf.setIsSyncSuccess(false);
      tsf.setPath("realTimeOtDistribution");
      tsf.setStoreTime(new Date());
      sfDao.save(tsf);

      tfilename = "M" + String.format("%02d", i) + "_diffmag.jpg";
      tsf = new SyncFile();
      tsf.setFileName(tfilename);
      tsf.setIsSync(false);
      tsf.setIsSyncSuccess(false);
      tsf.setPath("realTimeOtDistribution");
      tsf.setStoreTime(new Date());
      sfDao.save(tsf);

      tfilename = "M" + String.format("%02d", i) + "_fwhm.jpg";
      tsf = new SyncFile();
      tsf.setFileName(tfilename);
      tsf.setIsSync(false);
      tsf.setIsSyncSuccess(false);
      tsf.setPath("realTimeOtDistribution");
      tsf.setStoreTime(new Date());
      sfDao.save(tsf);

      tfilename = "M" + String.format("%02d", i) + "_limitmag.jpg";
      tsf = new SyncFile();
      tsf.setFileName(tfilename);
      tsf.setIsSync(false);
      tsf.setIsSyncSuccess(false);
      tsf.setPath("realTimeOtDistribution");
      tsf.setStoreTime(new Date());
      sfDao.save(tsf);

      tfilename = "M" + String.format("%02d", i) + "_objnum.jpg";
      tsf = new SyncFile();
      tsf.setFileName(tfilename);
      tsf.setIsSync(false);
      tsf.setIsSyncSuccess(false);
      tsf.setPath("realTimeOtDistribution");
      tsf.setStoreTime(new Date());
      sfDao.save(tsf);

      tfilename = "M" + String.format("%02d", i) + "_timeneed.jpg";
      tsf = new SyncFile();
      tsf.setFileName(tfilename);
      tsf.setIsSync(false);
      tsf.setIsSyncSuccess(false);
      tsf.setPath("realTimeOtDistribution");
      tsf.setStoreTime(new Date());
      sfDao.save(tsf);

      tfilename = "M" + String.format("%02d", i) + "_track.jpg";
      tsf = new SyncFile();
      tsf.setFileName(tfilename);
      tsf.setIsSync(false);
      tsf.setIsSyncSuccess(false);
      tsf.setPath("realTimeOtDistribution");
      tsf.setStoreTime(new Date());
      sfDao.save(tsf);

      tfilename = "M" + String.format("%02d", i) + "_xyrms.jpg";
      tsf = new SyncFile();
      tsf.setFileName(tfilename);
      tsf.setIsSync(false);
      tsf.setIsSyncSuccess(false);
      tsf.setPath("realTimeOtDistribution");
      tsf.setStoreTime(new Date());
      sfDao.save(tsf);
    }
  }

}
