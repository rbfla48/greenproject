package com.greencar.dao.login;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.greencar.vo.login.MemberVO;

@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO {

	@Inject
	private SqlSession sqlSession;
	
	@Override
	public MemberVO read(String userEmail) {
		return sqlSession.selectOne("mappers.memberMapper.read",userEmail);
	}

}
