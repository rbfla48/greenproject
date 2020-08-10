package com.greencar.dao.admin;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.greencar.vo.admin.Criteria;
import com.greencar.vo.admin.OnebyoneVO;
import com.greencar.vo.admin.SubCriteria;


@Repository
public class OnebyoneDAOImpl implements OnebyoneDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(OnebyoneDAOImpl.class);
	
	@Inject
	private SqlSession sqlSession;

	// 1:1문의 리스트 출력
	@Override
	public List<OnebyoneVO> list(Criteria cri) {
		return sqlSession.selectList("onebyoneMapper.listPage", cri);
	}
	
	@Override
	// 1:1문의 총 갯수
		public int listCount() {
		return sqlSession.selectOne("onebyoneMapper.listCount");
	}
	
	// 1:1문의 상세보기
	@Override
	public OnebyoneVO read(int oboNo) {
		return sqlSession.selectOne("onebyoneMapper.read", oboNo);
	}
	
	
	// 답변하지 않은 1:1문의 총 갯수
	@Override
	public int newListCount() {
		return sqlSession.selectOne("onebyoneMapper.newListCount");
	}
	
	// 1:1문의 답변하기
	@Override
	public void answer(OnebyoneVO vo) {
		sqlSession.update("onebyoneMapper.answer", vo);
	}
	
	// 1:1문의 리스트 카테고리별 불러오기
	@Override
	public List<OnebyoneVO> listPageByCate(SubCriteria scri) {
		logger.info("############################ DAO cri : " + scri);
		return sqlSession.selectList("onebyoneMapper.listPageByCate", scri);
	}
	
	// 1:1문의 리스트 무응답 질문 불러오기
	@Override
	public List<OnebyoneVO> listPageNoAnswer(Criteria cri) {
		return sqlSession.selectList("onebyoneMapper.listPageNoAnswer", cri);
	}
		
}
