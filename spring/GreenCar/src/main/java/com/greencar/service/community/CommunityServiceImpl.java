package com.greencar.service.community;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.greencar.dao.community.CommunityDAO;
import com.greencar.vo.community.CommunityVO;
import com.greencar.vo.community.Criteria;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class CommunityServiceImpl implements CommunityService{
	
	@Inject
	private CommunityDAO communityDAO;

	@Override
	public void register(CommunityVO communityVO) {
		log.info("register.......");
		
		communityDAO.insert(communityVO);
	}

	@Override
	public CommunityVO get(int commuNo) {
		log.info("read.........");
		return communityDAO.read(commuNo);
	}

	@Override
	public boolean modify(CommunityVO communityVO) {
		log.info("modify.........");
		return communityDAO.update(communityVO) == 1;
	}

	@Override
	public boolean remove(int commuNo) {
		log.info("delete.......");
		return communityDAO.delete(commuNo) == 1;
	}

	@Override
	public List<CommunityVO> getList() {
		log.info("getList........");
		return communityDAO.getList();
	}

	@Override
	public List<CommunityVO> getListWithPage(Criteria cri) {
		log.info("getList with criteria : " + cri);
		return communityDAO.getListWithPage(cri);
	}

	@Override
	public int getTotalCount(Criteria cri) {
		log.info("get total data count...");
		return communityDAO.getTotalCount(cri);
	}
	
	

}
