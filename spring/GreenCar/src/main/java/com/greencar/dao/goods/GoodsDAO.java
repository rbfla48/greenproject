package com.greencar.dao.goods;

import java.util.List;

import com.greencar.vo.community.Criteria;
import com.greencar.vo.goods.BrandVO;
import com.greencar.vo.goods.GoodsVO;
import com.greencar.vo.option.OptionVO;
import com.greencar.vo.option.OptionVO2;
import com.greencar.vo.option.OptionVO3;

public interface GoodsDAO {
	/** 상품 목록 조회 */
	public List<GoodsVO> detailList(GoodsVO goodsVO) throws Exception;
	/** 상품 조회 */
	public GoodsVO goodsDetail(int goodsNo) throws Exception;
	/** 상품 수정 */
	public void goodsUpdate(GoodsVO goodsVO) throws Exception;
	/** 옵션 조회 */
	public OptionVO optionDetail(int optionNo) throws Exception;
	public OptionVO2 optionDetail2(int optionNo2) throws Exception;
	public OptionVO3 optionDetail3(int optionNo3) throws Exception;

	// 상품 목록 조회
	public List<GoodsVO> getList(); 
		
	//전체목록조회(페이징 추가)
	public List<GoodsVO> getListWithPage(Criteria cri);
	
	//상품 갯수 연산(페이징)
	public int getTotalCount(Criteria cri);
		
	// 상품 조회
	public GoodsVO read(int goodsNo);
		
	//브랜드별 조회
	public List<GoodsVO> listByBrand(int brandCode); 
		
	//차종별 조회
	public List<GoodsVO> listByType(String goodsType); 
	
	//브랜드검색
	public List<GoodsVO> getRecommend();
}
