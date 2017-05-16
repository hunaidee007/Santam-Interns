package impl;

import insurebean.Customer;
import insuredao.CustomerDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import config.ConnectionProvider;


public class CustomerDaoImpl implements CustomerDao{

	Connection connection = null;
	PreparedStatement ptmt = null;
	ResultSet resultSet = null;
	
	
	private Connection getConnection() throws SQLException {
		Connection conn;
		conn = ConnectionProvider.getInstance().getConnection();
		return conn;
	}
	
	@Override
	public void Create(Customer customer) 
	{
		try {
			String queryString = "INSERT INTO customer(custId, cust_name,surname,Address,Contact_No,Email,id_number,gender) VALUES(?,?,?,?,?,?,?,?)";
			connection = getConnection();
			ptmt = connection.prepareStatement(queryString);
			
			ptmt.setInt(1, customer.getCustId());
			ptmt.setString(2, customer.getCustName());
			ptmt.setString(3,customer.getSurname());
			ptmt.setString(4, customer.getAddress());
			ptmt.setString(5, customer.getContactNo());
			ptmt.setString(6, customer.getEmail());
			ptmt.setString(7, customer.getIdNumber());
			ptmt.setString(8, customer.getGender());
			
			ptmt.executeUpdate();
			System.out.println("Data Added Successfully");
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
	}

	
	@Override
	public List<Customer> getAllCustomers() 
	{
		Customer cust = new Customer();
		
		List<Customer> mylist = new ArrayList<Customer>();
		try 
		{
			String sql = "SELECT * FROM customer";
			connection = getConnection();
			ptmt = connection.prepareStatement(sql);
			resultSet = ptmt.executeQuery();
			
			while(resultSet.next())
			{
				cust.setCustId(resultSet.getInt("custId"));
				cust.setCustName(resultSet.getString("cust_name"));
				cust.setAddress(resultSet.getString("Address"));
				cust.setContactNo(resultSet.getString("Contact_No"));
				cust.setEmail(resultSet.getString("Email"));
				cust.setSurname(resultSet.getString("surname"));
				cust.setGender(resultSet.getString("gender"));
				cust.setIdNumber(resultSet.getString("id_number"));
				
				
				mylist.add(cust);
			}
			
		} 
		catch (SQLException e) 
		{
			
			e.printStackTrace();
		}
		
		
		return mylist;
	}

	@Override
	public Customer getCustomer(Customer customer) 
	{
		Customer cust = null;
		try
		{
			String sql = "SELECT * FROM CUSTOMER WHERE custId = ?";
			connection = getConnection();
			ptmt = connection.prepareStatement(sql);
			ptmt.setInt(1, customer.getCustId());
			resultSet = ptmt.executeQuery();
			
			
			if(resultSet.next())
			{		
				cust = new Customer();
				cust.setCustId(resultSet.getInt("custId"));
				cust.setCustName(resultSet.getString("cust_name"));
				cust.setAddress(resultSet.getString("Address")) ;
				cust.setContactNo(resultSet.getString("Contact_No")) ;
				cust.setEmail(resultSet.getString("Email"));
				cust.setSurname(resultSet.getString("surname"));
				cust.setGender(resultSet.getString("gender"));
				cust.setIdNumber(resultSet.getString("id_number"));
			}

			
			
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		return cust;
	}

	@Override
	public void updateCustomer(Customer customer) 
	{	
		//Only update customer name can create other methods to update other fields
		
		try
		{
			String queryString = "UPDATE customer SET cust_name=? WHERE custId=?";
			connection = getConnection();
			ptmt = connection.prepareStatement(queryString);
			ptmt.setString(1, customer.getCustName());
			ptmt.setInt(2, customer.getCustId());
			ptmt.executeUpdate();
			System.out.println("Table Updated Successfully");
			
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
	}

	@Override
	public void deleteCustomer(Customer customer) 
	{
		try
		{
			String queryString = "DELETE FROM customer WHERE custId =?";
			connection = getConnection();
			ptmt = connection.prepareStatement(queryString);
			ptmt.setInt(1, customer.getCustId());
			ptmt.executeUpdate();
			
			System.out.println("Data deleted Successfully");
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
	}

}
