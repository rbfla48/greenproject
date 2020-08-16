package com.greencar.controller.community;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.greencar.service.community.CommunityCommentService;
import com.greencar.service.community.CommunityService;
import com.greencar.vo.community.CommunityCommentVO;
import com.greencar.vo.community.CommunityVO;
import com.greencar.vo.community.Criteria;
import com.greencar.vo.community.PageDTO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/community/*")
@AllArgsConstructor
public class CommunityController {
	
	@Inject
	private CommunityService service;
	@Inject
	private CommunityCommentService commService;
	
	//게시물 리스트 출력
	@GetMapping("/community_main")
	public void list(Criteria cri,Model model) {
		log.info("/community_main");
		log.info("list : " + cri);
		
		/*model.addAttribute("list",service.getList());*/
		List<CommunityVO> list = service.getListWithPage(cri);
		list.forEach(x->{log.info(x+"");});
		log.info("-------------------------");
		model.addAttribute("list", list);
		//페이징 기능
		//데이터 전체갯수 연산후 게시판에서 전체갯수만큼 페이징하여 출력
		int total = service.getTotalCount(cri);
		log.info("total Data : " + total);
		model.addAttribute("pageMaker", new PageDTO(cri, total));//페이징 설정
	}
	
	//게시물 등록화면(입력창)
	@GetMapping("/write")
	public void write() {}
	//게시물 입력후 등록(등록후 리스트출력)
	@PostMapping("/write")
	public String write(CommunityVO communityVO, CommunityCommentVO comment, RedirectAttributes rttr) {
		//게시물등록
		log.info("write: "+ communityVO);
		service.register(communityVO);
		rttr.addFlashAttribute("result",communityVO.getCommuNo());
		
		return "redirect:/community/community_main";
	}
	
	//특정게시물 조회/수정 페이지 이동
	@GetMapping({"/community_read", "/update"})
	public void get(@RequestParam("commuNo") int commuNo, CommunityCommentVO comment, Model model) {
		log.info("community_read or update" );
		model.addAttribute("commu",service.get(commuNo));
		model.addAttribute("comment",commService.getComment(commuNo));
			
	}

	//게시물 수정
	@PostMapping("/update")
	public String modify(CommunityVO communityVO, RedirectAttributes rttr, Criteria cri) {
		log.info("modify : " + communityVO); 
		if(service.modify(communityVO)) {
			rttr.addFlashAttribute("result","success");
		}
		return "redirect:/community/community_read?commuNo="+communityVO.getCommuNo();
	}
	
	//게시물삭제
	@PostMapping("/delete")
	public String remove(@RequestParam("commuNo") int commuNo, RedirectAttributes rttr, Criteria cri) {
		log.info("remove...." + commuNo);
		if(service.remove(commuNo)) {
			rttr.addFlashAttribute("result","success");
		}
		return "redirect:/community/community_main" + cri.listLink();
	}
	
	
	
	//댓글등록
	@PostMapping("/reply")
	public String regComment(CommunityCommentVO comment, Criteria cri,RedirectAttributes rttr) {
		//게시물등록
		log.info("regComment.... : "+ comment);
		commService.regComment(comment);
		rttr.addFlashAttribute("commu", comment.getCommuNo());
			
		return "redirect:/community/community_read?commuNo="+comment.getCommuNo();
	}
	
	//댓글삭제
	@PostMapping("/delComment")
	public String deleteComment(CommunityVO communityVO, CommunityCommentVO comment, RedirectAttributes rttr, Criteria cri) {
		log.info("delete Commen.... : "+ comment);
		commService.deleteComment(comment);
		rttr.addFlashAttribute("commu", communityVO.getCommuNo());
		
		//댓글 삭제시 commService.getComment()에서 commu_no를 0으로 가져옴
		return "redirect:/community/community_read?commuNo="+communityVO.getCommuNo();
	}
	 
}
