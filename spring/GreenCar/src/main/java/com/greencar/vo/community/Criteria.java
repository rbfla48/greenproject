package com.greencar.vo.community;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Data;


@Data
public class Criteria {
	
	//페이징 설정
	private int pageNum;//페이지 기본값(1페이지로 시작)
	private int amount;//페이지 갯수(10페이지까지)
	
	//검색기능 설정
	private String type;
	private String keyword;
	
	public Criteria() {
		this(1,20);
	}

	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum; 
		this.amount = amount;
	}
	
	//검색기능 설정
	public String[] getTypeArr() {
		//검색조건을 배열로 처리
		return type == null? new String[] {}: type.split("");
	}
	
	//admin/commuList URL 생성
	public String listLink() {
		UriComponentsBuilder builder = UriComponentsBuilder.fromPath("")
					.queryParam("pageNum", this.pageNum)
					.queryParam("amount", this.getAmount())
					.queryParam("type", this.getType())
					.queryParam("keyword", this.getKeyword());
		return builder.toUriString();
	}
}
