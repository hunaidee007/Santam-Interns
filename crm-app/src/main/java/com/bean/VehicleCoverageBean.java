package com.bean;

public class VehicleCoverageBean {
	
	private String id_number;
	private String collision;
	private String physicalDamage;
	private String liability;
	private String comprehensive;
	private String personalInjury;
	
	public VehicleCoverageBean(){}
	public VehicleCoverageBean(String id_number, String collision,
			String physicalDamage, String liability, String comprehensive,
			String personalInjury) {
		
		this.id_number = id_number;
		this.collision = collision;
		this.physicalDamage = physicalDamage;
		this.liability = liability;
		this.comprehensive = comprehensive;
		this.personalInjury = personalInjury;
	}
	
	
	public String getId_number() {
		return id_number;
	}

	public void setId_number(String id_number) {
		this.id_number = id_number;
	}

	public String getCollision() {
		return collision;
	}

	public void setCollision(String collision) {
		this.collision = collision;
	}

	public String getPhysicalDamage() {
		return physicalDamage;
	}

	public void setPhysicalDamage(String physicalDamage) {
		this.physicalDamage = physicalDamage;
	}

	public String getLiability() {
		return liability;
	}

	public void setLiability(String liability) {
		this.liability = liability;
	}

	public String getComprehensive() {
		return comprehensive;
	}

	public void setComprehensive(String comprehensive) {
		this.comprehensive = comprehensive;
	}

	public String getPersonalInjury() {
		return personalInjury;
	}

	public void setPersonalInjury(String personalInjury) {
		this.personalInjury = personalInjury;
	}

	
	
	
	
}
