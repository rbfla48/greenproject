package com.greencar.service.community;

import java.util.List;

import com.greencar.vo.community.CommunityCommentVO;

public interface CommunityCommentService {
	
	public List<CommunityCommentVO> getComment(int commuNo);
	
	public void regComment(CommunityCommentVO comment);	
	
	public void updateComment(CommunityCommentVO comment);
	
	public void deleteComment(CommunityCommentVO comment);
	
}
