package com.greencar.spring;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//@Controller 어노테이션 => 현재클래스가 컨트롤러임을 선언
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	//@RequestMapping 어노테이션 => jsp에서 들어온 요청에 해당하는 비지니스로직 검색
	//RequestMethod.GET => jsp에서 들어온 요청이 POST인지, GET인지 선언
	@RequestMapping(value = "/", method = RequestMethod.GET) 
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		//비즈니스로직에서 수행한 결과를 화면으로 보내주는 역할
		//"serverTime"이라는 이름으로 formattedDate 전송
		model.addAttribute("serverTime", formattedDate );
		
		//수행결과 응답을 어디로 보낼지 명시(jsp파일명을 의미)
		//servlet-context에서 자동으로 home 앞에 "/WEB-INF/views"를 붙여주고(prefix)
		//							  뒤에는 ".jsp"를 붙여준다.(suffix)
		return "home";
	}
	
}
