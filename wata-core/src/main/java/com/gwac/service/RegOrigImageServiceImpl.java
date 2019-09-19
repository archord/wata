/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.service;

import com.gwac.dao.CameraDao;
import com.gwac.dao.FileNumberDao;
import com.gwac.dao.FitsFile2DAO;
import com.gwac.dao.MountDao;
import com.gwac.dao.ObservationSkyDao;
import com.gwac.model.FileNumber;
import com.gwac.model.FitsFile2;
import com.gwac.model.ObservationSky;
import com.gwac.util.CommonFunction;
import java.util.Date;
import javax.annotation.Resource;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;
import com.gwac.model.Camera;
import com.gwac.model.Mount;

/**
 *
 * @author xy
 */
@Service(value = "regOrigImageServiceImpl")
public final class RegOrigImageServiceImpl implements RegOrigImageService {

  private static final Log log = LogFactory.getLog(RegOrigImageServiceImpl.class);

  @Resource
  private ObservationSkyDao obsSkyDao;
  @Resource
  private CameraDao cameraDao;
  @Resource
  private FitsFile2DAO ff2Dao;
  @Resource
  private FileNumberDao fnumDao;
  @Resource
  private MountDao mountDao;

  public RegOrigImageServiceImpl() {
  }

  @Override
  public void updateSystemStatus(String groupId, String unitId, String camId,
          String gridId, String fieldId, String imgName, String imgPath, String genTime, String microSecond, String dateStr) {

    boolean isExist = ff2Dao.exist(imgName);
    Camera tcamera = cameraDao.getByName(camId);
    if (isExist) {
      log.warn(imgName + " already exist.");
    } else if (tcamera == null) {
      log.error("can not find cameraId: " + camId);
    } else {

      String tDateFormate = "yyyy-MM-dd HH:mm:ss";
      Date ffDate = CommonFunction.stringToDate(genTime, tDateFormate);

      FitsFile2 ff2 = new FitsFile2();
      ff2.setCamId(tcamera.getCameraId());
      ff2.setGenTime(ffDate);
      ff2.setImgName(imgName);
      ff2.setImgPath(imgPath);
      ff2.setTimeSubSecond(Integer.parseInt(microSecond));
      
      FileNumber fnum = new FileNumber();
      fnum.setCamId(tcamera.getCameraId());
      fnum.setDateStr(dateStr);
      int ffNumber = fnumDao.getNextNumber(fnum);
      ff2.setFfNumber(ffNumber);

      tcamera.setCurProcessNumber(ffNumber);
      cameraDao.updateCurProcessNumber(tcamera);
	
      ff2Dao.save(ff2);

      log.debug("register " + imgName + " success.");
    }
  }

}
