package com.greencar.service.mypage;

import java.security.Principal;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.greencar.dao.mypage.MypageDAO;
import com.greencar.vo.admin.OnebyoneVO;
import com.greencar.vo.community.CommunityVO;
import com.greencar.vo.community.Criteria;
import com.greencar.vo.mypage.MypageVO;

import lombok.extern.log4j.Log4j;

@Service
public class MypageServiceImpl implements MypageService {

	@Inject
	private MypageDAO dao;
	
	//게시글데이터 갯수 연산(페이징)
	@Override
	public List<MypageVO> getList() {
		return dao.getList();
	}
	//전체목록조회(페이징 추가)
	@Override
	public List<MypageVO> getListWithPage(Criteria cri) {
		return dao.getListWithPage(cri);
	}
	//게시글데이터 갯수 연산(페이징)
	@Override
	public int getTotalCount(Criteria cri) {
		return dao.getTotalCount(cri);
	}
	//게시물 조회
	@Override
	public MypageVO get(int commuNo) {
		return dao.read(commuNo);
	}
	
	// 1:1 문의 작성
	@Override
	public void QnAinsert(OnebyoneVO oneVO) {
		dao.QnAinsert(oneVO);
	}


	/** 닉네임 중복 점검 */
	@Override
	public int nickCheck(String nick) throws Exception {
		int result2 = dao.nickCheck(nick);
		return result2;
	} // 이메일 중복 점검
	/** 회원정보 수정 */
	@Override
	public void memberUpdate(MypageVO mypageVO) throws Exception {
		
		dao.memberUpdate(mypageVO);
	}
	/** 회원탈퇴 */
	@Override
	public void memberDelete(MypageVO mypageVO) throws Exception {
		
		dao.memberDelete(mypageVO);
	}
	
}
