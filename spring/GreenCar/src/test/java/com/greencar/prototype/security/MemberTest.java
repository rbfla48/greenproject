package com.greencar.prototype.security;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

//password Encoding용 테스트유저 추가
@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
						"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
public class MemberTest {
	
	@Inject
	private PasswordEncoder pwencoder;
	@Inject
	private DataSource ds;
	
	@Test
	public void testInsertMember() {
	
	
	String sql = "INSERT INTO user_info(user_no, user_email, user_pw, user_nick, enable)"
			+ "VALUES(13, 'grn@greencar.com', ?, '테스트고객', 1)";
	
	Connection con = null;
	PreparedStatement pstmt = null;
	
	try {
		con = ds.getConnection();
		pstmt = con.prepareStatement(sql);
		
		//암호화
		pstmt.setString(1, pwencoder.encode("green"));
		
		pstmt.executeUpdate();
		
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		try{pstmt.close();}catch(Exception e) {};
		try{con.close();}catch(Exception e) {};
		}
	}
}
