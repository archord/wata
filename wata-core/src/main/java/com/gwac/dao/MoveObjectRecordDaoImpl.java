/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gwac.dao;

import com.gwac.model.MoveObjectRecord;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

/**
 *
 * @author xy
 */
@Repository(value = "moveObjectRecordDao")
public class MoveObjectRecordDaoImpl extends BaseHibernateDaoImpl<MoveObjectRecord> implements MoveObjectRecordDao {

  @Override
  public String getMoveObjsRecords(int movId) {
    Session session = getCurrentSession();
    String sql = "SELECT text(JSON_AGG((SELECT r FROM (SELECT mag_aper, magerr_aper, date_ut, x, y, img_name) r)))  " +
      "FROM(  " +
      "select oor.mag_aper, oor.magerr_aper, oor.date_ut, oor.x, oor.y, ff.img_name " +
      "from move_object_record mor " +
      "INNER JOIN ot_observe_record oor on mor.oor_id=oor.oor_id " +
      "INNER JOIN fits_file2 ff ON ff.ff_id = oor.ff_id "     + 
      "where mor.mov_id=? " +
      "ORDER BY date_ut " +
      ")as moor ";

    String rst = "";
    Query q = session.createSQLQuery(sql);
    q.setInteger(0, movId);
    if (q.list().size() > 0) {
      rst = (String) q.list().get(0);
    }
    return rst;
  }
}
