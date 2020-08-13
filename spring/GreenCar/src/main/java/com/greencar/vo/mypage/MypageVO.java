package com.greencar.vo.mypage;

import java.util.Date;

import lombok.Data;

@Data
public class MypageVO {


	private int userNo;
	private String userEmail;
	private String userPw;
	private String userNick;
	private String userBirthYY;
	private String userBirthMM;
	private String userBirthDD;
	private String userPh;
	private String userAddress;
	private String userAddressDetail;
	private Date userJoinDate;
	

	private int commuNo;
	private String commuTag;
	private String commuTitle; 
	private String commuWriter;
	private String commuText;
	private Date commuDate;
	private int commuView;
	
}