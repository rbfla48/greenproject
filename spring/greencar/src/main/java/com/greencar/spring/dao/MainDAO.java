package com.greencar.spring.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

//@Repository==>현재 클래스가 DAO임을 선언하고 이름을 mainDAO로 지정
//DAO는 데이터베이스에 접근하여 데이터를 조작하는 (가져오거나 입력하는 등) 역할만 수행한다.
@Repository("mainDAO")
public class MainDAO extends AbstractDAO{

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectBoradList(Map<String, Object> map) throws Exception{
		
		//selectList는 MyBatis의 기본 기능으로, 리스트롤 조회할때 사용한다.
		//"sample.selectBoardList"가 쿼리 이름(main_SQL.xml에 mapper로 지정되어있음)이고, 
		//Controller에서부터 계속 넘어온 Map<String,Object> map이 쿼리 실행시 필요한 변수들이다.
		return (List<Map<String, Object>>)selectList("sample.selectBoardList",map);
	}
	
	

}
