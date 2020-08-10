package com.greencar.dao.notice;

import java.util.List;

import com.greencar.vo.notice.NoticeCommentVO;

public interface NoticeCommentDAO {
	
	//전체 댓글목록조회
	public List<NoticeCommentVO> getComment(int noticeNo);
	
	//댓글등록
	public void regComment(NoticeCommentVO commentVO);
	
	//댓글 삭제
	public void deleteComment(NoticeCommentVO commentVO);
	
	//댓글 수정
	public void updateComment(NoticeCommentVO commentVO);
	
	
}
