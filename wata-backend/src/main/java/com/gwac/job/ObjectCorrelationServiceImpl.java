/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.job;

import com.gwac.dao.FitsFile2DAO;
import com.gwac.dao.FitsFileCutDAO;
import com.gwac.dao.MoveObjectDao;
import com.gwac.dao.MoveObjectRecordDao;
import com.gwac.dao.OTCatalogDao;
import com.gwac.dao.OtNumberDao;
import com.gwac.dao.OtObserveRecordDAO;
import com.gwac.dao.UploadFileUnstoreDao;
import com.gwac.model.FitsFile2;
import com.gwac.model.FitsFileCut;
import com.gwac.model.MoveObject;
import com.gwac.model.MoveObjectRecord;
import com.gwac.model4.OTCatalog;
import com.gwac.model.OtObserveRecord;
import com.gwac.model.UploadFileUnstore;
import java.util.List;
import javax.annotation.Resource;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

/**
 * 解析一级OT列表文件，计算二级OT，切图，模板切图。
 *
 * @author xy
 */
@Service(value = "objCorrService")
public class ObjectCorrelationServiceImpl implements OtObserveRecordService {

  private static final Log log = LogFactory.getLog(ObjectCorrelationServiceImpl.class);

  @Resource
  private MoveObjectRecordDao morDao;
  @Resource
  private MoveObjectDao moveObjectDao;
  @Resource
  private OTCatalogDao otcDao;
  @Resource
  private OtNumberDao otnDao;
  @Resource
  private FitsFile2DAO ff2Dao;
  @Resource
  private FitsFileCutDAO ffcDao;
  @Resource
  private OtObserveRecordDAO otorDao;
  @Resource
  private UploadFileUnstoreDao ufuDao;

  @Value("#{syscfg.gwacDataRootDirectory}")
  private String rootPath;

  private static boolean running = true;

  public void startJob() {

    if (running == true) {
      log.debug("start job...");
      running = false;
    } else {
      log.warn("job is running, jump this scheduler.");
      return;
    }

    long startTime = System.nanoTime();
    try {//JDBCConnectionException or some other exception

      List<UploadFileUnstore> ufus = ufuDao.getOTLevel1File();
      log.debug("size=" + ufus.size());
      if (!ufus.isEmpty()) {
	for (UploadFileUnstore ufu : ufus) {
	  parseLevel1Ot(ufu.getUfuId(), ufu.getStorePath(), ufu.getFileName());
	}
      }
    } catch (Exception ex) {
      log.error("Job error", ex);
    } finally {
      if (running == false) {
	running = true;
      }
    }
    long endTime = System.nanoTime();
    double time1 = 1.0 * (endTime - startTime) / 1e9;
    log.debug("job consume: parse cut ot list " + time1 + ".");
  }

  /**
   * 解析一级OT列表文件，得出二级OT，切图文件名称，二级OT模板切图名称
   *
   * @param ufuId
   * @param storePath
   * @param fileName
   */
  @Override
  public void parseLevel1Ot(long ufuId, String storePath, String fileName) {

    if (storePath != null && fileName != null) {

      List<OTCatalog> otcs = otcDao.getObj1Catalog(rootPath + "/" + storePath + "/" + fileName);
      log.debug(fileName + ", otlv1 size:" + otcs.size());

      for (OTCatalog otc : otcs) {
	String fitsName = otc.getImageName();
	String fileDate = fileName.substring(fileName.lastIndexOf('_') + 1, fileName.lastIndexOf('T'));
	FitsFile2 ff2 = ff2Dao.getByName(fitsName);
	if (ff2 == null) {
	  continue;
	}
	OtObserveRecord oor = otorDao.getByFfIdRecordFileId(ff2.getFfId(), otc.getFlag());
	if (oor == null) {
	  continue;
	}
	MoveObject movObj = moveObjectDao.getMovObj(fileDate, otc.getObjNum());
	if (movObj == null) {
	  String ccdType = "M";
	  int otNumber = otnDao.getNumberByDate(fileDate);
	  String otName = String.format("%s%s_%05d", ccdType, fileDate, otNumber);
	  MoveObject movObj2 = new MoveObject();
	  movObj2.setName(otName);
	  movObj2.setDpmId(ff2.getCamId());
	  movObj2.setDateStr(fileDate);
	  movObj2.setTodayMovId(otc.getObjNum());
	  moveObjectDao.save(movObj2);
	  movObj = movObj2;
	}

	MoveObjectRecord mor = new MoveObjectRecord();
	mor.setOorId(oor.getOorId());
	mor.setMovId(movObj.getMovId());
	mor.setFfId(ff2.getFfId());
	mor.setObjDayNum(otc.getObjNum());
	mor.setRecFileNum(otc.getFlag());

	morDao.save(mor);	

	String cutImg = String.format("%s_%05d", fileName.substring(0, fileName.indexOf('.')), mor.getRecFileNum());
	FitsFileCut ffc = new FitsFileCut();
	ffc.setFileName(cutImg);
	ffc.setOtId(mor.getMovId());
	ffc.setNumber(ff2.getFfNumber());
	ffc.setFfId(ff2.getFfId());
	ffc.setDpmId(ff2.getCamId().shortValue());
	ffc.setImgX(oor.getX());
	ffc.setImgY(oor.getY());
	ffc.setRequestCut(false);
	ffc.setSuccessCut(false);
	ffc.setIsMissed(false);
	ffc.setPriority((short)0);
	ffcDao.save(ffc);
	
	oor.setFfcId(ffc.getFfcId());
	oor.setOtId(mor.getMovId());
	otorDao.update(oor);
      }

    }
  }

}
