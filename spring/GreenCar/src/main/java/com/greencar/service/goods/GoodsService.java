package com.greencar.service.goods;

import java.util.List;

import com.greencar.vo.community.Criteria;
import com.greencar.vo.goods.BrandVO;
import com.greencar.vo.goods.GoodsVO;
import com.greencar.vo.option.OptionVO;
import com.greencar.vo.option.OptionVO2;
import com.greencar.vo.option.OptionVO3;

public interface GoodsService {
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
	
	
	public List<GoodsVO> getList(); 
	
	public GoodsVO get(int GoodsNo);
	
	public List<GoodsVO> getListWithPage(Criteria cri);
	
	public int getTotalCount(Criteria cri);
	
	public List<GoodsVO> listByBrand(int brandCode);
	
	public List<GoodsVO> listByType(String goodsType);
	
	public List<GoodsVO> getRecommend(GoodsVO goodsVO);
	
}
