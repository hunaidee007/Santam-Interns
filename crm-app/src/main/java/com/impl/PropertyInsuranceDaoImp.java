package com.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bean.PropertyBean;
import com.bean.PropertyCoveragesBean;
import com.config.ConnectionProvider;
import com.dao.PropertyCoverageDao;


public class PropertyInsuranceDaoImp implements PropertyCoverageDao {
	
	Connection connection = null;
	PreparedStatement ptmt = null;
	ResultSet resultSet = null;
	
	private Connection getConnection() throws SQLException {
		ConnectionProvider.getInstance();
		connection = ConnectionProvider.getConnection();
		return connection;
	}

	public boolean createProperty(PropertyBean propertyBean,PropertyCoveragesBean coverages) 
	{
		try
		{
			String sql = "INSERT INTO propertypolicy(Cost, NaturalDisaster, FireProtection, BuildingContent, SecurityAlarmSystem,"
					+ "constructionType, burglarBars, propertyAddress, period, id_number)"
					+ "Values(?,?,?,?,?,?,?,?,?,?)";
			connection = getConnection();
			ptmt = connection.prepareStatement(sql);
			
			ptmt.setInt(1, propertyBean.getPropertyValue());
			ptmt.setString(2,propertyBean.getNaturalDisasterProtection());
			ptmt.setString(3, propertyBean.getFireProtectionEquipment());
			ptmt.setString(4,propertyBean.getBuildingContentProtection());
			ptmt.setString(5, propertyBean.getSecurity());
			ptmt.setString(6, propertyBean.getConstructionType());
			ptmt.setString(7, propertyBean.getBurglarBars());
			ptmt.setString(8, propertyBean.getPropertyAddress());
			ptmt.setString(9, propertyBean.getPeriod());
			ptmt.setString(10, propertyBean.getId_number());
			
			ptmt.executeUpdate();
		    System.out.println ("Property has been added successfully");
		    return true;
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		try
		{
			String sql = "INSERT INTO propertycoverage(dwelling, personalProperty, liabiltyProtection,"
					+ " guestMedicalProtection, additionalProtection, id_number) "
					+ "Values(?,?,?,?,?,?)";
			connection = getConnection();
			ptmt = connection.prepareStatement(sql);
			
			ptmt.setString(1,coverages.getDwelling());
			ptmt.setString(2,coverages.getPersonalProperty());
			ptmt.setString(3, coverages.getLiabilityProtection());
			ptmt.setString(4,coverages.getGuestMedicalProtection());
			ptmt.setString(5, coverages.getAdditional());
			ptmt.setString(6, coverages.getId_number());
			
			ptmt.executeUpdate();
		    System.out.println ("Property_Coverage has been added successfully");
		    return true;
		}
		catch (SQLException e) 
		{
			e.printStackTrace();
			
		}
		return false;
		
	}
}
