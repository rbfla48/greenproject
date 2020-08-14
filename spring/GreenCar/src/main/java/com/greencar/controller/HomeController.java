package com.greencar.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.greencar.service.goods.GoodsService;
import com.greencar.vo.goods.BrandVO;
import com.greencar.vo.goods.GoodsVO;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class HomeController {
	
	@Inject
	private GoodsService goodsService;
	
	@RequestMapping("/")
	public String home(Model model) {
		
		model.addAttribute("goods", goodsService.getBrand());
		
		return "main";
	}
}
