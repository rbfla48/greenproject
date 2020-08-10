package com.greencar.vo.login;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class MemberVO {
	
	private int user_no;
	private String user_email;
	private String user_pw;
	private String user_nick;
	private int user_birth;
	private int user_ph;
	private String user_address;
	private String user_address_detail;
	private Date user_join_date;
	private List<AuthVO> authList;
}
