package com.greencar.vo.login;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class MemberVO {
	
	private int userNo;
	private String userEmail;
	private String userPw;
	private String userNick;
	private int userBirth;
	private int userPh;
	private String userAddress;
	private String userAddressDetail;
	private boolean enable;
	
	private Date userJoinDate;
	private List<AuthVO> authList;
}
