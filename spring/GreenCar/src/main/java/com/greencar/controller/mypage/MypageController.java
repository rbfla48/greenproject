package com.greencar.controller.mypage;

import java.security.Principal;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.greencar.dao.login.MemberDAO;
import com.greencar.service.admin.OnebyoneService;
import com.greencar.service.community.CommunityCommentService;
import com.greencar.service.community.CommunityService;
import com.greencar.service.mypage.MypageService;
import com.greencar.vo.admin.OnebyoneVO;
import com.greencar.vo.admin.PageMaker;
import com.greencar.vo.community.CommunityCommentVO;
import com.greencar.vo.community.CommunityVO;
import com.greencar.vo.community.Criteria;
import com.greencar.vo.community.PageDTO;
import com.greencar.vo.login.MemberVO;
import com.greencar.vo.mypage.MypageVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/mypage/*")
@AllArgsConstructor
public class MypageController {
	
	@Inject
	private MypageService myService;
	@Inject
	private CommunityService commuService;
	@Inject
	private CommunityCommentService commService;
	@Inject
	private MemberDAO memberDAO;
	@Inject
	private OnebyoneService oboService;

	
	//마이페이지 메인(회원정보 출력)
	@GetMapping("/mypageMain")
	public void mypageMain(Principal prin, Model model) {
		//read()로 유저이메일과 일치하는 memberVO데이터 생성
		MemberVO memberVO = memberDAO.read(prin.getName());
		model.addAttribute("user", memberVO);
	}
	
	// 리스트 출력
	@GetMapping("/mypageMywrite")
	public void list (MypageVO myVO, Principal prin, Criteria cri,Model model) {
		log.info("/mypage_list");
		log.info("list : " + cri);
		
		/*model.addAttribute("list",service.getList());*/
		List<MypageVO> list = myService.getListWithPage(cri);
		model.addAttribute("list", list);//페이징 기능
		//데이터 전체갯수 연산후 게시판에서 전체갯수만큼 페이징하여 출력
		int total = myService.getTotalCount(cri);
		log.info("total Data : " + total);
		model.addAttribute("pageMaker", new PageDTO(cri, total));//페이징 설정
		model.addAttribute("writer", myVO.getCommuWriter());
		log.info("----------writer----------"+myVO.getCommuWriter());
		
		MemberVO memberVO = memberDAO.read(prin.getName());
		model.addAttribute("user", memberVO);
		
	}
	

	//내가쓴글 상세 이동
	@GetMapping({"/community_read"})
	public void get(@RequestParam("commuNo") int commuNo, CommunityCommentVO comment, Model model) {
		log.info("community_read or update" );
		model.addAttribute("commu",myService.get(commuNo));
		model.addAttribute("comment",commService.getComment(commuNo));
	}
	
	//문의내역
	@GetMapping("/QnAList")
	public void QnAList(Principal prin, Model model, com.greencar.vo.admin.Criteria cri) {
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(oboService.listCount());
		model.addAttribute("onebyoneAllSize", oboService.listCount());
		model.addAttribute("onebyoneNewSize", oboService.newListCount());
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("onebyonelist", oboService.list(cri));
		
		MemberVO memberVO = memberDAO.read(prin.getName());
		model.addAttribute("user", memberVO);
	}
	
	//1:1 문의 작성화면
	@GetMapping("/QnAwrite")
	public void QnAwrite(Principal prin, Model model) {
		MemberVO memberVO = memberDAO.read(prin.getName());
		model.addAttribute("user", memberVO);
	}
	
	//1:1 문의 등록
	@PostMapping("/QnAwrite")
	public String QnAwrite(OnebyoneVO oneVO) {
		myService.QnAinsert(oneVO);
		return "redirect:/mypage/QnAList";
	}

	
/** 회원 정보 수정 */
	
	@GetMapping({"/memberUpdateView"})
	public void registerUpdateView(Principal prin, Model model) throws Exception{
		MemberVO memberVO = memberDAO.read(prin.getName());
		model.addAttribute("user", memberVO);
	}

	@PostMapping({"/memberUpdate"})
	public String registerUpdate(MypageVO mypageVO, HttpSession session) throws Exception{
		
		myService.memberUpdate(mypageVO);
		
		return "redirect:/";
	}
	
	/** 회원 탈퇴 */
	// 회원 탈퇴 get
	@GetMapping("/memberDeleteView")
	public void memberDeleteView() throws Exception{}
		
	// 회원 탈퇴 post
	@PostMapping("/memberDelete")
	public String memberDelete(MypageVO mypageVO, HttpSession session, RedirectAttributes rttr) throws Exception{
			
		// 세션에 있는 member를 가져와 member변수에 넣어줍니다.
		MypageVO member = (MypageVO) session.getAttribute("member");
		// 세션에있는 비밀번호
		String sessionPass = member.getUserPw();
		// vo로 들어오는 비밀번호
		String voPass = mypageVO.getUserPw();
			
		if(!(sessionPass.equals(voPass))) {
			rttr.addFlashAttribute("msg", false);
			return "redirect:/member/memberDeleteView";
		}
		myService.memberDelete(mypageVO);
		session.invalidate();
		return "redirect:/";
		}
	
	//회원정보수정 닉네임체크
	@ResponseBody
	@RequestMapping(value="/nickCheck", method = {RequestMethod.POST, RequestMethod.GET})
	public int nickCheck(@RequestParam("userNick") String userNick) throws Exception {
		log.info("nickCheck");
		int result2 = myService.nickCheck(userNick);
		try {
			if (result2 == 1) {
				return result2;
			} else if (result2 == 0) {
				myService.nickCheck(userNick);
			}
		} catch (Exception e) {
			throw new RuntimeException();
		}
		return result2;
	} // 닉네임 중복 점검
	
	
	
	
	 
}
