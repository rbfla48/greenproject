package com.greencar.vo.notice;

import java.util.Date;

import lombok.Data;

@Data
public class NoticeVO {
	
	private int noticeNo;
	private String noticeTitle;
	private String noticeText;
	private String noticeWriter;
	private Date uploadDate;
	private int noticeView;
}
