package com.greencar.vo.admin;


public class SubCriteria  {
	
	private int page;
	private int perPageNum;
	private int rowStart;
	private int rowEnd;
	
	private String oboCategory;
	
	public SubCriteria() {
		this.page = 1;
		this.perPageNum = 10;
		//추가
		this.rowStart=this.getRowStart();
		this.rowEnd = this.getRowEnd();
	}
	
	public SubCriteria(int page, int perPageNum, String oboCategory) {
		this.page = page;
		this.perPageNum = perPageNum;
		//추가
		this.rowStart=this.getRowStart();
		this.rowEnd = this.getRowEnd();
		this.oboCategory = oboCategory;
	}
	
	public SubCriteria(Criteria cri) {
		this.setPage(cri.getPage());
		this.setPerPageNum(cri.getPerPageNum());
		this.setRowStart(cri.getRowStart());
		this.setRowEnd(cri.getRowEnd());
	}

	public String getOboCategory() {
		return oboCategory;
	}

	public void setOboCategory(String oboCategory) {
		this.oboCategory = oboCategory;
	}
	
	public void setPage(int page) {
		if( page <= 0) {
			this.page = 1;
			return;
		}
		this.page = page;
	}
	
	public void setPerPageNum(int perPageNum) {
		if (perPageNum <= 0 || perPageNum > 100) {
			this.perPageNum = 10;
			return;
		}
		this.perPageNum = perPageNum;
	}
	
	public int getPage() {
		return page;
	}
	
	public int getPageStart() {
		return (this.page - 1) * perPageNum;
	}
	
	public int getPerPageNum() {
		return this.perPageNum;
	}
	
	public int getRowStart() {
		rowStart = ((page - 1) * perPageNum) +1;
		return rowStart;
	}
	
	public int getRowEnd() {
		rowEnd = rowStart + perPageNum - 1;
		return rowEnd;
	}
	
	public void setRowStart(int rowStart) {
		this.rowStart = rowStart;
	}

	public void setRowEnd(int rowEnd) {
		this.rowEnd = rowEnd;
	}

	@Override
	public String toString() {
		return "SubCriteria [page=" + page + ", perPageNum=" + perPageNum + ", rowStart=" + rowStart + ", rowEnd="
				+ rowEnd + ", oboCategory=" + oboCategory + "]";
	}

	
}
