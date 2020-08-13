package com.greencar.service.community;

import java.util.List;

import com.greencar.vo.community.CommunityVO;
import com.greencar.vo.community.Criteria;

public interface CommunityService {
	
	public void register(CommunityVO community);
	
	public CommunityVO get(int commuNo);
	
	public boolean modify(CommunityVO community);
	
	public boolean remove(int commuNo);
	
	public List<CommunityVO> getList();
	
	public List<CommunityVO> getListWithPage(Criteria cri);
	
	public int getTotalCount(Criteria cri);
}
