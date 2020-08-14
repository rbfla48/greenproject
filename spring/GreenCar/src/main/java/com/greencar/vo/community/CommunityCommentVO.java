package com.greencar.vo.community;

import java.util.Date;

import lombok.Data;

@Data
public class CommunityCommentVO {
	
	private int commuNo;
	private int commNo;
	private String commWriter;
	private String commText;
	private Date commDate;
	
}
