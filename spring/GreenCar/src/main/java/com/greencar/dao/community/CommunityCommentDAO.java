package com.greencar.dao.community;

import java.util.List;

import com.greencar.vo.community.CommunityCommentVO;

public interface CommunityCommentDAO {
	
	//전체 댓글목록조회
	public List<CommunityCommentVO> getComment(int commuNo);
	
	//댓글등록
	public void regComment(CommunityCommentVO comment);
	
	//댓글 삭제
	public void deleteComment(CommunityCommentVO comment);
	
	//댓글 수정
	public void updateComment(CommunityCommentVO comment);
	
	
}
