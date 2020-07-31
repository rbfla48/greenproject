package com.javateam.main.dao.product;

import java.util.List;

import com.javateam.main.vo.product.ProductVO;

public interface ProductDAO {
	/** 상품 삽입 */
	public void productInsert(ProductVO productVO) throws Exception;
	/** 상품 목록 조회 */
	public List<ProductVO> productList() throws Exception;
	/** 상품 조회 */
	public ProductVO productDetail(int productNo) throws Exception;
	/** 상품 수정 */
	public void productUpdate(ProductVO productVO) throws Exception;
}
