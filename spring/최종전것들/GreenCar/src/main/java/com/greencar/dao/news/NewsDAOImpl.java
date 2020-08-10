package com.greencar.dao.news;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.greencar.vo.news.NewsCriteria;
import com.greencar.vo.news.NewsVO;

@Repository
public class NewsDAOImpl implements NewsDAO {
	@Inject
	private SqlSession sqlSession;
	/** 뉴스 메인 페이지 */
	@Override
	public List<NewsVO> newsMain(NewsCriteria cri) throws Exception {
		return sqlSession.selectList("newsMainMapper.newsMain", cri);
	} // 뉴스 메인 페이지  
	/** 뉴스 갯수 파악 */
	@Override
	public int listCount() throws Exception {
		return sqlSession.selectOne("newsMainMapper.listCount");
	} // 뉴스 갯수 파악
	/** 뉴스 세부 페이지 */
	@Override
	public NewsVO newsDetail(int newsNo) throws Exception {
		return sqlSession.selectOne("newsMainMapper.newsDetail", newsNo);
	} // 뉴스 세부 페이지
}
