package com.javateam.SpringMember.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javateam.SpringMember.vo.MemberVO;
import com.javateam.SpringMember.vo.PageDTO;
import com.javateam.SpringMember.vo.PageVO;
import com.javateam.SpringMember.vo.SearchVO;

import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class MemberDaoImpl implements MemberDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insertMember(MemberVO member) {

		log.debug("dao insertMember");
		// 일바 회원정보 저장
		sqlSession.insert("mapper.MemberMapper.insertMember", member);
	}

	@Override
	public boolean isMember(String id) {

		log.debug("dao isMember");
		return (int)sqlSession.selectOne("mapper.MemberMapper.isMember", id) == 1 ? true : false;
	}

	@Override
	public boolean isEnableEmail(String email) {
		
		log.debug("dao isEnableEmail");
		return (int)sqlSession.selectOne("mapper.MemberMapper.isEnableEmail", email) == 1 ? true : false; 
	}

	@Override
	public boolean isEnablePhone(String phone) {

		log.debug("dao isEnablePhone");
		return (int)sqlSession.selectOne("mapper.MemberMapper.isEnablePhone", phone) == 1 ? true : false;
	}

	@Override
	public MemberVO getMember(String memberId) {

		log.debug("dao getMember");
		return sqlSession.selectOne("mapper.MemberMapper.getMember", memberId);
	}
	
	@Override
	public void updateMember(MemberVO member) {

		log.debug("dao updateMember");
		sqlSession.update("mapper.MemberMapper.updateMember", member);
	}

	@Override
	public void deleteMember(String memberId) {

		log.debug("dao deleteMember");
		sqlSession.delete("mapper.MemberMapper.deleteMember", memberId);
	}

	@Override
	public List<MemberVO> getMembersByPaging(int page, int limit) {

		log.debug("dao getMembersByPaging");
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPage(page);
		pageDTO.setLimit(limit);
		return sqlSession.selectList("mapper.MemberMapper.getMembersByPaging", pageDTO);
	}

	@Override
	public List<MemberVO> getAllMembers() {

		log.debug("dao getAllMembers");
		return sqlSession.selectList("mapper.MemberMapper.getAllMembers");
	}

	@Override
	public List<MemberVO> getMembersByFieldAndPaging(String fld, Object value, boolean isLike, int page, int limit) {

		log.debug("dao getMembersByFieldAndPaging");
		
		// 유사 검색 여부에 따른 연산자 및 필드값 부분 처리, SQL 구문
		String expr = isLike == true ? " like '%"+value+"%'" : " = '"+value+"'";				
							
		SearchVO searchVO = new SearchVO();
		searchVO.setFld(fld);
		searchVO.setLike(isLike);
		searchVO.setPage(page);
		searchVO.setLimit(limit);
		searchVO.setExpr(expr);
		
		return sqlSession.selectList("mapper.MemberMapper.getMembersByFieldAndPaging", searchVO);
	}

	@Override
	public boolean isEnableEmail(String memberId, String email) {
		
		log.debug("dao isEnableEmail");
		
		Map<String, String> map = new HashMap<>();
		map.put("memberId", memberId);
		map.put("email", email);
		
		return (int)sqlSession.selectOne("mapper.MemberMapper.isEnableEmailUpdate", map) == 1 ? true : false;
	}

	@Override
	public boolean isEnablePhone(String memberId, String phone) {
		
		log.debug("dao isEnablePhone");
		
		Map<String, String> map = new HashMap<>();
		map.put("memberId", memberId);
		map.put("phone", phone);
		
		return (int)sqlSession.selectOne("mapper.MemberMapper.isEnablePhoneUpdate", map) == 1 ? true : false;
	}

}