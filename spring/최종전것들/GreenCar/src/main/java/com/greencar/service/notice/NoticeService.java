package com.greencar.service.notice;

import java.util.List;

import com.greencar.vo.notice.Criteria;
import com.greencar.vo.notice.NoticeVO;

public interface NoticeService {
	
	public void register(NoticeVO notice);
	
	public NoticeVO get(int noticeNo);
	
	public boolean modify(NoticeVO notice);
	
	public boolean remove(int noticeNo);
	
	public List<NoticeVO> getList();
	
	public List<NoticeVO> getListWithPage(Criteria cri);
	
	public int getTotalCount(Criteria cri);
}
