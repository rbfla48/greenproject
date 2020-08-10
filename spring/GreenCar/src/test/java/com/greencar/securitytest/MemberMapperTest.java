package com.greencar.securitytest;


import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.greencar.dao.login.MemberDAO;
import com.greencar.vo.login.MemberVO;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberMapperTest {
	
	@Autowired
	private MemberDAO memberDAO;
	
	@Test
	public void testRead() {
	MemberVO vo = memberDAO.read("testuser01@greencar.com");
	log.info("---------------------------------memberVO : " + vo);
	vo.getAuthList().forEach(AuthVO -> log.info(AuthVO));
	}
	
}
