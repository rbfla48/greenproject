package com.greencar.dao.join;

import com.greencar.vo.join.JoinVO;

public interface JoinDAO {
	/** 회원 가입 가입 */
	public void joinForm(JoinVO joinVO) throws Exception;
	/** 이메일 중복 점검 */
	public int emailCheck(String email) throws Exception;
	/** 닉네임 중복 점검 */
	public int nickCheck(String nick) throws Exception;
}
