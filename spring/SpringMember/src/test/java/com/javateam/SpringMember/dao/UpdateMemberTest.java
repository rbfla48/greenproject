package com.javateam.SpringMember.dao;

import org.apache.ibatis.session.SqlSession;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.javateam.SpringMember.service.MemberService;
import com.javateam.SpringMember.vo.MemberDTO;
import com.javateam.SpringMember.vo.MemberVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {
        "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
        "file:src/main/webapp/WEB-INF/spring/root-context.xml"
      })
@WebAppConfiguration
public class UpdateMemberTest {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private MemberDao dao;
	
	@Autowired
	private MemberService memberService;
	
	private MemberDTO memberDTO;
	private MemberVO memberVO;
	private String id = "java1234";
	
	@Before
	public void setup() {
		
		memberVO = dao.getMember(id);
		memberDTO = new MemberDTO(memberVO);
		memberDTO.setMemberEmail("javajava@java.com");
		memberDTO.setMemberAddressBasic("서울 강남구 역삼동");
		memberDTO.setMemberAddressDetail("그린 컴퓨터 학원");

		// 신규 암호 입력
		memberDTO.setMemberPassword("#Bbbbb1234");
		
		memberVO = new MemberVO(memberDTO);
	}
	
	// @Transactional(propagation=Propagation.REQUIRES_NEW)
	// @Rollback(true)
	@Test
	public void test() {
		
		log.debug("########### dao updateMember ###############");
		
		log.info("신규 암호 : " + memberVO.getMemberPassword());
		
		// dao.updateMember(memberVO);
		memberService.updateMember(memberVO);
		
		// sqlSession.update("mapper.MemberMapper.updateMember", memberVO);
	} //
	
}
