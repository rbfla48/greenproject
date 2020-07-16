package com.greencar.spring;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//@Controller==>현재클래스가 컨트롤러임을 선언
@Controller
public class MainController {
	
	//@RequestMapping==>웹클라이언트(jsp) 에서 들어온 요청에 해당하는 비지니스 로직을 찾아주는 역할
	@RequestMapping(value = "/")
	public String home() {
		
		//클라이언트에게 응답할 페이지 return.
		//servlet-context의 prefix와 suffix에 의해 자동으로 
		//"/WEB-INF/views/main.jsp" 의 경로가 완성된다
		return "main";
	}
	
}
