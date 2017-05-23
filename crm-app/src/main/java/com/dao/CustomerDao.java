package com.dao;

import com.bean.AddressBean;
import com.bean.CustomerBean;


public interface CustomerDao {
	
	public void createCustomer(CustomerBean customer,AddressBean address);

}
