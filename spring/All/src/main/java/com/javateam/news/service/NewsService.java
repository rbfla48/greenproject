package com.javateam.news.service;

import java.util.List;

import com.javateam.news.vo.NewsCriteria;
import com.javateam.news.vo.NewsVO;

public interface NewsService {
	// 작성
	public void newsWrite(NewsVO newsVO) throws Exception;
	// 전체 조회
	public List<NewsVO> newsList(NewsCriteria cri) throws Exception;
	//게시물 총 갯수
	public int listCount() throws Exception;
	// 게시물 조회
	public NewsVO newsRead(int news_no) throws Exception;
}
