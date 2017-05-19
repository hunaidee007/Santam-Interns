package com.dao;

import java.util.List;

import com.bean.Customer;
import com.bean.SearchCustomerBean;

public interface SearchDao {
	public List<Customer> getAllCustomers();
	public List<Customer> getCustomerList(SearchCustomerBean searchCustomerBean);
	public Customer getIndividiualCustomer(SearchCustomerBean searchCustomerBean);
}
