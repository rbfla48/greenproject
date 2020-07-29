package com.javateam.main.controller.join;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javateam.main.service.join.JoinService;
import com.javateam.main.vo.join.JoinVO;

@Controller
@RequestMapping("/join")
public class JoinController {

private static final Logger logger = LoggerFactory.getLogger(JoinController.class);
	
	@Inject
	JoinService service;
	
	/** 회원가입 메인 페이지 */
	@RequestMapping(value = "/joinForm", method = RequestMethod.GET)
	public void getJoinForm() throws Exception{
		logger.info("get joinForm");
	} // 회원 가입 메인 페이지
	/** 회원가입 가입 */
	@RequestMapping(value = "/joinProc", method = RequestMethod.POST)
	public String postJoinForm(JoinVO joinVO) throws Exception{
		logger.info("post joinForm");
		
		service.joinForm(joinVO);
		
		return "redirect:/ ";
	} // 회원 가입
	/** 이메일 중복 점검 */
	@ResponseBody
	@RequestMapping(value="/emailCheck", method = {RequestMethod.POST, RequestMethod.GET})
	public int emailCheck(@RequestParam("userEmail") String userEmail) throws Exception {
		logger.info("emailCheck");
		int result1 = service.emailCheck(userEmail);
		try {
			if (result1 == 1) {
				return result1;
			} else if (result1 == 0) {
				service.emailCheck(userEmail);
			}
		} catch (Exception e) {
			throw new RuntimeException();
		}
		return result1;
	} // 이메일 중복 점검
	/** 닉네임 중복 점검 */
	@ResponseBody
	@RequestMapping(value="/nickCheck", method = {RequestMethod.POST, RequestMethod.GET})
	public int nickCheck(@RequestParam("userNick") String userNick) throws Exception {
		logger.info("nickCheck");
		int result2 = service.nickCheck(userNick);
		try {
			if (result2 == 1) {
				return result2;
			} else if (result2 == 0) {
				service.nickCheck(userNick);
			}
		} catch (Exception e) {
			throw new RuntimeException();
		}
		return result2;
	} // 닉네임 중복 점검
	
}
