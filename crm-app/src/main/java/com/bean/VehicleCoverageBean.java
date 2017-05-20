package com.bean;

public class VehicleCoverageBean {
	String coverageId;
	//String name;
	///String productId;/// to be changed to enquiry id
	Integer enquiryId;
	String coverageName;
	
	public String getCoverageName() {
		return coverageName;
	}
	public void setCoverageName(String coverageName) {
		this.coverageName = coverageName;
	}
	public String getCoverageId() {
		return coverageId;
	}
	public void setCoverageId(String coverageId) {
		this.coverageId = coverageId;
	}
	public Integer getEnquiryId() {
		return enquiryId;
	}
	public void setEnquiryId(Integer enquiryId) {
		this.enquiryId = enquiryId;
	}
	
	
}
