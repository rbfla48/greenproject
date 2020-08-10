package com.greencar.dao.login;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.greencar.vo.login.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public MemberVO read(String userEmail) {
		return sqlSession.selectOne("mappers.memberMapper.read",userEmail);
	}

}
