package com.greencar.service.login;


import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.greencar.dao.login.SearchIdPwDAO;

@Service
public class SearchIdPwServiceImpl implements SearchIdPwService {
	
	@Inject
	private SearchIdPwDAO dao;
	
	//이메일 찾기
	public String findEmail(String userNick) {
		return dao.findEmail(userNick);
	}
	
	//비밀번호 찾기
	public String findPw(String userEmail) {
		return dao.findPw(userEmail);
	}
}
