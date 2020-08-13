package com.greencar.service.mypage;

import java.security.Principal;
import java.util.List;

import com.greencar.vo.admin.OnebyoneVO;
import com.greencar.vo.community.Criteria;
import com.greencar.vo.mypage.MypageVO;

public interface MypageService {
	
	//전체목록조회(페이징X)
	public List<MypageVO> getList();
	//내가 쓴 글 목록조회(페이징 추가)
	public List<MypageVO> getListWithPage(Criteria cri);
	//게시글데이터 갯수 연산(페이징)
	public int getTotalCount(Criteria cri);
	//내가 쓴 글 조회
	public MypageVO get(int commuNo);
	// Q&A 작성
	public void QnAinsert(OnebyoneVO oneVO);
	

	/** 닉네임 중복 점검 */
	public int nickCheck(String nick) throws Exception;
	/** 회원 정보 수정 */
	public void memberUpdate(MypageVO mypageVO) throws Exception;
	/** 회원 탈퇴 */
	public void memberDelete(MypageVO mypageVO) throws Exception;
}
