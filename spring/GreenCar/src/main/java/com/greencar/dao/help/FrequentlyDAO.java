package com.greencar.dao.help;

import java.util.List;

import com.greencar.vo.help.FrequentlyVO;

public interface FrequentlyDAO {
	
	public List<FrequentlyVO> getList();
	
	public List<FrequentlyVO> getCateList(String freCategory);

}
