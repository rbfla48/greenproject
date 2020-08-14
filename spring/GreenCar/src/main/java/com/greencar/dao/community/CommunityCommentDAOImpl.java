package com.greencar.dao.community;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.greencar.vo.community.CommunityCommentVO;

@Repository
public class CommunityCommentDAOImpl implements CommunityCommentDAO {
	
	@Inject
	private SqlSession sqlSession;

	@Override
	public List<CommunityCommentVO> getComment(int commuNo) {
		return sqlSession.selectList("mappers.communityCommentMapper.getComment", commuNo);
	}

	@Override
	public void regComment(CommunityCommentVO commentVO) {
		sqlSession.insert("mappers.communityCommentMapper.regComment",commentVO);
	}

	@Override
	public void deleteComment(CommunityCommentVO commentVO) {
		sqlSession.delete("mappers.communityCommentMapper.deleteComment", commentVO);
	}

	@Override
	public void updateComment(CommunityCommentVO commentVO) {
		sqlSession.update("mappers.communityCommentMapper.updateComment", commentVO);
	}

}
