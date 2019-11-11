/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.job;

import com.gwac.dao.FitsFile2DAO;
import com.gwac.dao.OTCatalogDao;
import com.gwac.dao.OtObserveRecordDAO;
import com.gwac.dao.UploadFileUnstoreDao;
import com.gwac.model.FitsFile2;
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
@Service(value = "otObserveRecordService")
public class OtObserveRecordServiceImpl implements OtObserveRecordService {

  private static final Log log = LogFactory.getLog(OtObserveRecordServiceImpl.class);

  @Resource
  private OTCatalogDao otcDao;
  @Resource
  private FitsFile2DAO ff2Dao;
  @Resource
  private OtObserveRecordDAO otorDao;
  @Resource
  private UploadFileUnstoreDao ufuDao;

  @Value("#{syscfg.gwacDataRootDirectory}")
  private String rootPath;

  private static boolean running = true;


  public void startJob() {

//    if (isTestServer) {
//      return;
//    }
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

      String fitsName = fileName.substring(0, fileName.indexOf('.')) + ".fit";
      FitsFile2 ff2 = ff2Dao.getByName(fitsName);
      if (ff2 == null) {
	return;
      }
      String fileDate = fileName.substring(fileName.lastIndexOf('_') + 1, fileName.lastIndexOf('T'));
      int number = ff2.getFfNumber();
      int dpmId = ff2.getCamId();

      List<OTCatalog> otcs = otcDao.getMov1Catalog(rootPath + "/" + storePath + "/" + fileName);
      log.debug(fileName + ", otlv1 size:" + otcs.size());

      for (OTCatalog otc : otcs) {

	OtObserveRecord oor = new OtObserveRecord();
	oor.setOtId((long) 0);
	oor.setFfcId((long) 0);
	oor.setFfId(ff2.getFfId());
	oor.setRaD(otc.getRaD());
	oor.setDecD(otc.getDecD());
	oor.setX(otc.getX());
	oor.setY(otc.getY());
	oor.setDateUt(ff2.getGenTime());
	oor.setTimeSubSecond(ff2.getTimeSubSecond());
	oor.setFlux(otc.getFlux());
	oor.setThreshold(otc.getThreshold());
	oor.setMagAper(otc.getMagAper());
	oor.setMagerrAper(otc.getMagerrAper());
	oor.setFfNumber(number); //record file number, recordFileId
	oor.setImageOt1Num(otc.getObjNum());
	oor.setDateStr(fileDate);
	oor.setDpmId(dpmId);
	oor.setRequestCut(false);
	oor.setSuccessCut(false);

	otorDao.save(oor);
	
      }

    }
  }


}
