package com.greencar.service.help;

import java.util.List;

import com.greencar.vo.help.FrequentlyVO;

public interface FrequentlyService {
	
	public List<FrequentlyVO> getList();

	public List<FrequentlyVO> getCateList(String freCategory);
}
