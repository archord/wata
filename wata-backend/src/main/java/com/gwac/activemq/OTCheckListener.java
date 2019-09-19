package com.gwac.activemq;

import com.gwac.service2.Ot2CheckService;
import javax.annotation.Resource;
import javax.jms.JMSException;

import javax.jms.MapMessage;
import javax.jms.Message;
import javax.jms.MessageListener;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;

@Service(value = "oTCheckListener")
public class OTCheckListener implements MessageListener {

  private static final Log log = LogFactory.getLog(OTCheckListener.class);
  @Resource
  private Ot2CheckService ot2CheckService;

  @Override
  public void onMessage(Message message) {
    try {
      MapMessage map = (MapMessage) message;
      long ot2Id = map.getLong("ot2Id");
      log.debug("receive check message, ot2Id=" + ot2Id );
      ot2CheckService.searchOT2(ot2Id);
    } catch (Exception e) {
      log.error(e);
    }
  }

}
