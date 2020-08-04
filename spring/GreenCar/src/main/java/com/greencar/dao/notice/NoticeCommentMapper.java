package com.greencar.dao.notice;

import java.util.List;

import com.greencar.vo.notice.CommentVO;


public interface NoticeCommentMapper {
	
	//전체 댓글목록조회
	public List<CommentVO> getComment(int notice_no);
	
	//댓글등록
	public void regComment(CommentVO comment);
	
	//댓글 삭제
	public void deleteComment(CommentVO comment);
	
	//댓글 수정
	public void updateComment(CommentVO comment);
	
	
}
