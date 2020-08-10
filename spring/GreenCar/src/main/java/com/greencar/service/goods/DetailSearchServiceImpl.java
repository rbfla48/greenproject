package com.greencar.service.goods;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.greencar.dao.goods.DetailSearchDAO;
import com.greencar.vo.goods.DetailSearchVO;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class DetailSearchServiceImpl implements DetailSearchService {
	
	@Inject
	private DetailSearchDAO dao;
	
	// 상세검색 결과 받아오기
	@Override
	public List<DetailSearchVO> detailList(DetailSearchVO vo) {
		log.info("before : " + vo);
		//버그패치
		try {
			log.info("message : 버그패치 ");
			vo.setGoodsSize(vo.getGoodsSize().equals("") ? null : vo.getGoodsSize());
			vo.setGoodsType(vo.getGoodsType().equals("") ? null : vo.getGoodsType());
			vo.setGoodsFuel(vo.getGoodsFuel().equals("") ? null : vo.getGoodsFuel());
		} catch (NullPointerException e) {
			log.error("인자버그패치");
		} 
		log.info("after : "+ vo);
		return dao.detailList(vo);
	}

}
