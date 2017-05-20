package com.bean;

public class PropertyBean {
	
	private int propertyValue;
	private String constructionType;
	private String fireProtectionEquipment;
	private String buildingContentProtection;
	private String naturalDisasterProtection;
	private String propertyAddress;
	private String burglarBars;
	private String period;
	private String security;

	
	public int getPropertyValue() {
		return propertyValue;
	}
	public String getSecurity(){
		return security;
	}
	
	public void setSecurity(String security){
		this.security=security;
	}
	public String getPropertyAddress(){
		return propertyAddress;
	}

	public void setPeriod(String period){
		this.period = period;
	}
	
	public String getPeriod(){
		return period;
	}

	public void setPropertyAddress(String propertyAddress){
		this.propertyAddress = propertyAddress;
	}


	public void setPropertyValue(int propertyValue) {
		this.propertyValue = propertyValue;
	}


	public String getConstructionType() {
		return constructionType;
	}


	public void setConstructionType(String constructionType) {
		this.constructionType = constructionType;
	}


	public String getFireProtectionEquipment() {
		return fireProtectionEquipment;
	}


	public void setFireProtectionEquipment(String fireProtectionEquipment) {
		this.fireProtectionEquipment = fireProtectionEquipment;
	}


	public String getBuildingContentProtection() {
		return buildingContentProtection;
	}


	public void setBuildingContentProtection(String buildingContentProtection) {
		this.buildingContentProtection = buildingContentProtection;
	}


	public String getNaturalDisasterProtection() {
		return naturalDisasterProtection;
	}


	public void setNaturalDisasterProtection(String naturalDisasterProtection) {
		this.naturalDisasterProtection = naturalDisasterProtection;
	}


	public String getBurglarBars() {
		return burglarBars;
	}


	public void setBurglarBars(String burglarBars) {
		this.burglarBars = burglarBars;
	}




	public PropertyBean(int propertyValue, String constructionType, String fireProtectionEquipment, String buildingContentProtection, String naturalDisasterProtection, String burglarBars, String propertyAddress, String period, String security) {
		
		this.propertyValue = propertyValue;
		this.constructionType = constructionType;
		this.fireProtectionEquipment = fireProtectionEquipment;
		this.buildingContentProtection = buildingContentProtection;
		this.naturalDisasterProtection = naturalDisasterProtection;
		this.burglarBars = burglarBars;
		this.propertyAddress = propertyAddress;
		this.period = period;
		this.security=security;
	}
		



}
