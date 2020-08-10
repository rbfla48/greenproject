package com.greencar.service.login;


public interface SearchIdPwService {
	
	//이메일 찾기
	public String findEmail(String userNick);
	
	//비밀번호 찾기
	public String findPw(String userEmail);
	

}
