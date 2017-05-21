package com.bean;

public class PropertyCoveragesBean {
	
	

	private String personalProperty;
	private String liabilityProtection;
	private String guestMedicalProtection;
	private String additional;
	private String dwelling;
	private String id_number;
	
	
	public PropertyCoveragesBean()
	{
		
	}
	
	
	public PropertyCoveragesBean(String personalProperty,String liabilityProtection, String guestMedicalProtection,String additional, String dwelling, String id_number) {
		
		this.personalProperty = personalProperty;
		this.liabilityProtection = liabilityProtection;
		this.guestMedicalProtection = guestMedicalProtection;
		this.additional = additional;
		this.dwelling = dwelling;
		this.id_number = id_number;
	}
	
	
	public PropertyCoveragesBean(String dwelling, String personalProperty, String liabilityProtection, String guestMedicalProtection, String additional) {
		
		this.dwelling = dwelling;
		this.personalProperty = personalProperty;
		this.liabilityProtection = liabilityProtection;
		this.guestMedicalProtection = guestMedicalProtection;
		this.additional = additional;
	}
	
	
	
	public String getId_number() {
		return id_number;
	}

	public void setId_number(String id_number) {
		this.id_number = id_number;
	}

	public String  getAdditional(){
		return additional;
	}
	
	public void setAdditional(String additional) {
		this.additional = additional;
	}
	
	public String getDwelling() {
		return dwelling;
	}
	
	public void setDwelling(String dwelling) {
		this.dwelling = dwelling;
	}
	
	public String getPersonalProperty() {
		return personalProperty;
	}
	
	public void setPersonalProperty(String personalProperty) {
		this.personalProperty = personalProperty;
	}
	
	public String getLiabilityProtection() {
		return liabilityProtection;
	}
	
	public void setLiabilityProtection(String liabilityProtection) {
		this.liabilityProtection = liabilityProtection;
	}
	
	public String getGuestMedicalProtection() {
		return guestMedicalProtection;
	}
	
	public void setGuestMedicalProtection(String guestMedicalProtection) {
		this.guestMedicalProtection = guestMedicalProtection;
	}
	
}
