package com.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bean.PropertyBean;
import com.bean.PropertyCoveragesBean;
import com.config.ConnectionProvider;
import com.dao.PropertyInsuranceDao;

public class PropertyInsuranceDaoImp implements PropertyInsuranceDao {
	
	Connection connection = null;
	PreparedStatement ptmt = null;
	ResultSet resultSet = null;
	
	private Connection getConnection() throws SQLException {
		Connection conn;
		conn = ConnectionProvider.getInstance().getConnection();
		return conn;
	}

	
	public void createPropertyInsurance(PropertyBean bean) {
		
		System.out.println("Inside create");

		try {
			System.out.println("Inside try");

			String queryString = "INSERT INTO propertypolicy (productId,Cost,NaturalDisaster,FireProtection,BuildingControl,SecurityAlarmSystem,constructionType,burglarBars,propertyAddress,period) VALUES(?,?,?,?,?,?,?,?,?,?)";
			connection = getConnection();
			ptmt = connection.prepareStatement(queryString);
			System.out.println();
		
			ptmt.setInt(1,10);
			ptmt.setInt(2,bean.getPropertyValue());
			ptmt.setString(3,bean.getNaturalDisasterProtection());
			ptmt.setString(4,bean.getFireProtectionEquipment());
			ptmt.setString(5,bean.getBuildingContentProtection());
			ptmt.setString(6,bean.getSecurity());
			ptmt.setString(7,bean.getConstructionType());
			ptmt.setString(8,bean.getBurglarBars());
			ptmt.setString(9,bean.getPropertyAddress());
			ptmt.setString(10,bean.getPeriod());

			ptmt.executeUpdate();
			
			System.out.println("Property Added Successfully");
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
	}


	
	


	
		
	

	





}
