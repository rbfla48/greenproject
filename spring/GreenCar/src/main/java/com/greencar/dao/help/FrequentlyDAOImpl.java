package com.greencar.dao.help;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.greencar.vo.help.FrequentlyVO;

@Repository
public class FrequentlyDAOImpl implements FrequentlyDAO {
	
	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<FrequentlyVO> getList() {
		return sqlSession.selectList("com.greencar.mappers.FrequentlyMapper.getList");
	}
	
	@Override
	public List<FrequentlyVO> getCateList(String freCategory) {
		return sqlSession.selectList("com.greencar.mappers.FrequentlyMapper.getCateList", freCategory);
	}


}
