package com.greencar.spring.service;

import com.greencar.spring.vo.Users;

/**
 * @author javateam
 *
 */
public interface AuthMyBatisService {
	
	boolean hasUsername(String username);
	void insertUsers(Users users, String role);

} //