package com.greencar.controller.admin;


import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.greencar.service.admin.OnebyoneService;
import com.greencar.vo.admin.Criteria;
import com.greencar.vo.admin.OnebyoneVO;
import com.greencar.vo.admin.PageMaker;
import com.greencar.vo.admin.SubCriteria;

@Controller
@RequestMapping("/admin/*")
public class OnebyoneController {

	private static final Logger logger = LoggerFactory.getLogger(OnebyoneController.class);
	
	@Inject
	OnebyoneService service;
	
	// 1:1 문의글 리스트
	@RequestMapping(value="/onebyonelist", method = RequestMethod.GET)
	public String list(Model model, Criteria cri) {
		logger.info("onebyonelist");
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listCount());
		model.addAttribute("onebyoneAllSize", service.listCount());
		model.addAttribute("onebyoneNewSize", service.newListCount());
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("onebyonelist", service.list(cri));
		return "admin/onebyonelist";
	}
	
	
	// 1:1 문의글 상세보기
	@RequestMapping(value="/onebyoneview", method = RequestMethod.GET)
	public String read(@RequestParam("oboNo") int oboNo, Model model) {
		logger.info("onebyoneview Get");
		logger.info("service.read(oboNo): "+service.read(oboNo));
		model.addAttribute("onebyoneview", service.read(oboNo));
		return "admin/onebyoneview";
	}
	
	@RequestMapping(value="/onebyoneview", method = RequestMethod.POST, produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String read(@RequestParam("oboNo") int oboNo, 
					   @RequestParam("answerBox") String answerBox, Model model) {
		logger.info("onebyoneview Post");
		String msg;
		String json = "";
		//model.addAttribute("onebyoneview", service.read(oboNo));
		logger.info("answerBox : " + answerBox);
		OnebyoneVO vo = new OnebyoneVO();
		vo.setOboNo(oboNo);
		vo.setOboAnswer(answerBox);
		logger.info("vo : "+vo);
		
		if (service.answer(vo) == true) {
			msg = "답변 등록";
		} else {
			msg = "답변 실패";
		};
		List<Object> result=new ArrayList<>();
		result.add(msg);
		result.add(vo);
		
		try {
			json = new ObjectMapper().writeValueAsString(result);
		} catch (JsonProcessingException e) {
			logger.error("json생성실패");
			// e.printStackTrace();
		}
		//return "admin/onebyoneview";
		return json;
	}
	
	// category별 문의리스트
	@GetMapping("/onebyoneByCate")
	public String CateList(@RequestParam("oboCategory") String oboCategory, 
						   @RequestParam("page") int page, Model model) {
		SubCriteria scri = new SubCriteria(page, 10, oboCategory);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(new Criteria(scri));
		pageMaker.setTotalCount(service.listCount());
		
		logger.info("scri****************** "+scri);
		
		List<OnebyoneVO> onebyonelist = service.listPageByCate(scri);
		
		model.addAttribute("onebyoneAllSize", service.listCount());
		model.addAttribute("onebyoneNewSize", service.newListCount());
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("onebyonelist", onebyonelist);
		return "admin/onebyonelist";
	}
	
	// 1:1 문의글 무응답 리스트
	@RequestMapping(value="/listPageNoAnswer", method = RequestMethod.GET)
	public String listPageNoAnswer(Model model, Criteria cri) {
		logger.info("listPageNoAnswer");
		logger.info("cri : " + cri);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listCount());
		model.addAttribute("onebyoneAllSize", service.listCount());
		model.addAttribute("onebyoneNewSize", service.newListCount());
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("onebyonelist", service.listPageNoAnswer(cri));
		return "admin/onebyonelist";
	}
}
