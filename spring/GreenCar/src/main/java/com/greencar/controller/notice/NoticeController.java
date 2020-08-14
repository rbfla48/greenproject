package com.greencar.controller.notice;

import java.security.Principal;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.greencar.dao.login.MemberDAO;
import com.greencar.service.notice.NoticeCommentService;
import com.greencar.service.notice.NoticeService;
import com.greencar.vo.login.MemberVO;
import com.greencar.vo.notice.Criteria;
import com.greencar.vo.notice.NoticeCommentVO;
import com.greencar.vo.notice.NoticeVO;
import com.greencar.vo.notice.PageDTO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/notice/*")
@AllArgsConstructor
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	@Autowired
	private NoticeCommentService commService;
	@Inject
	private MemberDAO memberDAO;
	
	//공지사항 게시물 리스트 출력
	@GetMapping("/noticeList")
	public void list(Criteria cri, Model model) {
		
		
		log.debug("list : " + cri);
		
		List<NoticeVO> list = noticeService.getListWithPage(cri); 
		log.info("listSize : " + list.size());
		log.info("get : " + list.get(0));
		
		model.addAttribute("list", list);
		
		//데이터 전체갯수 연산후 게시판에서 전체갯수만큼 페이징하여 출력
		int total = noticeService.getTotalCount(cri);
		log.debug("total Data : " + total);
		model.addAttribute("pageMaker", new PageDTO(cri, total));//페이징 설정
		
	}
	
	
	//특정게시물 조회/수정 페이지 이동
	@GetMapping("/get")
	public void get(@RequestParam("noticeNo") int noticeNo, Principal prin, NoticeCommentVO comment, Model model) {
		log.info("get" );
		model.addAttribute("notice",noticeService.get(noticeNo));
		model.addAttribute("comment",commService.getComment(noticeNo));
		noticeService.viewCount(noticeNo);
		
		//유저아이디 매칭되는 닉네임 가져옴
		if(prin != null) {
			MemberVO memberVO = memberDAO.read(prin.getName());
			log.info("-----userNick---- : " + memberVO.getUserNick());
			model.addAttribute("nick", memberVO.getUserNick());
		}
	}
	
	//댓글등록
	@PostMapping("/regComment")
	public String regComment(NoticeCommentVO comment, Criteria cri,RedirectAttributes rttr) {
		//게시물등록
		log.info("regComment.... : "+ comment);
		commService.regComment(comment);
		rttr.addFlashAttribute("comment", comment.getNoticeNo());
			
		return "redirect:/notice/get?noticeNo="+comment.getNoticeNo();
	}
	
	//댓글삭제/get?not
	@PostMapping("/delComment")
	public String deleteComment(HttpServletRequest request, NoticeVO noticeVO, NoticeCommentVO comment, RedirectAttributes rttr, Criteria cri) {
		log.info("delete Commen.... : "+ comment);
		commService.deleteComment(comment);
		rttr.addFlashAttribute("notice", noticeVO.getNoticeNo());
		
		//referer에 URL값 저장 
		String referer = (String)request.getHeader("REFERER");
		//댓글 삭제시 commService.getComment()에서 noticeNo를 0으로 가져옴
		/*return "redirect:/notice/get?noticeNo="+comment.getNoticeNo();*/
		
		//삭제후 이전페이지 이동
		return "redirect:/"+referer;
	}
	 
}
