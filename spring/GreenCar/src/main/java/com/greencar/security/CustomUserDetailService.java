package com.greencar.security;

import javax.inject.Inject;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.greencar.dao.login.MemberMapper;
import com.greencar.vo.login.MemberVO;
import com.greencar.vo.security.CustomUser;

import lombok.extern.log4j.Log4j;


@Log4j
@Service
public class CustomUserDetailService implements UserDetailsService{
	
	@Inject
	private MemberMapper memberMapper;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		log.warn("Load User By username : " + username);
		//username means user_email
		MemberVO vo = memberMapper.read(username);
		
		log.warn("queried by member mapper : " + vo);
		
		return vo == null ? null:new CustomUser(vo);
	}	
}
