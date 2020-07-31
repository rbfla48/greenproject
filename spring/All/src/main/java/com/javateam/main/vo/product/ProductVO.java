package com.javateam.main.vo.product;

public class ProductVO {

	private int productNo;
	private String productName;
	private String productSize;
	private String productType;
	private String productPrice;
	private String productEfficient;
	private String productFuel;
	private String productCode;
	
	public int getProductNo() {
		return productNo;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductSize() {
		return productSize;
	}
	public void setProductSize(String productSize) {
		this.productSize = productSize;
	}
	public String getProductType() {
		return productType;
	}
	public void setProductType(String productType) {
		this.productType = productType;
	}
	public String getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}
	public String getProductEfficient() {
		return productEfficient;
	}
	public void setProductEfficient(String productEfficient) {
		this.productEfficient = productEfficient;
	}
	public String getProductFuel() {
		return productFuel;
	}
	public void setProductFuel(String productFuel) {
		this.productFuel = productFuel;
	}
	public String getProductCode() {
		return productCode;
	}
	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}
	
	@Override
	public String toString() {
		return String.format(
				"ProductVO [productNo=%s, productName=%s, productSize=%s, productType=%s, productPrice=%s, productEfficient=%s, productFuel=%s, productCode=%s]",
				productNo, productName, productSize, productType, productPrice, productEfficient, productFuel,
				productCode);
	}	
}
