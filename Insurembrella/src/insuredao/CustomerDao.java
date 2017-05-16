package insuredao;

import insurebean.Customer;

import java.util.List;

//import bean.Customer;

public interface CustomerDao {
	
public void Create(Customer customer);
	
	public List<Customer> getAllCustomers();
	
	public Customer getCustomer(Customer customer);
	
	public void updateCustomer(Customer customer);
	
	public void deleteCustomer(Customer customer);

}
