package com.greencar.dao.mypage;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import org.springframework.stereotype.Repository;

import com.greencar.vo.community.Criteria;
import com.greencar.vo.mypage.MypageVO;

@Repository
public class MypageDAOImpl implements MypageDAO {

	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<MypageVO> getList() {
		return sqlSession.selectList("mappers.mypageMapper.getList");
	}

	@Override
	public List<MypageVO> getListWithPage(Criteria cri) {
		return sqlSession.selectList("mappers.mypageMapper.getListWithPage", cri);
	}

	@Override
	public int getTotalCount(Criteria cri) {
		return sqlSession.selectOne("mappers.mypageMapper.getTotalCount", cri);
	}
	
	@Override
	public MypageVO read(int commuNo) {
		return sqlSession.selectOne("mappers.mypageMapper.read", commuNo);
	}
	//1:1 문의 글쓰기
	@Override
	public void insert(MypageVO mypageVO) {
		sqlSession.insert("mappers.mypageMapper.insert", mypageVO);
	}
	//등록이후 PK값을 알아야하는경우
	@Override
	public void insertSelectKey(MypageVO mypageVO) {
		sqlSession.insert("mappers.mypageMapper.insertSelectKey", mypageVO);
	}

	
	
	/** 회원 가입 가입 */
	@Override
	public void joinForm(MypageVO mypageVO) throws Exception {
		sqlSession.insert("joinMapper.joinForm", mypageVO);
	} // 회원 가입 가입
	/** 이메일 중복 점검 */
	public int emailCheck(String email) throws Exception {
		int result1 = sqlSession.selectOne("joinMapper.emailCheck", email);
		return result1;
	} // 이메일 중복 점검
	/** 닉네임 중복 점검 */
	public int nickCheck(String nick) throws Exception {
		int result2 = sqlSession.selectOne("joinMapper.nickCheck", nick);
		return result2;
	} // 닉네임 중복 점검
	/** 회원 정보 수정 */
	@Override
	public void memberUpdate(MypageVO mypageVO) throws Exception {
		sqlSession.update("joinMapper.joinUpdate", mypageVO);
	}
	/** 회원 정보 수정 */
	@Override
	public void memberDelete(MypageVO mypageVO) throws Exception {
		sqlSession.delete("joinMapper.joinDelete", mypageVO);
		
	}
}
