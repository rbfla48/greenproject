package com.greencar.vo.community;

import java.util.Date;

import lombok.Data;

@Data
public class CommunityVO {
	
	private int commuNo;
	private String commuTag;
	private String commuTitle; 
	private String commuWriter;
	private String commuText;
	private Date commuDate;
	private int commuView;
}
