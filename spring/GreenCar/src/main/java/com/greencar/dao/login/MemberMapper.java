package com.greencar.dao.login;

import com.greencar.vo.login.MemberVO;

public interface MemberMapper {
	
	public MemberVO read(String user_email);
	
}
