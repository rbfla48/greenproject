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
public class UpdatePasswordTest {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private AuthMyBatisService authMyBatisService;
	
	private Users users;
	
	@Before
	public void setup() {
		
		BCryptPasswordEncoder passwordEncoder 
			= new BCryptPasswordEncoder();
		String hashedPassword 
			= passwordEncoder.encode("#Cccccc1234");
		
		users = new Users();
		users.setUsername("java1234");
		users.setPassword(hashedPassword);
		users.setEnabled(1);
		
		log.info("###### 신규 암호 : " + users.getPassword());
	}
	
	// @Transactional(propagation=Propagation.REQUIRES_NEW)
	// @Rollback(true)
	@Test
	public void test() {
		
		log.debug("########### dao update Password ###############");
		
		authMyBatisService.updateUsers(users);
		// sqlSession.getMapper(UserMapper.class)
		//		  .updateUser(users.getUsername(), users.getPassword());	
	} //
	
}
