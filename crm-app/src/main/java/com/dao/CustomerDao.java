package com.dao;

import java.util.List;
import com.bean.Customer;

public interface CustomerDao {
	public void createCustomer(Customer customer);
	public List<Customer> getAllCustomers();
	public Customer getCustomer(Customer customer);
	public void updateCustomer(Customer customer);
	public void deleteCustomer(Customer customer);
}
