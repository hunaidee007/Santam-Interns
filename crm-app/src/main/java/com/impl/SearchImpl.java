package com.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.bean.Customer;
import com.bean.SearchCustomerBean;
import com.config.ConnectionProvider;
import com.dao.SearchDao;

public class SearchImpl implements SearchDao{

	Connection connection = null;
	static PreparedStatement ptmt = null;
	static ResultSet resultSet = null;
	static PreparedStatement ps = null;
	static Connection con = null;

	private Connection getConnection() throws SQLException {
		Connection conn;
		ConnectionProvider.getInstance();
		conn = ConnectionProvider.getConnection();
		return conn;
	}


	public List<Customer> getAllCustomers() {
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
				//cust.setAddress(resultSet.getString("Address"));
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


	public List<Customer> getCustomerList(SearchCustomerBean searchCustomerBean) {

		List<Customer> mylist = new ArrayList<Customer>();
		String whereString = "";
		if (searchCustomerBean.getSearchCustomerName() != ""){  
			whereString = "cust_name  like '%" + searchCustomerBean.getSearchCustomerName() + "%'";
		}
		if (whereString != "" && searchCustomerBean.getSearchCustomerCity() != ""){ 
			whereString = whereString + " AND ";
		}
		if (searchCustomerBean.getSearchCustomerCity() != ""){ 
			whereString = whereString + " Address like '%" + searchCustomerBean.getSearchCustomerCity() + "%'"; 
		}

		if (whereString != "" && searchCustomerBean.getSearchCustomerID() != ""){ 
			whereString = whereString + " AND ";
		}
		if (searchCustomerBean.getSearchCustomerID() != ""){ 
			whereString = whereString + " id_number = '" + searchCustomerBean.getSearchCustomerID() + "'";
		}

		if (whereString != ""){
			whereString = "SELECT * FROM customer WHERE " + whereString;
		}

		try 
		{
			String sql = whereString;
			//			System.out.println(whereString);
			connection = getConnection();
			ptmt = connection.prepareStatement(sql);
			resultSet = ptmt.executeQuery();
			while(resultSet.next())
			{	
				Customer cust = new Customer();				
				cust.setCustId(resultSet.getInt("custId"));
				cust.setCustName(resultSet.getString("cust_name"));
				//cust.setAddress(resultSet.getString("Address"));
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



		/*	for (Customer customer : mylist) {
			System.out.println("GERNA before list is returned: " + customer.getCustId()  + customer.getCustName() );
		}*/

		return mylist;

	}

	public Customer getIndividiualCustomer(SearchCustomerBean searchCustomerBean) {
		String whereString = "SELECT * FROM customer WHERE custId=" + searchCustomerBean.getSearchCustomerKey();
		String sql = whereString;		

		Customer cust = null;
		try {
			connection = getConnection();
			ptmt = connection.prepareStatement(sql);
			resultSet = ptmt.executeQuery();
			cust = new Customer();	
			while(resultSet.next())
			{	

				cust.setCustId(resultSet.getInt("custId"));
				cust.setCustName(resultSet.getString("cust_name"));
				//cust.setAddress(resultSet.getString("Address"));
				cust.setContactNo(resultSet.getString("Contact_No"));
				cust.setEmail(resultSet.getString("Email"));
				cust.setSurname(resultSet.getString("surname"));
				cust.setGender(resultSet.getString("gender"));
				cust.setIdNumber(resultSet.getString("id_number"));


			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//		System.out.println("Gerna sql query: " + whereString);
		return cust;
	}
}
