package com.bean;

public class VehicleInquiryBean  {
	private String vehicleRegistration;
	private String model;
	private String make;
	private int value;
	private String vehicleType;
	private String periodRequired;
	private String manufacturedDate;
	private String id_number;
	
	
	public VehicleInquiryBean()
	{
		
	}
	
	
	
	public VehicleInquiryBean(String vehicleRegistration, String model,
			String make, int value, String vehicleType,
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
	public int getValue() {
		return value;
	}
	public void setValue(int value) {
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
