package com.javateam.news.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javateam.news.service.NewsService;
import com.javateam.news.vo.NewsCriteria;
import com.javateam.news.vo.NewsPageMaker;
import com.javateam.news.vo.NewsVO;

@Controller
@RequestMapping("/news")
public class NewsController {
	
private static final Logger logger = LoggerFactory.getLogger(NewsController.class);
	
	@Inject
	NewsService service;
	
	// 작성 화면
	@RequestMapping(value = "/newsWriteView", method = RequestMethod.GET)
	public String newsWriteView() throws Exception{
		logger.info("newsWriteView");
		
		return "/news/newsWriteView";
	}
	
	@RequestMapping(value = "/newsWrite", method = RequestMethod.POST)
	public String newsWrite(NewsVO newsVO) throws Exception {
		logger.info("newsWrite");
		
		service.newsWrite(newsVO);
		
		return "redirect:/news/newsList";
	}
	
	@RequestMapping(value = "/newsList", method = RequestMethod.GET)
	public String newsList(Model model, NewsCriteria cri) throws Exception{
		logger.info("newsList");
		
		model.addAttribute("newsList",service.newsList(cri));
		
		NewsPageMaker newsPageMaker = new NewsPageMaker();
		newsPageMaker.setCri(cri);
		newsPageMaker.setTotalCount(service.listCount());
		
		model.addAttribute("newsPageMaker", newsPageMaker);
		
		return "/news/newsList";
	}
	
	@RequestMapping(value = "/newsReadView", method = RequestMethod.GET)
	public String newsRead(NewsVO newsVO, Model model) throws Exception{
		logger.info("newsRead");
		
		model.addAttribute("newsRead", service.newsRead(newsVO.getNews_no()));
		
		return "/news/newsReadView";
	}

}
