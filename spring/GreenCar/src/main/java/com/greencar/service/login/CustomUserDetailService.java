package com.greencar.service.login;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.greencar.dao.login.MemberDAO;
import com.greencar.vo.login.MemberVO;

import lombok.extern.log4j.Log4j;

//사용자가 입력한 ID/PW를 검증하기위해 DB에서 확인
@Log4j
public class CustomUserDetailService implements UserDetailsService{
	
	@Autowired
	private MemberDAO memberDAO;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		log.warn("Load User By username : " + username);
		
		//username means userEmail
		MemberVO memberVO = memberDAO.read(username);
		
		return User;
	}	
	
}
