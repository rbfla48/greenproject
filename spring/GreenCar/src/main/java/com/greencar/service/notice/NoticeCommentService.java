package com.greencar.service.notice;

import java.util.List;

import com.greencar.vo.notice.CommentVO;


public interface NoticeCommentService {
	
	public List<CommentVO> getComment(int notice_no);
	
	public void regComment(CommentVO comment);	
	
	public void updateComment(CommentVO comment);
	
	public void deleteComment(CommentVO comment);
	
}
