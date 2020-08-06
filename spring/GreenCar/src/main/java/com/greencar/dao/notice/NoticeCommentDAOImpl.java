package com.greencar.dao.notice;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.greencar.vo.notice.NoticeCommentVO;

@Repository("commmapperDAO")
public class NoticeCommentDAOImpl implements NoticeCommentDAO {
	
	@Inject
	private SqlSession sqlSession;

	@Override
	public List<NoticeCommentVO> getComment(int notice_no) {
		return sqlSession.selectList("mappers.noticeCommentMapper.getComment", notice_no);
	}

	@Override
	public void regComment(NoticeCommentVO commentVO) {
		sqlSession.insert("mappers.noticeCommentMapper.regComment",commentVO);
	}

	@Override
	public void deleteComment(NoticeCommentVO commentVO) {
		sqlSession.delete("mappers.noticeCommentMapper.deleteComment", commentVO);
	}

	@Override
	public void updateComment(NoticeCommentVO commentVO) {
		sqlSession.update("mappers.noticeCommentMapper.updateComment", commentVO);
	}

}
