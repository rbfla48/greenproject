package com.greencar.service.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greencar.dao.notice.NoticeCommentDAO;
import com.greencar.vo.notice.NoticeCommentVO;

import lombok.extern.log4j.Log4j;

@Log4j
@Service("commService")
public class NoticeCommentServiceImpl implements NoticeCommentService{
	
	@Autowired
	private NoticeCommentDAO commmentDAO;

	@Override
	public List<NoticeCommentVO> getComment(int notice_no) {
		log.info("getComment from notice_no="+notice_no);
		return commmentDAO.getComment(notice_no);
	}

	@Override
	public void regComment(NoticeCommentVO comment) {
		log.info("reg Comment..."+comment);
		commmentDAO.regComment(comment);
	}

	@Override
	public void updateComment(NoticeCommentVO comment) {
		log.info("modify Comment...");
		commmentDAO.updateComment(comment);
	}

	@Override
	public void deleteComment(NoticeCommentVO comment) {
		log.info("delete Comment...");
		commmentDAO.deleteComment(comment);
	}

	

}
