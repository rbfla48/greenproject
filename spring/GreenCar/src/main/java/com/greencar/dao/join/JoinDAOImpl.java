package com.greencar.dao.join;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.greencar.vo.join.JoinVO;

@Repository
public class JoinDAOImpl implements JoinDAO {

	@Inject
	private SqlSession sqlSession;
	/** 회원 가입 가입 */
	@Override
	public void joinForm(JoinVO joinVO) throws Exception {
		sqlSession.insert("joinMapper.joinForm", joinVO);
	} // 회원 가입 가입
	/** 이메일 중복 점검 */
	public int emailCheck(String email) throws Exception {
		int result1 = sqlSession.selectOne("joinMapper.emailCheck", email);
		return result1;
	} // 이메일 중복 점검
	/** 닉네임 중복 점검 */
	public int nickCheck(String nick) throws Exception {
		int result2 = sqlSession.selectOne("joinMapper.nickCheck", nick);
		return result2;
	} // 닉네임 중복 점검
}
