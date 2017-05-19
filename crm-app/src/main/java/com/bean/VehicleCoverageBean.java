package com.bean;

public class VehicleCoverageBean {
	String coverage_id;
	String name;
	String product_id;
	
	public VehicleCoverageBean(String coverage_id, String name,
			String product_id) {
		this.coverage_id = coverage_id;
		this.name = name;
		this.product_id = product_id;
	}
	public String getCoverage_id() {
		return coverage_id;
	}
	public void setCoverage_id(String coverage_id) {
		this.coverage_id = coverage_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getProduct_id() {
		return product_id;
	}
	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
}
