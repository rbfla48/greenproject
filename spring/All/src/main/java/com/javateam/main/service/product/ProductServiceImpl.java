package com.javateam.main.service.product;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javateam.main.dao.product.ProductDAO;
import com.javateam.main.vo.product.ProductVO;

@Service
public class ProductServiceImpl implements ProductService {
	@Inject
	private ProductDAO dao;
	/** 상품 삽입 */
	@Override
	public void productInsert(ProductVO productVO) throws Exception {
		dao.productInsert(productVO);
	} // 상품 삽입
	/** 상품 목록 조회 */
	@Override
	public List<ProductVO> productList() throws Exception {
		return dao.productList();
	} // 상품 목록 조회
	/** 상품 조회 */
	@Override
	public ProductVO productDetail(int productNo) throws Exception {
		return dao.productDetail(productNo);
	} // 상품 조회
	/** 상품 수정 */
	@Override
	public void productUpdate(ProductVO productVO) throws Exception {
		dao.productUpdate(productVO);
	} // 상품 수정
	
}
