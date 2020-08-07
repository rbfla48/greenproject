package com.greencar.dao.notice;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.greencar.vo.notice.Criteria;
import com.greencar.vo.notice.NoticeVO;

@Repository
public class NoticeDAOImpl implements NoticeDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<NoticeVO> getList() {
		return sqlSession.selectList("noticeMapper.getList");
	}

	@Override
	public List<NoticeVO> getListWithPage(Criteria cri) {
		return sqlSession.selectList("mappers.noticeMapper.getListWithPage", cri);
	}

	@Override
	public int getTotalCount(Criteria cri) {
		return sqlSession.selectOne("mappers.noticeMapper.getTotalCount", cri);
	}

	//등록Only
	@Override
	public void insert(NoticeVO noticeVO) {
		sqlSession.insert("mappers.noticeMapper.insert", noticeVO);
	}
	//등록이후 PK값을 알아야하는경우
	@Override
	public void insertSelectKey(NoticeVO noticeVO) {
		sqlSession.insert("mappers.noticeMapper.insertSelectKey", noticeVO);
	}

	@Override
	public NoticeVO read(int noticeNo) {
		return sqlSession.selectOne("mappers.noticeMapper.read", noticeNo);
	}

	@Override
	public int delete(int noticeNo) {
		return sqlSession.delete("mappers.noticeMapper.delete", noticeNo);
	}

	@Override
	public int update(NoticeVO noticeVO) {
		return sqlSession.update("mappers.noticeMapper.update", noticeVO);
	}

}
