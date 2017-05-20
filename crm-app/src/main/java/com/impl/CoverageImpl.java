package com.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bean.PropertyCoveragesBean;
import com.config.ConnectionProvider;
import com.dao.CoverageDao;

public class CoverageImpl implements CoverageDao {
	
	Connection connection = null;
	PreparedStatement ptmt = null;
	ResultSet resultSet = null;
	
	private Connection getConnection() throws SQLException {
		
		Connection conn;
		conn = ConnectionProvider.getInstance().getConnection();
		return conn;
	}


	public void createCoverages(PropertyCoveragesBean bean) {
		try {
			
			String queryString = "INSERT INTO TableName(dwelling,personalProperty,liabilityProtection,guestMedicalProtection, additional) VALUES(?,?,?,?,?)";
			
			connection = getConnection();
			ptmt = connection.prepareStatement(queryString);
			
			ptmt.setString(1,bean.getDwelling());
			ptmt.setString(2,bean.getGuestMedicalProtection());
			ptmt.setString(3,bean.getLiabilityProtection());
			ptmt.setString(4,bean.getPersonalProperty());
			ptmt.setString(5,bean.getAdditional());

			ptmt.executeUpdate();
			System.out.println("Property Info Added");
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
	}
	

}
