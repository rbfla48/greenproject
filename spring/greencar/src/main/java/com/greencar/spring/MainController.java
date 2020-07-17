package com.greencar.spring;

import com.greencar.spring.service.*;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

//@Controller==>현재클래스가 컨트롤러임을 선언
// 웹 클라이언트에서 들어온 요청을 해당 비지니스 로직을 호출하고 수행결과와 함께 응답을 해주는 Dispatcher 역할
@Controller
public class MainController {
	Logger log = Logger.getLogger(this.getClass());
	
	//@RequestMapping==>웹클라이언트(jsp) 에서 들어온 요청에 해당하는 비지니스 로직을 찾아주는 역할
	@RequestMapping(value = "/")
	public String home() {
		
		//클라이언트에게 응답할 페이지 return.
		//servlet-context의 prefix와 suffix에 의해 자동으로 
		//"/WEB-INF/views/main.jsp" 의 경로가 완성된다
		return "main";
	}
	 
	//Service 영역의 접근을 위한 선언(mainsevice에 접근)
	@Resource(name="mainService")
	private MainService mainService;
	
	//요청 URL을 의미한다. /sample/openSampleBoardList.do 라는 주소를 호출하게 되면, 이 주소는 @RequestMapping 어노테이션과 매핑되어, 해당 메서드가 실행된다.
	@RequestMapping(value="/service/openMainService.do")
	public ModelAndView openMainBoardList(Map<String,Object>commandMap) throws Exception {
		//화면에 표시할 jsp파일
		ModelAndView mv = new ModelAndView("main");
		
		//List를 선언하였다. 그리고 그 List의 형식은 Map<String, Object>인데, 
		//하나의 게시글 목록에도 여러가지 정보가 존재한다. 글번호, 글제목, 작성일 등의 내용을 Map에 저장하려는 것이다. 
		//Map은 다시 키(key)와 값(value)로 구분되어지는데 각각의 컬럼인 글번호, 글제목, 작성일 등의 키와 실제 값이 저장된다.
		List<Map<String,Object>> list 
					//Controller는 단순히 어떤 주소와 화면을 연결하고, 비지니스 로직을 호출하는 역할을 한다. 실제로 여러가지 비지니스 로직은 Service에서 작성한다. 
					//여기서는 단순히 게시글을 조회하는 역할을 하지만, 나중에 게시글 상세조회의 경우, 조회수 증가와 게시글 상세내용을 조회하는 두가지 기능이 필요한데, 이를 Service에서 처리해주게 된다. 
					= mainService.selectBoardList(commandMap);
		//서비스로직의 결과를 ModelAndView 객체에 담아서 클라이언트, 즉 jsp에서 그 결과를 사용할 수 있도록 한다. 
		//mv에 값을 저장하는것은 map과 똑같이 키(key)와 값(value)로 구성이 되는데, 
		//sampleService.selectBoardList 메서드를 통해 얻어온 결과 list를 "list"라는 이름으로 저장하고 있다.
		mv.addObject("list",list);
		return mv;
				
	}
	
}
