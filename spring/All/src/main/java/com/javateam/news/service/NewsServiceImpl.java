package com.javateam.news.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import com.javateam.news.dao.NewsDAO;
import com.javateam.news.vo.NewsCriteria;
import com.javateam.news.vo.NewsVO;

@Service
public class NewsServiceImpl implements NewsService {
	
	@Inject
	private NewsDAO dao;

	// 작성
	@Override
	public void newsWrite(NewsVO newsVO) throws Exception {
		dao.newsWrite(newsVO);
	}

	@Override
	public List<NewsVO> newsList(NewsCriteria cri) throws Exception {
		return dao.newsList(cri);
	}
	
	@Override
	public int listCount() throws Exception {
		return dao.listCount();
	}

	@Override
	public NewsVO newsRead(int news_no) throws Exception {
		return dao.newsRead(news_no);
	}

	
}
