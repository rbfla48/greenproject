package com.javateam.SpringMember.dao;

import org.apache.ibatis.session.SqlSession;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.javateam.SpringMember.mapper.UserMapper;
import com.javateam.SpringMember.service.MemberService;
import com.javateam.SpringMember.vo.MemberDTO;
import com.javateam.SpringMember.vo.MemberVO;
import com.javateam.SpringMember.vo.Users;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {
        "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
        "file:src/main/webapp/WEB-INF/spring/root-context.xml"
      })
@WebAppConfiguration
public class DeleteMemberTest {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private AuthMyBatisService authMyBatisService;
	
	@Autowired
	private MemberDao dao;
	
	@Autowired
	private MemberService memberService;
	
	// @Transactional(propagation=Propagation.REQUIRES_NEW)
	// @Rollback(true)
	@Test
	public void test() {
		
		log.debug("########### dao deleteMember ###############");
		
		memberService.deleteMember("abcd123456");
		// dao.deleteMember("abcd12311231");
		// sqlSession.getMapper(UserMapper.class).deleteUser("abcd12311231");
	} //
	
}
