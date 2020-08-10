package com.greencar.dao.goods;


import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.greencar.vo.goods.DetailSearchVO;

import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class DetailSearchDAOImpl implements DetailSearchDAO {
	
	@Inject 
	SqlSession sqlSession;
	
	/*@Override
	//상세검색 전 모든 차량 리스트
	public List<DetailSearchVO> detailListAll() {
		return sqlSession.selectList("detailSearchMapper.detailListAll");
	}*/

	
	@Override
	//상세검색 결과 받아오기
	public List<DetailSearchVO> detailList(DetailSearchVO vo) {
		log.info("dao");
		return sqlSession.selectList("detailSearchMapper.detailList", vo);
	}

}
