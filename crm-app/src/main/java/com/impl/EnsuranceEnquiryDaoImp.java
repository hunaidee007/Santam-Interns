package com.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bean.InsuranceInquiryBean;
import com.config.ConnectionProvider;
import com.dao.EnsuranceEnquiryDao;

public class EnsuranceEnquiryDaoImp implements EnsuranceEnquiryDao{

	Connection connection = null;
	PreparedStatement ptmt = null;
	ResultSet resultSet = null;


	private Connection getConnection() throws SQLException {
		connection = ConnectionProvider.getInstance().getConnection();
		return connection;

	}
	public void createEnsuranceEnquiry(InsuranceInquiryBean inquiry) {
		try {
			String queryString = "INSERT INTO insuranceenquiry(EnquiryDate,id_number,agentcode) VALUES(?,?,?)";
			connection = getConnection();
			ptmt = connection.prepareStatement(queryString);

			ptmt.setString(1, inquiry.getEnquiryDate());
			ptmt.setString(2, inquiry.getIdNumber());
			ptmt.setString(3, inquiry.getAgentUsername());

			ptmt.executeUpdate();
			System.out.println("Data Added to Insurance Enquiry Successfully");
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
		
	}

}
