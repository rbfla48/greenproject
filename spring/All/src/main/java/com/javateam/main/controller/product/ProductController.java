package com.javateam.main.controller.product;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javateam.main.service.product.ProductService;
import com.javateam.main.vo.product.ProductVO;

@Controller
@RequestMapping("/product")
public class ProductController {
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	@Inject
	ProductService service;	
	/** 상품 목록 조회 */
	@RequestMapping(value = "/productList", method = RequestMethod.GET)
	public String productList(Model model) throws Exception {
		logger.info("productList");
		model.addAttribute("productList",service.productList());
		return "/product/productList";
	} // 상품 목록 조회
	
	/** 상품 조회 */
	@RequestMapping(value = "/productDetailView", method = RequestMethod.GET)
	public String productDetail(ProductVO productVO, Model model) throws Exception {
		logger.info("productDetail");
		model.addAttribute("productDetail", service.productDetail(productVO.getProductNo()));
		return "/product/productDetailView";
	} // 상품 조회
}
