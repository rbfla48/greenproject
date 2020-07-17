package com.greencar.spring.service;

import com.greencar.spring.dao.MainDAO;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

//@Servcie 어노테이션을 이용하여 Service 객체임을 선언하였고, 
//이 객체의 이름은 "mainService"라고 선언하였다
@Service("mainService")
public class MainServiceImpl implements MainService{
	Logger log = Logger.getLogger(this.getClass());
	
	//service에서DAO객체 수동으로 bean 등록하여 접근
	@Resource(name="mainDAO")
	private MainDAO mainDAO; 
	
	@Override
	public List<Map<String, Object>> selectBoardList(Map<String, Object> map) throws Exception {
		//service의 selectBoardList 결과값으로 mainDAO의 selectBoradList메서드 호출
		return mainDAO.selectBoradList(map);
	}

}
