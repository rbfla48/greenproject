package com.greencar.controller.goods;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.greencar.service.community.CommunityService;
import com.greencar.service.goods.GoodsService;
import com.greencar.vo.community.Criteria;
import com.greencar.vo.community.PageDTO;
import com.greencar.vo.goods.GoodsVO;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/goods")
public class GoodsController {
	
	@Inject 
	private CommunityService commuService;
	
	private static final Logger logger = LoggerFactory.getLogger(GoodsController.class);
	
	@Inject
	GoodsService service;	
	/** 상품 목록 조회 */
	@RequestMapping(value = "/detailList", method = RequestMethod.GET)
	public String list(GoodsVO goodsVO, Model model) throws Exception {
		List<GoodsVO> carlist =null; 
		logger.info("goodsVO : " + goodsVO);
		if(goodsVO.getBrandCode()!=0) {
			logger.info("1");
			carlist = service.detailList(goodsVO);
			logger.info("size : " +carlist.size());
			logger.info("2");
			for(GoodsVO v:carlist) {
				logger.info("v : "+v);
			}
			model.addAttribute("detailList", carlist);
		}
		return "goods/detailList";
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
	
	
	
	
	//상품 리스트 출력
		@GetMapping("/goods_main")
		public void list(Criteria cri,Model model) {
			log.info("list : " + cri);
			/*model.addAttribute("list",service.getList());*/
			model.addAttribute("list", commuService.getListWithPage(cri));//페이징 기능

			
		
		//데이터 전체갯수 연산후 게시판에서 전체갯수만큼 페이징하여 출력
		int total = commuService.getTotalCount(cri);
		log.info("total Data : " + total);
		model.addAttribute("pageMaker", new PageDTO(cri, total));//페이징 설정
		}

		
		//브랜드별로 출력
		@GetMapping("/listByBrand")
		public String listByBrand(@RequestParam("brandCode") int brandCode, Model model) {
			log.info("listByBrand");
			model.addAttribute("list", service.listByBrand(brandCode));
			return "goods/goods_main";
		}
		
		//차종별로 출력
		
		@GetMapping("/listByType")
		public String listByType(@RequestParam("goodsType") String goodsType, Model model) {
			log.info("listByType");
			model.addAttribute("list", service.listByType(goodsType));
			return "goods/goods_main";
		}
		
		
}
