package com.javateam.SpringMember.dao;

import static org.junit.Assert.assertEquals;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.javateam.SpringMember.vo.MemberVO;
import com.javateam.SpringMember.vo.SearchVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {
        "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
        "file:src/main/webapp/WEB-INF/spring/root-context.xml"
      })
@WebAppConfiguration
public class SearchTest2 {
	
	@Autowired
	private SqlSession sqlSession;
	
	SearchVO searchVO;
	
	@Before
	public void setup() {
		
		searchVO = new SearchVO();
		searchVO.setFld("member_address");
		searchVO.setLike(false);
		searchVO.setPage(1);
		searchVO.setValue("편의점");
		searchVO.setLimit(10);
		
		String expr = searchVO.isLike() == true ? 
					" like '%"+searchVO.getValue()+"%'" 
				    : "= '"+searchVO.getValue()+"'";	
		
		log.debug("##### expr : " + expr);
		searchVO.setExpr(expr);
	}
	
	@Test
	public void test() {
		
		log.debug("########### getMembersByFieldAndPaging ###############");
		
		log.info("###### " + searchVO);		
		List<MemberVO> members = sqlSession.selectList("mapper.MemberMapper.getMembersByFieldAndPaging", searchVO);
		assertEquals("황갑정", members.get(0).getMemberName());
	}
	
}
