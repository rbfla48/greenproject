package com.greencar.security;

import javax.inject.Inject;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.greencar.dao.login.MemberDAO;
import com.greencar.vo.login.CustomUser;
import com.greencar.vo.login.MemberVO;

import lombok.extern.log4j.Log4j;

/**
 * 실제 db와 연동하여 사용자정보를 인증하는 작업을 수행하며 
 * 인증이 완료되면 db에서 조회한 VO객체를 UserDetails타입으로 변경하여 리턴(현재는 User타입으로 바로 리턴)
 */
@Log4j
public class CustomUserDetailService implements UserDetailsService{
	
	@Inject
	private MemberDAO memberDAO;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		log.warn("Load User By username : " + username);
		//username means user_email
		MemberVO vo = memberDAO.read(username);
		
		log.warn("queried by member mapper : " + vo);
		
		return vo == null ? null:new CustomUser(vo);
	}	
}
