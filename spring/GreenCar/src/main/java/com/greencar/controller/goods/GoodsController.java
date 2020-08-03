package com.greencar.controller.goods;

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
@RequestMapping("/goods")
public class GoodsController {
	private static final Logger logger = LoggerFactory.getLogger(GoodsController.class);
	@Inject
	GoodsService service;	
	/** 상품 목록 조회 */
	@RequestMapping(value = "/goodsList", method = RequestMethod.GET)
	public String goodsList(Model model) throws Exception {
		logger.info("goodsList");
		model.addAttribute("goodsList",service.goodsList());
		return "/goods/goodsList";
	} // 상품 목록 조회
	
	/** 상품 조회 */
	@RequestMapping(value = "/goodsDetailView", method = RequestMethod.GET)
	public String goodsDetail(GoodsVO goodsVO, Model model) throws Exception {
		logger.info("goodsDetail");
		model.addAttribute("goodsDetail", service.goodsDetail(goodsVO.getGoodsNo()));
		model.addAttribute("optionDetail", service.optionDetail(goodsVO.getGoodsNo()));
		model.addAttribute("optionDetail2", service.optionDetail2(goodsVO.getGoodsNo()));
		model.addAttribute("optionDetail3", service.optionDetail3(goodsVO.getGoodsNo()));
		return "/goods/goodsDetailView";
	} // 상품 조회
}
