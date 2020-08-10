package com.greencar.vo.option;

public class OptionVO2 {
	private int optionNo2;
	private String optionName2;
	private String optionTire2;
	private String optionWheel2;
	private String optionNavi2;
	private String optionSeat2;
	private String optionFrame2;
	private String optionWindow2;
	private int optionCost2;
	public int getOptionNo2() {
		return optionNo2;
	}
	public void setOptionNo2(int optionNo2) {
		this.optionNo2 = optionNo2;
	}
	public String getOptionName2() {
		return optionName2;
	}
	public void setOptionName2(String optionName2) {
		this.optionName2 = optionName2;
	}
	public String getOptionTire2() {
		return optionTire2;
	}
	public void setOptionTire2(String optionTire2) {
		this.optionTire2 = optionTire2;
	}
	public String getOptionWheel2() {
		return optionWheel2;
	}
	public void setOptionWheel2(String optionWheel2) {
		this.optionWheel2 = optionWheel2;
	}
	public String getOptionNavi2() {
		return optionNavi2;
	}
	public void setOptionNavi2(String optionNavi2) {
		this.optionNavi2 = optionNavi2;
	}
	public String getOptionSeat2() {
		return optionSeat2;
	}
	public void setOptionSeat2(String optionSeat2) {
		this.optionSeat2 = optionSeat2;
	}
	public String getOptionFrame2() {
		return optionFrame2;
	}
	public void setOptionFrame2(String optionFrame2) {
		this.optionFrame2 = optionFrame2;
	}
	public String getOptionWindow2() {
		return optionWindow2;
	}
	public void setOptionWindow2(String optionWindow2) {
		this.optionWindow2 = optionWindow2;
	}
	public int getOptionCost2() {
		return optionCost2;
	}
	public void setOptionCost2(int optionCost2) {
		this.optionCost2 = optionCost2;
	}
	@Override
	public String toString() {
		return String.format(
				"OptionVO2 [optionNo2=%s, optionName2=%s, optionTire2=%s, optionWheel2=%s, optionNavi2=%s, optionSeat2=%s, optionFrame2=%s, optionWindow2=%s, optionCost2=%s]",
				optionNo2, optionName2, optionTire2, optionWheel2, optionNavi2, optionSeat2, optionFrame2,
				optionWindow2, optionCost2);
	}
}
