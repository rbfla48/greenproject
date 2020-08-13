package com.greencar.dao.community;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.greencar.vo.community.CommunityVO;
import com.greencar.vo.community.Criteria;

@Repository
public class CommunityDAOImpl implements CommunityDAO {

	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<CommunityVO> getList() {
		return sqlSession.selectList("mappers.communityMapper.getList");
	}

	@Override
	public List<CommunityVO> getListWithPage(Criteria cri) {
		return sqlSession.selectList("mappers.communityMapper.getListWithPage", cri);
	}

	@Override
	public int getTotalCount(Criteria cri) {
		return sqlSession.selectOne("mappers.communityMapper.getTotalCount", cri);
	}

	//등록Only
	@Override
	public void insert(CommunityVO communityVO) {
		sqlSession.insert("mappers.communityMapper.insert", communityVO);
	}
	//등록이후 PK값을 알아야하는경우
	@Override
	public void insertSelectKey(CommunityVO communityVO) {
		sqlSession.insert("mappers.communityMapper.insertSelectKey", communityVO);
	}

	@Override
	public CommunityVO read(int commuNo) {
		return sqlSession.selectOne("mappers.communityMapper.read", commuNo);
	}

	@Override
	public int delete(int commuNo) {
		return sqlSession.delete("mappers.communityMapper.delete", commuNo);
	}

	@Override
	public int update(CommunityVO communityVO) {
		return sqlSession.update("mappers.communityMapper.update", communityVO);
	}

}
