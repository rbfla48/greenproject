package com.greencar.dao.admin;

import java.util.List;

import com.greencar.vo.admin.Criteria;
import com.greencar.vo.admin.OnebyoneVO;
import com.greencar.vo.admin.SubCriteria;

public interface OnebyoneDAO {
	
	// 1:1문의 리스트 출력
	public List<OnebyoneVO> list(Criteria cri);
	
	// 1:1문의 총 갯수
	public int listCount();
	
	// 답변하지 않은 1:1문의 총 갯수
	public int newListCount();
	
	// 1:1문의 상세보기
	public OnebyoneVO read(int oboNo);
	
	// 1:1문의 답변하기
	public void answer(OnebyoneVO vo);
	
	// 1:1문의 리스트 카테고리별 불러오기
	public List<OnebyoneVO> listPageByCate(SubCriteria scri);
	
	// 1:1문의 리스트 무응답 질문 불러오기
	public List<OnebyoneVO> listPageNoAnswer(Criteria cri);
	
}
