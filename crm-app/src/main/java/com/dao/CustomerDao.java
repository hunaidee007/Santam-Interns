package com.dao;

import com.bean.Address;
import com.bean.Customer;


public interface CustomerDao {
	
	public void createCustomer(Customer customer,Address address);

}
