package com.greencar.vo.notice;

import java.util.Date;

import lombok.Data;

@Data
public class NoticeVO {
	
	private int notice_no;
	private String notice_title;
	private String notice_text;
	private String notice_writer;
	private Date upload_date;
	private int notice_view;
}
