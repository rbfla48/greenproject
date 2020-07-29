package com.javateam.main.vo.join;

import java.util.Date;

public class JoinVO {

	private int userNo;
	private String userEmail;
	private String userPassword;
	private String userNick;
	private String userBirthYY;
	private String userBirthMM;
	private String userBirthDD;
	private String userPhone;
	private String userAddress;
	private String userAddressDetail;
	private Date userJoinDate;
	
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserNick() {
		return userNick;
	}
	public void setUserNick(String userNick) {
		this.userNick = userNick;
	}
	public String getUserBirthYY() {
		return userBirthYY;
	}
	public void setUserBirthYY(String userBirthYY) {
		this.userBirthYY = userBirthYY;
	}
	public String getUserBirthMM() {
		return userBirthMM;
	}
	public void setUserBirthMM(String userBirthMM) {
		this.userBirthMM = userBirthMM;
	}
	public String getUserBirthDD() {
		return userBirthDD;
	}
	public void setUserBirthDD(String userBirthDD) {
		this.userBirthDD = userBirthDD;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public String getUserAddressDetail() {
		return userAddressDetail;
	}
	public void setUserAddressDetail(String userAddressDetail) {
		this.userAddressDetail = userAddressDetail;
	}
	public Date getUserJoinDate() {
		return userJoinDate;
	}
	public void setUserJoinDate(Date userJoinDate) {
		this.userJoinDate = userJoinDate;
	}
	@Override
	public String toString() {
		return String.format(
				"JoinVO [userNo=%s, userEmail=%s, userPassword=%s, userNick=%s, userBirthYY=%s, userBirthMM=%s, userBirthDD=%s, userPhone=%s, userAddress=%s, userAddressDetail=%s, userJoinDate=%s]",
				userNo, userEmail, userPassword, userNick, userBirthYY, userBirthMM, userBirthDD, userPhone,
				userAddress, userAddressDetail, userJoinDate);
	}
}