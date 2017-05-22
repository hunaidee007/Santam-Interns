package com.bean;


public class InsuranceInquiry {
	private Integer enquiryId;
	private String enquiryDate;
	private String  agentUsername;
	private String idNumber;
	
	public InsuranceInquiry(String enquiryDate,
			String agentUsername, String idNumber) {
		this.enquiryDate = enquiryDate;
		this.agentUsername = agentUsername;
		this.idNumber = idNumber;
	}
	
	public String getIdNumber() {
		return idNumber;
	}
	public void setIdNumber(String idNumber) {
		this.idNumber = idNumber;
	}
	public Integer getEnquiryId() {
		return enquiryId;
	}
	public void setEnquiryId(Integer enquiryId) {
		this.enquiryId = enquiryId;
	}
	public String getEnquiryDate() {
		return enquiryDate;
	}
	public void setEnquiryDate(String enquiryDate) {
		this.enquiryDate = enquiryDate;
	}
	public String getAgentUsername() {
		return agentUsername;
	}
	public void setAgentUsername(String agentUsername) {
		this.agentUsername = agentUsername;
	}
}
