package com.greencar.vo.news;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class NewsPageMaker {

	private int totalCount;
	private int startPage;
	private int endPage;
	private int displayPageNum = 9;
	private NewsCriteria cri;
	private int newsCate;
	
	public void setCri (NewsCriteria cri) {
		this.cri = cri;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		calcData();
	}
	public int getTotalCount() {
		return totalCount;
	}
	public int getStartPage() {
		return startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public int getDisplayPageNum() {
		return displayPageNum;
	}
	public NewsCriteria getCri() {
		return cri;
	}
	public int getNewsCate() {
		return newsCate;
	}
	public void setNewsCate(int newsCate) {
		this.newsCate = newsCate;
	}
	private void calcData() {
		endPage = (int) (Math.ceil(cri.getPage() / (double)displayPageNum) * displayPageNum);
		startPage = (endPage - displayPageNum) +1;
	  
		int tempEndPage = (int) (Math.ceil(totalCount / (double)cri.getPerPageNum()));
		if (endPage > tempEndPage) {
			endPage = tempEndPage;
		} 
	}
	public String makeQuery(int page) {
		UriComponents uriComponents =
		UriComponentsBuilder.newInstance()
						    .queryParam("page", page)
							.build();
		return uriComponents.toUriString();
	}
}
