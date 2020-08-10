package com.greencar.vo.notice;

import java.util.Date;

import lombok.Data;

@Data
public class NoticeCommentVO {
	
	private int noticeNo;
	private int rno;
	private String writer;
	private String content;
	private Date regdate;
	
}
