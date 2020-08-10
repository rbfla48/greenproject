package com.greencar.service.admin;

import java.util.List;

import com.greencar.vo.admin.Criteria;
import com.greencar.vo.admin.OnebyoneVO;
import com.greencar.vo.admin.SubCriteria;

public interface OnebyoneService {
	
	// 1:1 문의글 리스트
	public List<OnebyoneVO> list(Criteria cri);
	
	// 1:1문의글 총 갯수
	public int listCount();

	
	//1:1 문의글 상세보기
	public OnebyoneVO read(int oboNo);
	
	// 답변하지 않은 1:1문의 총 갯수
	public int newListCount();
	
	// 1:1문의 답변하기
	public boolean answer(OnebyoneVO vo);
	
	//카테고리별로 불러오기
	public List<OnebyoneVO> listPageByCate(SubCriteria scri);
	
	// 1:1문의 리스트 무응답 질문 불러오기
	public List<OnebyoneVO> listPageNoAnswer(Criteria cri);


	
}
