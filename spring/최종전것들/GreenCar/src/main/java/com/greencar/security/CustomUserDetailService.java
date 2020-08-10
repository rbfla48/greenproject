package com.greencar.security;

import javax.inject.Inject;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.greencar.dao.login.MemberDAO;
import com.greencar.vo.login.CustomUser;
import com.greencar.vo.login.MemberVO;

import lombok.extern.log4j.Log4j;


@Log4j
public class CustomUserDetailService implements UserDetailsService{
	
	@Inject
	private MemberDAO memberDAO;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		log.warn("Load User By username : " + username);
		//username means userEmail
		MemberVO memberVO = memberDAO.read(username);
		
		log.warn("queried by member mapper : " + memberVO);
		
		return memberVO == null ? null:new CustomUser(memberVO);
	}	
}
