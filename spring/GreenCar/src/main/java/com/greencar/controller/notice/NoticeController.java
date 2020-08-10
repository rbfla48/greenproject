package com.greencar.controller.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.greencar.service.notice.NoticeCommentService;
import com.greencar.service.notice.NoticeService;
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
	@GetMapping({"/get", "/modify"})
	public void get(@RequestParam("noticeNo") int noticeNo, NoticeCommentVO comment, Model model) {
		log.info("get or modify" );
		model.addAttribute("notice",noticeService.get(noticeNo));
		model.addAttribute("comment",commService.getComment(noticeNo));
		noticeService.viewCount(noticeNo);
			
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
	
	//댓글삭제
	@PostMapping("/delComment")
	public String deleteComment(NoticeVO noticeVO, NoticeCommentVO comment, RedirectAttributes rttr, Criteria cri) {
		log.info("delete Commen.... : "+ comment);
		commService.deleteComment(comment);
		rttr.addFlashAttribute("notice", noticeVO.getNoticeNo());
		
		//댓글 삭제시 commService.getComment()에서 noticeNo를 0으로 가져옴
		return "redirect:/notice/get?noticeNo="+noticeVO.getNoticeNo();
	}
	 
}
