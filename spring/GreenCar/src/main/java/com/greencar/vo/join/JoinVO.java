package com.greencar.vo.join;

import java.util.Date;

public class JoinVO {

	private int userNo;
	private String userEmail;
	private String userPw;
	private String userNick;
	private String userBirthYY;
	private String userBirthMM;
	private String userBirthDD;
	private String userPh;
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
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
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
	public String getUserPh() {
		return userPh;
	}
	public void setUserPh(String userPh) {
		this.userPh = userPh;
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
				"JoinVO [userNo=%s, userEmail=%s, userPw=%s, userNick=%s, userBirthYY=%s, userBirthMM=%s, userBirthDD=%s, userPh=%s, userAddress=%s, userAddressDetail=%s, userJoinDate=%s]",
				userNo, userEmail, userPw, userNick, userBirthYY, userBirthMM, userBirthDD, userPh, userAddress,
				userAddressDetail, userJoinDate);
	}
}