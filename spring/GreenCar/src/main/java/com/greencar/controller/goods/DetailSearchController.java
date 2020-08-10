package com.greencar.controller.goods;



import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.greencar.service.goods.DetailSearchService;
import com.greencar.vo.goods.DetailSearchVO;


@Controller
@RequestMapping("/goods/*")
public class DetailSearchController {
	
	private static final Logger logger = LoggerFactory.getLogger(DetailSearchController.class);
	
	@Inject
	DetailSearchService service;
	
	// 상세검색 결과 받아오기
	@RequestMapping(value = "/detailList", method = RequestMethod.GET)
	public String list(DetailSearchVO vo, Model model) {
		List<DetailSearchVO> carlist =null; 
		logger.info("vo : " + vo);
		if(vo.getBrandCode()!=0) {
			logger.info("1");
			carlist = service.detailList(vo);
			logger.info("size : " +carlist.size());
			logger.info("2");
			for(DetailSearchVO v:carlist) {
				logger.info("v : "+v);
			}
			model.addAttribute("detailList", carlist);
			/*if(carlist != null) {
				logger.info("carlist : " +carlist.size());
			}*/
		}
		
		return "goods/detailList";
	}

}
