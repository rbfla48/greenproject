package com.greencar.dao.goods;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.greencar.vo.goods.GoodsVO;
import com.greencar.vo.option.OptionVO;
import com.greencar.vo.option.OptionVO2;
import com.greencar.vo.option.OptionVO3;
@Repository
public class GoodsDAOImpl implements GoodsDAO {

	@Inject
	private SqlSession sqlSession;
	/** 상품 목록 조회 */
	@Override
	public List<GoodsVO> goodsList() throws Exception {
		return sqlSession.selectList("goodsMapper.listGoods");
	} // 상품 목록 조회
	/** 상품 조회 */
	@Override
	public GoodsVO goodsDetail(int goodsNo) throws Exception {
		return sqlSession.selectOne("goodsMapper.readGoods",goodsNo);
	} // 상품 조회
	/** 상품 수정 */
	@Override
	public void goodsUpdate(GoodsVO goodsVO) throws Exception {
		sqlSession.update("goodsMapper.updateGoods", goodsVO);
	} // 상품 수정
	/** 옵션 조회 */
	@Override
	public OptionVO optionDetail(int optionNo) throws Exception {
		return sqlSession.selectOne("optionMapper.readOption",optionNo);
	} // 옵션 조회 */
	/** 옵션 조회 */
	@Override
	public OptionVO2 optionDetail2(int optionNo2) throws Exception {
		return sqlSession.selectOne("optionMapper.readOptionz",optionNo2);
	} // 옵션 조회 */
	/** 옵션 조회 */
	@Override
	public OptionVO3 optionDetail3(int optionNo3) throws Exception {
		return sqlSession.selectOne("optionMapper.readOptions",optionNo3);
	} // 옵션 조회 */
}
