package com.greencar.service.goods;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.greencar.dao.goods.GoodsDAO;
import com.greencar.vo.goods.GoodsVO;
import com.greencar.vo.option.OptionVO;
import com.greencar.vo.option.OptionVO2;
import com.greencar.vo.option.OptionVO3;

@Service
public class GoodsServiceImpl implements GoodsService {
	@Inject
	private GoodsDAO dao;
	/** 상품 목록 조회 */
	@Override
	public List<GoodsVO> goodsList() throws Exception {
		return dao.goodsList();
	} // 상품 목록 조회
	/** 상품 조회 */
	@Override
	public GoodsVO goodsDetail(int goodsNo) throws Exception {
		return dao.goodsDetail(goodsNo);
	} // 상품 조회
	/** 상품 수정 */
	@Override
	public void goodsUpdate(GoodsVO goodsVO) throws Exception {
		dao.goodsUpdate(goodsVO);
	} // 상품 수정
	/** 옵션 조회 */
	@Override
	public OptionVO optionDetail(int optionNo) throws Exception {
		return dao.optionDetail(optionNo);
	} // 옵션 조회
	/** 옵션 조회 */
	@Override
	public OptionVO2 optionDetail2(int optionNo2) throws Exception {
		return dao.optionDetail2(optionNo2);
	} // 옵션 조회
	/** 옵션 조회 */
	@Override
	public OptionVO3 optionDetail3(int optionNo3) throws Exception {
		return dao.optionDetail3(optionNo3);
	} // 옵션 조회
}
