package com.dao;

import java.util.List;

import com.bean.Customer;
import com.bean.SearchBean;

public interface SearchDao {
	public List<Customer> getAllCustomers();
	public List<Customer> getCustomerList(SearchBean searchBean);

}
