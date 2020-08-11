package com.greencar.vo.goods;

public class GoodsVO {

	private int goodsNo;
	private String goodsName;
	private String goodsSize;
	private String goodsType;
	private int goodsPrice;
	private int goodsEfficient;
	private String goodsFuel;
	private int goodsCode;
	private int brandCode;
	public int getGoodsNo() {
		return goodsNo;
	}
	public void setGoodsNo(int goodsNo) {
		this.goodsNo = goodsNo;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public String getGoodsSize() {
		return goodsSize;
	}
	public void setGoodsSize(String goodsSize) {
		this.goodsSize = goodsSize;
	}
	public String getGoodsType() {
		return goodsType;
	}
	public void setGoodsType(String goodsType) {
		this.goodsType = goodsType;
	}
	public int getGoodsPrice() {
		return goodsPrice;
	}
	public void setGoodsPrice(int goodsPrice) {
		this.goodsPrice = goodsPrice;
	}
	public int getGoodsEfficient() {
		return goodsEfficient;
	}
	public void setGoodsEfficient(int goodsEfficient) {
		this.goodsEfficient = goodsEfficient;
	}
	public String getGoodsFuel() {
		return goodsFuel;
	}
	public void setGoodsFuel(String goodsFuel) {
		this.goodsFuel = goodsFuel;
	}
	public int getGoodsCode() {
		return goodsCode;
	}
	public void setGoodsCode(int goodsCode) {
		this.goodsCode = goodsCode;
	}
	public int getBrandCode() {
		return brandCode;
	}
	public void setBrandCode(int brandCode) {
		this.brandCode = brandCode;
	}
	@Override
	public String toString() {
		return String.format(
				"GoodsVO [goodsNo=%s, goodsName=%s, goodsSize=%s, goodsType=%s, goodsPrice=%s, goodsEfficient=%s, goodsFuel=%s, goodsCode=%s, brandCode=%s]",
				goodsNo, goodsName, goodsSize, goodsType, goodsPrice, goodsEfficient, goodsFuel, goodsCode, brandCode);
	}
	
	
}
