package com.bean;

public class VehicleInquiryBean  extends InsuranceInquiry{
	private String vehicleRegistration;
	private String model;
	private String make;
	private double value;
	private String vehicleType;
	private String periodRequired;
	private String manufacturedDate;
	
	public String getManufacturedDate() {
		return manufacturedDate;
	}
	public void setManufacturedDate(String string) {
		this.manufacturedDate = string;
	}
	public String getVehicleRegistration() {
		return vehicleRegistration;
	}
	public void setVehicleRegistration(String vehicleRegistration) {
		this.vehicleRegistration = vehicleRegistration;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getMake() {
		return make;
	}
	public void setMake(String make) {
		this.make = make;
	}
	public double getValue() {
		return value;
	}
	public void setValue(double value) {
		this.value = value;
	}
	public String getVehicleType() {
		return vehicleType;
	}
	public void setVehicleType(String vehicleType) {
		this.vehicleType = vehicleType;
	}
	public String getPeriodRequired() {
		return periodRequired;
	}
	public void setPeriodRequired(String periodRequired) {
		this.periodRequired = periodRequired;
	}
}
