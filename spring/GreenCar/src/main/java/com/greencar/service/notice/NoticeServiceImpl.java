package com.greencar.service.notice;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.greencar.dao.notice.NoticeDAO;
import com.greencar.vo.notice.Criteria;
import com.greencar.vo.notice.NoticeVO;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class NoticeServiceImpl implements NoticeService{
	
	@Autowired
	private NoticeDAO noticeDAO;

	@Override
	public void register(NoticeVO noticeVO) {
		log.info("register.......");
		
		noticeDAO.insert(noticeVO);
	}

	@Override
	public NoticeVO get(int notice_no) {
		log.info("read.........");
		return noticeDAO.read(notice_no);
	}

	@Override
	public boolean modify(NoticeVO noticeVO) {
		log.info("modify.........");
		return noticeDAO.update(noticeVO) == 1;
	}

	@Override
	public boolean remove(int notice_no) {
		log.info("delete.......");
		return noticeDAO.delete(notice_no) == 1;
	}

	@Override
	public List<NoticeVO> getList() {
		log.info("getList........");
		return noticeDAO.getList();
	}

	@Override
	public List<NoticeVO> getListWithPage(Criteria cri) {
		log.info("getList with criteria : " + cri);
		return noticeDAO.getListWithPage(cri);
	}

	@Override
	public int getTotalCount(Criteria cri) {
		log.info("get total data count...");
		return noticeDAO.getTotalCount(cri);
	}
	
	

}
