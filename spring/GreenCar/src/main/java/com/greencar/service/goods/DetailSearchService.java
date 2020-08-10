package com.greencar.service.goods;

import java.util.List;

import com.greencar.vo.goods.DetailSearchVO;

public interface DetailSearchService {
	
	//상세검색 전 모든 차량 리스트
	/*public List<DetailSearchVO> detailListAll();
	*/
	//상세검색 결과 받아오기
	public List<DetailSearchVO> detailList(DetailSearchVO vo);

}
