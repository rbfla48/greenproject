package com.greencar.spring.mapper;

import org.apache.ibatis.annotations.Param;

import com.greencar.spring.vo.Role;
import com.greencar.spring.vo.Users;

/**
 * mapper
 * 
 * @author javateam
 *
 */
public interface UserMapper {
	
	Users getUserByUsername(String userName);
	Role getUserRolesByUsername(String userName);
	
	int hasUsername(String username);
	
	Users loadUserByUsername(String userName);
	void insertUser(@Param("users") Users users);
	void insertUserRoles(@Param("username") String username, 
						 @Param("role") String role);

}