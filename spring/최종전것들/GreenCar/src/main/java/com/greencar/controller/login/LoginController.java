package com.greencar.controller.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/login/*")
public class LoginController {
	
	@GetMapping("/all")
	public void doAll() {
		log.info("access level customer.");
	}
	
	@GetMapping("/member")
	public void doMember() {
		log.info("access level memder.");
	}
	
	@GetMapping("/admin")
	public void doAdmin() {
		log.info("access level admin.");
	}
	
	
}
