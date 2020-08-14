package com.greencar.controller;


import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.greencar.service.goods.GoodsService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String home() {
		return "main";
	}
	
	
}
