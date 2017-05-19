package com.model;
public class AddressConcat {
	public String AddressConCat(String street,String city, String state, String postalCode )
	{
		return street + ", " + city + ", " + state +", "+postalCode;
	}
}
