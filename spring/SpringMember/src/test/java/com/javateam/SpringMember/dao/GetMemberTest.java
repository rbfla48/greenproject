package com.javateam.SpringMember.dao;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {
        "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
        "file:src/main/webapp/WEB-INF/spring/root-context.xml"
      })
@WebAppConfiguration
public class GetMemberTest {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private MemberDao dao;
	
	@Test
	public void test() {
		
		log.debug("########### dao getMember ###############");
		
		// assertTrue(dao.isEnablePhone("010-1234-5678"));
		// assertTrue(dao.isEnablePhone("010-1234-5679"));
		
		// assertNotNull(sqlSession.selectOne("mapper.MemberMapper.getMember", "java1234"));
		log.info("회원 정보 : "+sqlSession.selectOne("mapper.MemberMapper.getMember", "java1234"));
		// log.info("회원 정보 : "+dao.getMember("java1234"));
	}
	

}
