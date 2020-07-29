package com.javateam.main.service.news;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javateam.main.dao.news.NewsDAO;
import com.javateam.main.vo.news.NewsCriteria;
import com.javateam.main.vo.news.NewsVO;

@Service
public class NewsServiceImpl implements NewsService {
	
	@Inject
	private NewsDAO dao;

	/** 뉴스 메인 페이지 */
	@Override
	public List<NewsVO> newsMain(NewsCriteria cri) throws Exception {
		return dao.newsMain(cri);
	} // 뉴스 메인 페이지
	/** 뉴스 갯수 파악 */
	@Override
	public int listCount() throws Exception {
		return dao.listCount();
	} // 뉴스 갯수 파악
	/** 뉴스 세부 페이지 */
	@Override
	public NewsVO newsDetail(int news_no) throws Exception {
		return dao.newsDetail(news_no);
	} // 뉴스 세부 페이지	
}
