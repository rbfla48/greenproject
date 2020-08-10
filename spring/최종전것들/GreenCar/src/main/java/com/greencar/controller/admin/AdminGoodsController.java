package com.greencar.controller.admin;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.greencar.service.goods.GoodsService;
import com.greencar.vo.goods.GoodsVO;

@Controller
@RequestMapping("/admin")
public class AdminGoodsController {
	private static final Logger logger = LoggerFactory.getLogger(AdminGoodsController.class);
	@Inject
	GoodsService service;
	/** 상품 수정 페이지 */
	@RequestMapping(value = "/updateView", method = RequestMethod.GET)
	public String updateView(GoodsVO goodsVO, Model model) throws Exception {
		logger.info("updateView");
		model.addAttribute("goodsUpdate", service.goodsDetail(goodsVO.getGoodsNo()));
		model.addAttribute("goodsDetail", service.goodsDetail(goodsVO.getGoodsNo()));
		return "/admin/updateView";
	} // 상품 수정 페이지
	
	/** 상품 수정 */
	@RequestMapping(value = "/goodsUpdate", method = RequestMethod.POST)
	public String goodsUpdate(GoodsVO VO) throws Exception {
		logger.info("goodsUpdate");
		service.goodsUpdate(VO);
		return "redirect:/";
	} // 상품 수정
}
