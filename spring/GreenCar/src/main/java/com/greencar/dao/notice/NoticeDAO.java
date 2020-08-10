package com.greencar.dao.notice;

import java.util.List;

import com.greencar.vo.notice.Criteria;
import com.greencar.vo.notice.NoticeVO;

public interface NoticeDAO {
	
	//전체목록조회(페이징X)
	public List<NoticeVO> getList();
	
	//전체목록조회(페이징 추가)
	public List<NoticeVO> getListWithPage(Criteria cri);
	//게시글데이터 갯수 연산(페이징)
	public int getTotalCount(Criteria cri);
	
	//insert만 실행하고 pk값을 알필요 없는경우
	public void insert(NoticeVO notice);
	//insert문이 실행되고 생성된 pk값을 알아야하는경우
	public void insertSelectKey(NoticeVO notice);
	
	//게시글 조회	
	public NoticeVO read(int notice_no);
	
	//게시글 삭제
	public int delete(int notice_no);
	
	//게시글 수정
	public int update(NoticeVO notice);
	
	//조회수 증가
	public int viewCount(int noticeNo);
	
	
}
