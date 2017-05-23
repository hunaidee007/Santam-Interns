package com.dao;

import java.util.List;

import com.bean.CustomerBean;
import com.bean.SearchCustomerBean;

public interface SearchDao {
	public List<CustomerBean> getAllCustomers();
	public List<CustomerBean> getCustomerList(SearchCustomerBean searchCustomerBean);
	public CustomerBean getIndividiualCustomer(SearchCustomerBean searchCustomerBean);
}
