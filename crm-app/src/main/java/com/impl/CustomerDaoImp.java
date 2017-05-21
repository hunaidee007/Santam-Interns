package com.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bean.Address;
import com.bean.Customer;
import com.config.ConnectionProvider;
import com.config.Service;
import com.dao.CustomerDao;

@Service
public class CustomerDaoImp implements CustomerDao{

	Connection connection = null;
	PreparedStatement ptmt = null;
	ResultSet resultSet = null;


	private Connection getConnection() throws SQLException {
		Connection conn;
		ConnectionProvider.getInstance();
		conn = ConnectionProvider.getConnection();
		return conn;
	}

	public void createCustomer(Customer customer, Address address) 
	{
		try {
			String queryString = "INSERT INTO customer(cust_name,surname,Contact_No,Email,id_number,gender) VALUES(?,?,?,?,?,?)";
			connection = getConnection();
			ptmt = connection.prepareStatement(queryString);

			ptmt.setString(1, customer.getCustName());
			ptmt.setString(2,customer.getSurname());
			ptmt.setString(3, customer.getContactNo());
			ptmt.setString(4, customer.getEmail());
			ptmt.setString(5, customer.getIdNumber());
			ptmt.setString(6, customer.getGender());

			ptmt.executeUpdate();
			System.out.println("Data Added to Customer Successfully");
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		try
		{
			String sql = "INSERT INTO address(street,city,state,zip,id_number)VALUE (?,?,?,?,?)";
			ptmt = connection.prepareStatement(sql);


			address.setId_number(customer.getIdNumber());

			ptmt.setString(1, address.getStreet());
			ptmt.setString(2, address.getCity());
			ptmt.setString(3, address.getState());
			ptmt.setString(4, address.getZip());
			ptmt.setString(5, address.getId_number());

			ptmt.executeUpdate();
			System.out.println("Data Added to Address Table Successfuly");

		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
	}
}
