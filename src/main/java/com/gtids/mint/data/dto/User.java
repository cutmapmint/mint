/**
 * 
 */
package com.gtids.mint.data.dto;

import java.io.Serializable;

/**
 * @author Acharya K
 *
 */
public class User implements Serializable {
	
	private static final long serialVersionUID = -2669714943407947771L;

	private Integer userId;
	private String username;
	private String password;
	private String role;
	private Integer enabled;
	private String emailId;
	private String mobile;
	private String imei;
	private String fingerPrint;
	private String bank;
	private Integer branchCode;
	private String city;
	private String createdDate;
	private String txnKey;
	private String aadharNo;
	
	
	/**
	 * @return the aadharNo
	 */
	public String getAadharNo() {
		return aadharNo;
	}
	/**
	 * @param aadharNo the aadharNo to set
	 */
	public void setAadharNo(String aadharNo) {
		this.aadharNo = aadharNo;
	}
	/**
	 * @return the fingerPrint
	 */
	public String getFingerPrint() {
		return fingerPrint;
	}
	/**
	 * @param fingerPrint the fingerPrint to set
	 */
	public void setFingerPrint(String fingerPrint) {
		this.fingerPrint = fingerPrint;
	}
	/**
	 * @return the txnKey
	 */
	public String getTxnKey() {
		return txnKey;
	}
	/**
	 * @param txnKey the txnKey to set
	 */
	public void setTxnKey(String txnKey) {
		this.txnKey = txnKey;
	}
	/**
	 * @return the mobile
	 */
	public String getMobile() {
		return mobile;
	}
	/**
	 * @param mobile the mobile to set
	 */
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	/**
	 * @return the imei
	 */
	public String getImei() {
		return imei;
	}
	/**
	 * @param imei the imei to set
	 */
	public void setImei(String imei) {
		this.imei = imei;
	}
 
	/**
	 * @return the userId
	 */
	public Integer getUserId() {
		return userId;
	}
	/**
	 * @param userId the userId to set
	 */
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}
	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}
	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	/**
	 * @return the role
	 */
	public String getRole() {
		return role;
	}
	/**
	 * @param role the role to set
	 */
	public void setRole(String role) {
		this.role = role;
	}
	/**
	 * @return the enabled
	 */
	public Integer getEnabled() {
		return enabled;
	}
	/**
	 * @param enabled the enabled to set
	 */
	public void setEnabled(Integer enabled) {
		this.enabled = enabled;
	}
	/**
	 * @return the emailId
	 */
	public String getEmailId() {
		return emailId;
	}
	/**
	 * @param emailId the emailId to set
	 */
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	/**
	 * @return the bank
	 */
	public String getBank() {
		return bank;
	}
	/**
	 * @param bank the bank to set
	 */
	public void setBank(String bank) {
		this.bank = bank;
	}
	/**
	 * @return the branchCode
	 */
	public Integer getBranchCode() {
		return branchCode;
	}
	/**
	 * @param branchCode the branchCode to set
	 */
	public void setBranchCode(Integer branchCode) {
		this.branchCode = branchCode;
	}
	/**
	 * @return the city
	 */
	public String getCity() {
		return city;
	}
	/**
	 * @param city the city to set
	 */
	public void setCity(String city) {
		this.city = city;
	}
	/**
	 * @return the createdDate
	 */
	public String getCreatedDate() {
		return createdDate;
	}
	/**
	 * @param createdDate the createdDate to set
	 */
	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "User [userId=" + userId + ", username=" + username + ", password=" + password + ", role=" + role
				+ ", enabled=" + enabled + ", emailId=" + emailId + ", mobile=" + mobile + ", imei=" + imei
				+ ", fingerPrint=" + fingerPrint + ", bank=" + bank + ", branchCode=" + branchCode + ", city=" + city
				+ ", createdDate=" + createdDate + ", txnKey=" + txnKey + ", aadharNo=" + aadharNo + "]";
	}
 
 
}
