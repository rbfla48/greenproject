package com.greencar.vo.notice;

import java.util.Date;

import lombok.Data;

@Data
public class CommentVO {
	
	private int notice_no;
	private int rno;
	private String writer;
	private String content;
	private Date regdate;
	
	@Override
	public String toString() {
		return "NoticeCommentVO [notice_no=" + notice_no + ", rno=" + rno + ", content=" + content + ", writer=" + writer + ", regdate="
				+ regdate + "]";
	}
}
