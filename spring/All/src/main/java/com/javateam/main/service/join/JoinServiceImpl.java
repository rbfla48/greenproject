package com.javateam.main.service.join;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javateam.main.dao.join.JoinDAO;
import com.javateam.main.vo.join.JoinVO;

@Service
public class JoinServiceImpl implements JoinService {

	@Inject
	private JoinDAO dao;
	/** 회원 가입 가입 */
	@Override
	public void joinForm(JoinVO joinVO) throws Exception {
		dao.joinForm(joinVO);
	} // 회원 가입 가입	
	/** 이메일 중복 점검 */
	@Override
	public int emailCheck(String email) throws Exception {
		int result1 = dao.emailCheck(email);
		return result1;
	} // 이메일 중복 점검
	/** 닉네임 중복 점검 */
	@Override
	public int nickCheck(String nick) throws Exception {
		int result2 = dao.nickCheck(nick);
		return result2;
	} // 이메일 중복 점검
}
