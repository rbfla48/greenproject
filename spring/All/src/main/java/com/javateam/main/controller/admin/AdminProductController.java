package com.javateam.main.controller.admin;

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
@RequestMapping("/admin")
public class AdminProductController {
	private static final Logger logger = LoggerFactory.getLogger(AdminProductController.class);
	@Inject
	ProductService service;
	/** 상품 삽입 페이지 */
	@RequestMapping(value = "/insertView", method = RequestMethod.GET)
	public void insertView() throws Exception {
		logger.info("insertView");
	} // 상품 삽입 페이지
	
	/** 상품 삽입 */
	@RequestMapping(value = "/productInsert", method = RequestMethod.POST)
	public String productInsert(ProductVO productVO) throws Exception {
		logger.info("productInsert");
		service.productInsert(productVO);
		return "redirect:/";
	} // 상품 삽입
	
	/** 상품 수정 페이지 */
	@RequestMapping(value = "/updateView", method = RequestMethod.GET)
	public String updateView(ProductVO productVO, Model model) throws Exception {
		logger.info("updateView");
		model.addAttribute("productUpdate", service.productDetail(productVO.getProductNo()));
		model.addAttribute("productDetail", service.productDetail(productVO.getProductNo()));
		return "/admin/updateView";
	} // 상품 수정 페이지
	
	/** 상품 수정 */
	@RequestMapping(value = "/productUpdate", method = RequestMethod.POST)
	public String productUpdate(ProductVO productVO) throws Exception {
		logger.info("productUpdate");
		service.productUpdate(productVO);
		return "redirect:/";
	} // 상품 수정
	
	/** 상품 검색 페이지 */
	@RequestMapping(value = "/productSearch")
	public void productSearch() throws Exception {
		logger.info("productSearch");
	} // 상품 검색 페이지
}
