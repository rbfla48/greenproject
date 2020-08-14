package com.greencar.controller.news;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.greencar.service.news.NewsService;
import com.greencar.vo.news.NewsCriteria;
import com.greencar.vo.news.NewsPageMaker;

@Controller
@RequestMapping("/news")
public class NewsController {
	
private static final Logger logger = LoggerFactory.getLogger(NewsController.class);
	@Inject
	NewsService service;
	/** 뉴스 메인 페이지 */
	@RequestMapping(value = "/newsMain", method = RequestMethod.GET)
	public String newsMain(Model model, NewsCriteria cri) throws Exception{
		logger.info("newsMain");
		model.addAttribute("newsMain",service.newsMain(cri));
		NewsPageMaker newsPageMaker = new NewsPageMaker();
		newsPageMaker.setCri(cri);
		newsPageMaker.setTotalCount(service.listCount());
		model.addAttribute("newsPageMaker", newsPageMaker);
		return "/news/newsMain";
	} // 뉴스 메인 페이지
	
	/** 뉴스 세부 페이지 */
	@RequestMapping(value = "/newsDetailView", method = RequestMethod.GET)
	public String newsDetail(@RequestParam("newsNo") int newsNo, Model model) throws Exception{
		logger.info("newsDetail");
		model.addAttribute("newsDetail", service.newsDetail(newsNo));
		return "/news/newsDetailView";
	} // 뉴스 세부 페이지
}
