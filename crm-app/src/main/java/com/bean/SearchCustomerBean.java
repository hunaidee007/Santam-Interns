package com.bean;

public class SearchCustomerBean {
	
	String searchCustomerName;
	String searchCustomerCity;
	String searchCustomerID;
	int searchCustomerKey;
	
	public SearchCustomerBean(){}

	public String getSearchCustomerName() {
		return searchCustomerName;
	}

	public void setSearchCustomerName(String searchCustomerName) {
		this.searchCustomerName = searchCustomerName;
	}

	public String getSearchCustomerCity() {
		return searchCustomerCity;
	}

	public void setSearchCustomerCity(String searchCustomerCity) {
		this.searchCustomerCity = searchCustomerCity;
	}

	public String getSearchCustomerID() {
		return searchCustomerID;
	}

	public void setSearchCustomerID(String searchCustomerID) {
		this.searchCustomerID = searchCustomerID;
	}

	public int getSearchCustomerKey() {
		return searchCustomerKey;
	}

	public void setSearchCustomerKey(int searchCustomerKey) {
		this.searchCustomerKey = searchCustomerKey;
	}

	public SearchCustomerBean(String searchCustomerName,
			String searchCustomerCity, String searchCustomerID) {
		super();
		this.searchCustomerName = searchCustomerName;
		this.searchCustomerCity = searchCustomerCity;
		this.searchCustomerID = searchCustomerID;
	}

	public SearchCustomerBean(int searchCustomerKey) {
		super();
		this.searchCustomerKey = searchCustomerKey;
	}

	
		
	
}
