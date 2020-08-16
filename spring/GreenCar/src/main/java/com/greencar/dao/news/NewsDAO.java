package com.greencar.dao.news;

import java.util.List;

import com.greencar.vo.news.NewsCriteria;
import com.greencar.vo.news.NewsVO;

public interface NewsDAO {
	/** 뉴스 메인 페이지 */
	public List<NewsVO> newsMain(NewsCriteria cri) throws Exception;
	/** 뉴스 갯수 파악 */
	public int listCount() throws Exception;
	/** 뉴스 세부 페이지 */
	public NewsVO newsDetail(int newsNo) throws Exception;
	/*전체목록조회*/
	public List<NewsVO> getNews();
}
