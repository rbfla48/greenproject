package com.greencar.service.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.greencar.dao.notice.NoticeMapper;
import com.greencar.vo.notice.Criteria;
import com.greencar.vo.notice.NoticeVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@Repository
@AllArgsConstructor
public class NoticeServiceImpl implements NoticeService{
	
	@Autowired
	private NoticeMapper mapper;

	@Override
	public void register(NoticeVO notice) {
		log.info("register.......");
		
		mapper.insert(notice);
	}

	@Override
	public NoticeVO get(int notice_no) {
		log.info("read.........");
		return mapper.read(notice_no);
	}

	@Override
	public boolean modify(NoticeVO notice) {
		log.info("modify.........");
		return mapper.update(notice) == 1;
	}

	@Override
	public boolean remove(int notice_no) {
		log.info("delete.......");
		return mapper.delete(notice_no) == 1;
	}

	@Override
	public List<NoticeVO> getList() {
		log.info("getList........");
		return mapper.getList();
	}

	@Override
	public List<NoticeVO> getListWithPage(Criteria cri) {
		log.info("getList with criteria : " + cri);
		return mapper.getListWithPage(cri);
	}

	@Override
	public int getTotalCount(Criteria cri) {
		log.info("get total data count...");
		return mapper.getTotalCount(cri);
	}
	
	

}
