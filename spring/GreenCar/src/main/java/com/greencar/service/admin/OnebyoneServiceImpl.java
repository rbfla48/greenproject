package com.greencar.service.admin;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.greencar.dao.admin.OnebyoneDAO;
import com.greencar.vo.admin.Criteria;
import com.greencar.vo.admin.OnebyoneVO;
import com.greencar.vo.admin.SubCriteria;

@Service
public class OnebyoneServiceImpl implements OnebyoneService {
	
	private static final Logger logger = LoggerFactory.getLogger(OnebyoneServiceImpl.class);
	
	@Inject
	private OnebyoneDAO dao;

	// 1:1 문의글 리스트
	@Override
	public List<OnebyoneVO> list(Criteria cri) {
		return dao.list(cri);
	}
	
	// 1:1문의 총 갯수
	public int listCount() {
		return dao.listCount();
	}
	
	// 1:1 문의글 상세보기
	@Override
	public OnebyoneVO read(int oboNo) {
		return dao.read(oboNo);
	}
	
	// 답변하지 않은 1:1문의 총 갯수
	@Override
	public int newListCount() {
		return dao.newListCount();
	}
	
	// 1:1문의 답변하기
	@Override
	public boolean answer(OnebyoneVO vo) {
		boolean flag = false;
		try {
			dao.answer(vo);
			flag = true;
		} catch (Exception e) {
			flag = false;
		}
		return flag;
	}
	
	//카테고리별 불러오기
	@Override
	public List<OnebyoneVO> listPageByCate(SubCriteria scri) {
		return dao.listPageByCate(scri);
	}
	
	// 1:1문의 리스트 무응답 질문 불러오기
	public List<OnebyoneVO> listPageNoAnswer(Criteria cri) {
		return dao.listPageNoAnswer(cri);
	}

}
