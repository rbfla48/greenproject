package com.greencar.prototype.mapper;


import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.greencar.dao.login.MemberDAO;
import com.greencar.vo.login.MemberVO;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberMapperTest {
	
	@Inject
	private MemberDAO memMapper;
	
	@Test
	public void testRead() {
	MemberVO vo = memMapper.read("testuser01@greencar.com");
	log.info(vo);
	vo.getAuthList().forEach(AuthVO -> log.info(AuthVO));
	}
	
}
