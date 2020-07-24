package com.javateam.news.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.javateam.news.vo.NewsCriteria;
import com.javateam.news.vo.NewsVO;

@Repository
public class NewsDAOImpl implements NewsDAO {

	@Inject
	private SqlSession sqlSession;
	
	@Override
	public void newsWrite(NewsVO newsVO) throws Exception {
		sqlSession.insert("boardMapper.insert", newsVO);
	} // 작성

	@Override
	public List<NewsVO> newsList(NewsCriteria cri) throws Exception {
		return sqlSession.selectList("boardMapper.listPage", cri);
	} // 전체 조회

	@Override
	public int listCount() throws Exception {
		return sqlSession.selectOne("boardMapper.listCount");
	}
	
	@Override
	public NewsVO newsRead(int news_no) throws Exception {
		return sqlSession.selectOne("boardMapper.read", news_no);
	} // 게시물 조회

}
