package com.greencar.dao.login;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class SearchIdPwDAOImpl implements SearchIdPwDAO{

	@Inject
	private SqlSession sqlSession;
	
	//이메일 찾기
	@Override
	public String findEmail(String userNick) {
		return sqlSession.selectOne("searchIdPwMapper.findEmail", userNick);
	}
	
	//비밀번호 찾기
	@Override
	public String findPw(String userEmail) {
		return sqlSession.selectOne("searchIdPwMapper.findPw", userEmail);
	}
	
	
}
