package com.javateam.SpringMember.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.javateam.SpringMember.service.MemberService;
import com.javateam.SpringMember.vo.MemberDTO;
import com.javateam.SpringMember.vo.MemberVO;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("member")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("member_join.do")
	public String memberJoinForm() {
	
		log.debug("회원가입폼");
		return "/member/member_join";
	}
	
	@RequestMapping("joinProc.do")
	public String joinProc(MemberDTO memberDTO) {
		
		log.debug("회원가입 처리");
		
		log.debug("##########################################");
		log.debug("회원정보 : " + memberDTO);
		
		MemberVO memberVO = new MemberVO(memberDTO);
		log.debug("저장 회원 정보 : " + memberVO);
		memberService.insertMember(memberVO);
		
		return "redirect:/member/member_join.do";
	}
	
	@RequestMapping("member_view.do")
	public String memberViewForm(@RequestParam("memberId") String memberId,
					Model model) {
	
		log.debug("회원조회(보기)폼");

		MemberVO memberVO = memberService.getMember(memberId);
		log.info("회원 정보 : " + memberVO);
		
		log.info("회원 정보 : VO -> DTO 변환");
		MemberDTO member = new MemberDTO(memberVO);
		
		model.addAttribute("member", member);
		
		return "/member/member_view";
	}
	
	@RequestMapping("member_update.do")
	public String memberUpdateForm(@RequestParam("memberId") String memberId,
					@RequestParam(value="movePage", defaultValue="") String movePage,
					Model model) {
	
		log.debug("회원수정폼");
		
		MemberVO memberVO = memberService.getMember(memberId);
		
		log.info("회원 정보 : VO -> DTO 변환");
		MemberDTO member = new MemberDTO(memberVO);		
		
		model.addAttribute("member", member);
		// 추가
		model.addAttribute("movePage", movePage);
		
		return "/member/member_update";
	}

	@RequestMapping("updateProc.do")
	public String updateProc(@ModelAttribute("member") MemberDTO newMemberDTO,
							@RequestParam("memberPassword1") String newMemberPassword,
							@RequestParam(value="movePage", defaultValue="") String movePage) {
		
		
		log.debug("회원수정 처리");
		
		log.info("#### 회원정보 : " + newMemberDTO);
			
		MemberDTO legacyMember = new MemberDTO(memberService.getMember(newMemberDTO.getMemberId()));
		
		log.debug("##########################################");
		log.debug("기존 회원정보 : " + legacyMember);
		log.debug("수정 회원정보 : " + newMemberDTO);
		log.debug("신규 패쓰워드 : " + newMemberPassword);
				
		MemberVO memberVO = new MemberVO(newMemberDTO);
		
		// 패쓰워드 갱신 버그 패치
		String newMemberPw = newMemberPassword.trim().equals("") ? memberVO.getMemberPassword()
						   : newMemberPassword;
		memberVO.setMemberPassword(newMemberPw);
		
		log.debug("저장 회원 정보 : " + memberVO);		
		
		memberService.updateMember(memberVO);
		
		// 교정전
		// return "redirect:/member/member_update.do?memberId="+newMemberDTO.getMemberId();
		
		// 추가 : 이동 URL 조정
		// 교정후
		return movePage.equals("") ? 
			   "redirect:/member/member_update.do?memberId="+newMemberDTO.getMemberId() :
			   "redirect:/admin/"+movePage;
}
	
	@RequestMapping("member_delete.do")
	public String memberDeleteForm() {
	
		log.debug("회원삭제폼");
		return "/member/member_delete";
	}
	
	@RequestMapping("deleteProc.do")
	public String memberDeleteProc(@RequestParam("memberId") String memberId,
					@RequestParam(value="movePage", defaultValue="") String movePage,
					Model model) {
	
		log.debug("회원삭제 처리 : " + memberService.isMember(memberId));
		
		if (memberService.isMember(memberId)==true) {
			memberService.deleteMember(memberId);
		} else {
			model.addAttribute("db_error", "회원 정보가 존재하지 않습니다.");
			return "/error/db-err";
		}
		
		// 교정전	
		// return "redirect:/member/member_delete.do";
			
		// 추가 : 이동 URL 조정
		// 교정후
		return movePage.equals("") ? "redirect:/member/member_delete.do" :
			   "redirect:/admin/"+movePage;
	}
	
}