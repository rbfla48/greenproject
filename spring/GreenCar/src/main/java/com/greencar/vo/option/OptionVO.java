package com.greencar.vo.option;

public class OptionVO {
	private int optionNo;
	private String optionName;
	private String optionTire;
	private String optionWheel;
	private String optionNavi;
	private String optionSeat;
	private String optionFrame;
	private String optionWindow;
	private int optionCost;
	public int getOptionNo() {
		return optionNo;
	}
	public void setOptionNo(int optionNo) {
		this.optionNo = optionNo;
	}
	public String getOptionName() {
		return optionName;
	}
	public void setOptionName(String optionName) {
		this.optionName = optionName;
	}
	public String getOptionTire() {
		return optionTire;
	}
	public void setOptionTire(String optionTire) {
		this.optionTire = optionTire;
	}
	public String getOptionWheel() {
		return optionWheel;
	}
	public void setOptionWheel(String optionWheel) {
		this.optionWheel = optionWheel;
	}
	public String getOptionNavi() {
		return optionNavi;
	}
	public void setOptionNavi(String optionNavi) {
		this.optionNavi = optionNavi;
	}
	public String getOptionSeat() {
		return optionSeat;
	}
	public void setOptionSeat(String optionSeat) {
		this.optionSeat = optionSeat;
	}
	public String getOptionFrame() {
		return optionFrame;
	}
	public void setOptionFrame(String optionFrame) {
		this.optionFrame = optionFrame;
	}
	public String getOptionWindow() {
		return optionWindow;
	}
	public void setOptionWindow(String optionWindow) {
		this.optionWindow = optionWindow;
	}
	public int getOptionCost() {
		return optionCost;
	}
	public void setOptionCost(int optionCost) {
		this.optionCost = optionCost;
	}
	@Override
	public String toString() {
		return String.format(
				"OptionVO [optionNo=%s, optionName=%s, optionTire=%s, optionWheel=%s, optionNavi=%s, optionSeat=%s, optionFrame=%s, optionWindow=%s, optionCost=%s]",
				optionNo, optionName, optionTire, optionWheel, optionNavi, optionSeat, optionFrame, optionWindow,
				optionCost);
	}
}
