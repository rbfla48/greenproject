package com.greencar.service.help;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.greencar.dao.help.FrequentlyDAO;
import com.greencar.vo.help.FrequentlyVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class FrequentlyServiceImpl implements FrequentlyService {
	
	@Inject
	private FrequentlyDAO dao;

	@Override
	public List<FrequentlyVO> getList() {
		log.info("help");
		return dao.getList();
	}
	
	@Override
	public List<FrequentlyVO> getCateList(String freCategory) {
		return dao.getCateList(freCategory);
	}


}
