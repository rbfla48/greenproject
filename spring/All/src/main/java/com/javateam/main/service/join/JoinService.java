package com.javateam.main.service.join;

import com.javateam.main.vo.join.JoinVO;

public interface JoinService {
	/** 회원 가입 가입 */
	public void joinForm(JoinVO joinVO) throws Exception;
	/** 이메일 중복 점검 */
	public int emailCheck(String email) throws Exception;
	/** 닉네임 중복 점검 */
	public int nickCheck(String nick) throws Exception;
}
