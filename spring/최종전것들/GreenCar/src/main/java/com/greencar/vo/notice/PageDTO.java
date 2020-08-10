package com.greencar.vo.notice;

import lombok.Data;

//페이징 설정
@Data
public class PageDTO {
	
	private int startPage; //각 페이지의 시작번호
	private int endPage; //각 페이지의 끝번호
	private boolean prev, next; //페이지숫자  이전,다음 표시
	
	private int total; //전체 페이징 갯수
	private Criteria cri;
	
	public PageDTO(Criteria cri, int total) {
		this.cri = cri;
		this.total = total;
		
		//각 페이지 끝번호 ex) 11(시작페이지번호)/10.0 = 1.1 => 2(올림)*10 = 20page
		this.endPage = (int)(Math.ceil(cri.getPageNum() / 10.0) )* 10;
		//각 페이지 시작번호 ex)20page => 20-9 = 11page
		this.startPage = this.endPage - 9;
		//최종페이지 ex) 전체 119page * 1 = 119 / 한화면당 표시할 페이지갯수(10) = 11.9 => 12(올림) 
		int realEnd = (int)(Math.ceil((total * 1.0) / cri.getAmount()));
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		
		//페이지 이동 표시여부
		this.prev = this.startPage > 1;//2페이지 이상이면 이전페이지이동 표시
		this.next = this.endPage < realEnd;//최종페이지보다 작으면 다음페이지 이동표시
	}
	
}
