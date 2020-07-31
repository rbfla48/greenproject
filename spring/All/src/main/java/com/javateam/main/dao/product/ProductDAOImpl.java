package com.javateam.main.dao.product;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javateam.main.vo.product.ProductVO;
@Repository
public class ProductDAOImpl implements ProductDAO {

	@Inject
	private SqlSession sqlSession;
	/** 상품 삽입 */
	@Override
	public void productInsert(ProductVO productVO) throws Exception {
		sqlSession.insert("productMapper.insertProduct", productVO);
	} // 상품 삽입
	/** 상품 목록 조회 */
	@Override
	public List<ProductVO> productList() throws Exception {
		return sqlSession.selectList("productMapper.listProduct");
	} // 상품 목록 조회
	/** 상품 조회 */
	@Override
	public ProductVO productDetail(int productNo) throws Exception {
		return sqlSession.selectOne("productMapper.readProduct",productNo);
	} // 상품 조회
	/** 상품 수정 */
	@Override
	public void productUpdate(ProductVO productVO) throws Exception {
		sqlSession.update("productMapper.updateProduct", productVO);
	} // 상품 수정
	
}
