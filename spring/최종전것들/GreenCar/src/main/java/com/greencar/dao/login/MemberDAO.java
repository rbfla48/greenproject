package com.greencar.dao.login;

import com.greencar.vo.login.MemberVO;

public interface MemberDAO {
	
	public MemberVO read(String userEmail);
	
}
