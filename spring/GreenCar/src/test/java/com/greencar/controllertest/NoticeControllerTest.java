package com.greencar.controllertest;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.greencar.dao.notice.NoticeDAO;
import com.greencar.service.notice.NoticeService;
import com.greencar.vo.notice.Criteria;
import com.greencar.vo.notice.NoticeVO;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class NoticeControllerTest {
	
	@Autowired
	private NoticeDAO dao;
	
	@Test
	public void serviceTest() {
		
	NoticeVO vo = new NoticeVO();
	vo.getNotice_no();
	vo.getNotice_title();
	
	log.info(dao.getList());
	
	}
}
