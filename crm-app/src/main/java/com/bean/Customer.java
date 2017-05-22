package com.bean;

public class Customer {
	
	private int custId;
	private String custName;
	private String ContactNo;
	private String Email;
	private String gender;
	private String surname;
	public Customer()
	{
		
	}
	
	public Customer( String custName, String contactNo,
			String email, String gender, String surname, String idNumber) {
		this.custName = custName;
		ContactNo = contactNo;
		Email = email;
		this.gender = gender;
		this.surname = surname;
		this.idNumber = idNumber;
	}
	
	
	public Customer(int custId, String custName, String contactNo,
			String email, String gender, String surname, String idNumber) {
		this.custId = custId;
		this.custName = custName;
		ContactNo = contactNo;
		Email = email;
		this.gender = gender;
		this.surname = surname;
		this.idNumber = idNumber;
	}
	public int getCustId() {
		return custId;
	}
	public void setCustId(int custId) {
		this.custId = custId;
	}
	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
	}
	public String getContactNo() {
		return ContactNo;
	}
	public void setContactNo(String contactNo) {
		ContactNo = contactNo;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getSurname() {
		return surname;
	}
	public void setSurname(String surname) {
		this.surname = surname;
	}
	public String getIdNumber() {
		return idNumber;
	}
	public void setIdNumber(String idNumber) {
		this.idNumber = idNumber;
	}
	private String idNumber;
	
	

}
