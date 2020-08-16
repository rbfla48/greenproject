package com.greencar.controller;


import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.greencar.service.goods.GoodsService;
import com.greencar.service.news.NewsService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class HomeController {
	
	@Inject
	private NewsService newsService;
	@Inject
	private GoodsService goodsService;
	
	@RequestMapping("/")
	public String home(Model model) throws Exception{
		log.info("HOME.....//");
		
		model.addAttribute("news", newsService.getNews());
		
		model.addAttribute("list", goodsService.getRecommend());
		
		return "main";
	}
	
	
}
