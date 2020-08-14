package com.greencar.dao.community;

import java.util.List;

import com.greencar.vo.community.CommunityVO;
import com.greencar.vo.community.Criteria;

public interface CommunityDAO {
	
	//전체목록조회(페이징X)
	public List<CommunityVO> getList();
	
	//전체목록조회(페이징 추가)
	public List<CommunityVO> getListWithPage(Criteria cri);
	//게시글데이터 갯수 연산(페이징)
	public int getTotalCount(Criteria cri);
	
	//insert만 실행하고 pk값을 알필요 없는경우
	public void insert(CommunityVO community);
	//insert문이 실행되고 생성된 pk값을 알아야하는경우
	public void insertSelectKey(CommunityVO community);
	
	//게시글 조회	
	public CommunityVO read(int commuNo);
	
	//게시글 삭제
	public int delete(int commuNo);
	
	//게시글 수정
	public int update(CommunityVO community);
	
	
}
