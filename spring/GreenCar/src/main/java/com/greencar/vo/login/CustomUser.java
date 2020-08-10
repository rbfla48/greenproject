package com.greencar.vo.login;

import java.util.Collection;
import java.util.Collections;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import lombok.Getter;

/**
 * UserDetailsService의 loadUserByUsername메서드가 리턴하는 인증정보를 담고 있는 객체
 */
@Getter
public class CustomUser extends User{


	private static final long serialVersionUID = 1L;
	
	public MemberVO memberVO;
	
	public CustomUser(String username, String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
	}
	
	
	
	public CustomUser(MemberVO memberVO) {
		super(memberVO.getUserEmail(), memberVO.getUserPw(), memberVO.getAuthList().stream()
				.map(auth -> new SimpleGrantedAuthority(auth.getAuthority()))
				.collect(Collectors.toList()));
		this.memberVO = memberVO;
	}
}
