package com.greencar.controller.login;


import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.greencar.service.login.SearchIdPwService;


@Controller
@RequestMapping("/login/*")
public class SearchIdPwController {
	
	@Inject
	private SearchIdPwService service;
	
	
	@RequestMapping(value="/searchIdPw", method = RequestMethod.GET)
	public String findEmail() {
		return "login/searchIdPw";
	}
	
	@RequestMapping(value="/searchIdProc", method = RequestMethod.GET)
	public String findEmail(@RequestParam("userNick") String userNick, Model model) {
		model.addAttribute("findEmail", service.findEmail(userNick));
		model.addAttribute("userNick", userNick);
		return "login/searchIdPw";
	}
	
	
	@RequestMapping(value="/searchPwProc", method = RequestMethod.GET)
	public String findPw(@RequestParam("userEmail") String userEmail, Model model) {
		model.addAttribute("findPw", service.findPw(userEmail));
		model.addAttribute("userEmail", userEmail);
		return "login/searchIdPw";
	}
	
	
	
	
	
	
}
