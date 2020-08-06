package com.greencar.prototype.mapper;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.greencar.dao.notice.NoticeDAO;
import com.greencar.vo.notice.NoticeVO;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class NoticeMapperTest {
	
	@Autowired
	NoticeDAO noticeDAO;
	
	@Test
	public void test() {
		NoticeVO vo = new NoticeVO();
		
		vo.getNotice_no();
		vo.getNotice_title();
		vo.getNotice_writer();
		vo.getUpload_date();
		
		log.info(noticeDAO.getList());
	}
	
	/*@Test
	public void testSearch() {
		Criteria cri = new Criteria();
		cri.setKeyword("2번째");
		cri.setType("T");
		
		log.info("keyword : " + cri.getKeyword());
		log.info("type : " + cri.getType());
		List<NoticeVO> list = mapper.getListWithPage(cri);
		
		list.forEach(notice -> log.info(notice));
	}*/
}
