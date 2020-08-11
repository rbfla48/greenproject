package com.javateam.SpringMember.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javateam.SpringMember.dao.AuthJdbcService;

import lombok.extern.slf4j.Slf4j;
 
 
@Controller
@Slf4j
public class AuthController {
	
	@Autowired
	private AuthJdbcService authJdbcService;
    
    @RequestMapping(value="/login", method = RequestMethod.GET)
    public String login(ModelMap model) {
    	
    	log.info("login");
    	
    	return "/member/login";
    }
    
    @RequestMapping(value="/logoutProc", method = RequestMethod.GET)
    public String logout(ModelMap model,
    					 HttpServletRequest request,
    					 HttpServletResponse response) {
    	
    	log.info("logout");
    	
	    Authentication auth 
		    	= SecurityContextHolder.getContext()
		    						   .getAuthentication();
	    
	    log.info("auth : "+auth);
	    
	    // logout !
	    if (auth != null) {    
	        new SecurityContextLogoutHandler().logout(request, response, auth);
	    }

	    return "/member/logout";
    } //
    
    @RequestMapping(value="/loginError", method = RequestMethod.GET)
    public String loginError(ModelMap model) {
    	
	    model.addAttribute("error", "true");
	    model.addAttribute("msg", "로그인 정보가 잘못되었습니다.");
	    
	    return "/member/login";
    } //
    
    // id 유무 점검 : spring security bug patch !
 	@RequestMapping(value="/login/idCheck", produces="text/plain; charset=UTF-8")
 	@ResponseBody
 	public String idCheck(@RequestParam("username") String userName,
 						  Model model) {
 		
 		log.info("########## 아이디 존재 여부 점검 ###############");
 		log.info("userName : "+userName);
 		
 		boolean flag = authJdbcService.hasUsername(userName);
 		return flag+"";
 	} //
 
} //