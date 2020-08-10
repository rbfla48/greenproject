package com.greencar.controller.help;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.greencar.service.help.FrequentlyService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/help/*")
@AllArgsConstructor
public class FrequentlyController {
	
	@Inject
	FrequentlyService service;
	
	//자주 묻는 질문 목록
	@GetMapping("/frequentlyqa")
	public String list(Model model) {
		log.info("controller");
		model.addAttribute("list", service.getList());
		return "help/frequentlyqa";
	}
	
	//자주 묻는 질문 목록 카테고리별 불러오기
	@GetMapping("/frequentlyqaByCate")
	public String cateList(@RequestParam("freCategory") String freCategory, Model model) {
		log.info("controller");
		model.addAttribute("list", service.getCateList(freCategory));
		return "help/frequentlyqa";
	}
	
	
	
	
	
	
	

}
