package com.greencar.vo.news;

public class NewsVO {
	private int newsNo;
	private String newsTitle;
	private String newsText;
	public int getNewsNo() {
		return newsNo;
	}
	public void setNewsNo(int newsNo) {
		this.newsNo = newsNo;
	}
	public String getNewsTitle() {
		return newsTitle;
	}
	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}
	public String getNewsText() {
		return newsText;
	}
	public void setNewsText(String newsText) {
		this.newsText = newsText;
	}
	@Override
	public String toString() {
		return String.format("NewsVO [newsNo=%s, newsTitle=%s, newsText=%s]", newsNo, newsTitle, newsText);
	}
}
