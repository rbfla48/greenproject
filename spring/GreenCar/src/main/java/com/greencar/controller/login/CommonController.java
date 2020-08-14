package com.greencar.controller.login;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class CommonController {
	
	
	//접근권한 에러설정
	@GetMapping("/accessError")
	public void accessDenied(Authentication auth, Model model) {
		log.info("accessDenied : " + auth);
		
		model.addAttribute("msg","Access Denied");
	}
	
	//고객 로그인페이지
	@GetMapping("/login/customLogin")
	public void loginInput(String error, String logout, Model model) {
		log.info("error : " + error);
		log.info("logout : " + logout);
		
		if(error != null) {
			model.addAttribute("error","Login Error Check your account");
		}
		
		if(logout != null) {
			model.addAttribute("logout", "logout....");
		}
	}
	
	@GetMapping("/login/logout")
	public String logout(HttpSession session) {
		log.info("logout.....");
		session.invalidate();
		
		return "redirect:/";
	}
}
