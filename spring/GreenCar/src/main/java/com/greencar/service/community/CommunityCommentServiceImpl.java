package com.greencar.service.community;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greencar.dao.community.CommunityCommentDAO;
import com.greencar.vo.community.CommunityCommentVO;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class CommunityCommentServiceImpl implements CommunityCommentService{
	
	@Inject
	private CommunityCommentDAO commmapperDAO;

	@Override
	public List<CommunityCommentVO> getComment(int commuNo) {
		log.info("getComment from commu_no="+commuNo);
		return commmapperDAO.getComment(commuNo);
	}

	@Override
	public void regComment(CommunityCommentVO comment) {
		log.info("reg Comment..."+comment);
		commmapperDAO.regComment(comment);
	}

	@Override
	public void updateComment(CommunityCommentVO comment) {
		log.info("modify Comment...");
		commmapperDAO.updateComment(comment);
	}

	@Override
	public void deleteComment(CommunityCommentVO comment) {
		log.info("delete Comment...");
		commmapperDAO.deleteComment(comment);
	}

	

}
