package com.greencar.service.notice;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.greencar.dao.notice.NoticeCommentMapper;
import com.greencar.vo.notice.CommentVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@Repository
@AllArgsConstructor
public class NoticeCommentServiceImpl implements NoticeCommentService{
	
	@Inject
	private NoticeCommentMapper commapper;

	@Override
	public List<CommentVO> getComment(int notice_no) {
		log.info("getComment from notice_no="+notice_no);
		return commapper.getComment(notice_no);
	}

	@Override
	public void regComment(CommentVO comment) {
		log.info("reg Comment..."+comment);
		commapper.regComment(comment);
	}

	@Override
	public void updateComment(CommentVO comment) {
		log.info("modify Comment...");
		commapper.updateComment(comment);
	}

	@Override
	public void deleteComment(CommentVO comment) {
		log.info("delete Comment...");
		commapper.deleteComment(comment);
	}

	

}
