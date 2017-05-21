package com.bean;

public class VehicleInquiryBean  extends InsuranceInquiry{
	private String vehicleRegistration;
	private String model;
	private String make;
	private double value;
	private String vehicleType;
	private String periodRequired;
	private String manufacturedDate;
	private String id_number;
	
	
	public VehicleInquiryBean()
	{
		
	}
	
	
	
	public VehicleInquiryBean(String vehicleRegistration, String model,
			String make, double value, String vehicleType,
			String periodRequired, String manufacturedDate, String id_number) {
		this.vehicleRegistration = vehicleRegistration;
		this.model = model;
		this.make = make;
		this.value = value;
		this.vehicleType = vehicleType;
		this.periodRequired = periodRequired;
		this.manufacturedDate = manufacturedDate;
		this.id_number = id_number;
	}
	public String getId_number() {
		return id_number;
	}
	public void setId_number(String id_number) {
		this.id_number = id_number;
	}
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
