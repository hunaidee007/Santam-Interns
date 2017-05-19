package com.bean;

public class SearchBean {
	
	String searchString;
	
	public SearchBean(){}
	
	public SearchBean(String searchString){
		this.searchString = searchString;
	}

	public String getSearchString() {
		return searchString;
	}

	public void setSearchString(String searchString) {
		this.searchString = searchString;
	}
	
	
}
