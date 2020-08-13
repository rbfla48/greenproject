package com.greencar.dao.mypage;

import java.util.List;

import com.greencar.vo.community.CommunityVO;
import com.greencar.vo.community.Criteria;
import com.greencar.vo.mypage.MypageVO;

public interface MypageDAO {
	
	
	//전체목록조회(페이징X)
	public List<MypageVO> getList();		
	//내가 쓴 글 목록조회(페이징 추가)
	public List<MypageVO> getListWithPage(Criteria cri);
	//내가 쓴 글  갯수 연산(페이징)
	public int getTotalCount(Criteria cri);
	//내가 쓴 글 조회	
	public MypageVO read(int commuNo);
	//1:1 문의 글쓰기 
	public void insert(MypageVO mypageVO);
	//insert문이 실행되고 생성된 pk값을 알아야하는경우
	public void insertSelectKey(MypageVO mypageVO);
		
	
	
	/** 회원 가입 가입 */
	public void joinForm(MypageVO mypageVO) throws Exception;
	/** 이메일 중복 점검 */
	public int emailCheck(String email) throws Exception;
	/** 닉네임 중복 점검 */
	public int nickCheck(String nick) throws Exception;
	/** 회원 정보 수정 */
	public void memberUpdate(MypageVO mypageVO)throws Exception;
	/** 회원 탈퇴 */
	public void memberDelete(MypageVO mypageVO)throws Exception;
	
}
