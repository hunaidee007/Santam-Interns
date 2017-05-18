package com.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bean.Customer;
import com.bean.SearchBean;
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

	@Override
	public List<Customer> getAllCustomers() {
		// TODO Auto-generated method stub
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
	public List<Customer> getCustomerList(SearchBean searchBean) {
		// TODO Auto-generated method stub
		Customer cust = new Customer();

		List<Customer> mylist = new ArrayList<Customer>();
		try 
		{
			String sql = "SELECT * FROM customer WHERE custId = "+searchBean.getSearchString();
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
				//System.out.println("Searched Customer:\n"+cust.getCustName());
			}

		} 
		catch (SQLException e) 
		{

			e.printStackTrace();
		}
		
		//System.out.println("Searched Customer:\n"+cust.getCustName());
		return mylist;
	}

}
