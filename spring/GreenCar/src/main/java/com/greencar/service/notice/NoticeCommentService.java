package com.greencar.service.notice;

import java.util.List;

import com.greencar.vo.notice.NoticeCommentVO;

public interface NoticeCommentService {
	
	public List<NoticeCommentVO> getComment(int notice_no);
	
	public void regComment(NoticeCommentVO comment);	
	
	public void updateComment(NoticeCommentVO comment);
	
	public void deleteComment(NoticeCommentVO comment);
	
}
