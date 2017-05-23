package com.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.bean.VehicleCoverageBean;
import com.bean.VehicleInquiryBean;
import com.config.ConnectionProvider;
import com.dao.VehicleInsuranceDao;

public class VehicleInsuranceDaoImp implements VehicleInsuranceDao {

	Connection connection = null;
	PreparedStatement ptmt = null;
	ResultSet resultSet = null;
	private Connection getConnection() throws SQLException {
		
		ConnectionProvider.getInstance();
		connection = ConnectionProvider.getConnection();
		return connection;
	}
	
	public void createVehicleInquiry(VehicleInquiryBean vehicleInquiry,VehicleCoverageBean coverage) {
		try {
			String queryString = "INSERT INTO autopolicy(VehicleModel,VehicleReg,VehicleMake,"
					+ "ManufactureDate,Price,vehicleType,periodRequired,id_number)"
					+ " VALUES(?,?,?,?,?,?,?,?)";
			connection = getConnection();
			ptmt = connection.prepareStatement(queryString);
		
			ptmt.setString(1, vehicleInquiry.getModel());
			ptmt.setString(2,vehicleInquiry.getVehicleRegistration());
			ptmt.setString(3, vehicleInquiry.getMake());
			ptmt.setString(4,vehicleInquiry.getManufacturedDate());
			ptmt.setInt(5, vehicleInquiry.getValue());
			ptmt.setString(6, vehicleInquiry.getVehicleType());
			ptmt.setString(7, vehicleInquiry.getPeriodRequired());
			ptmt.setString(8, vehicleInquiry.getId_number());
			
			ptmt.executeUpdate();
		    System.out.println ("Vehicle has been added successfully");
		} 
		
		catch (SQLException e) 
		{
			e.printStackTrace();
		}	
		
		try
		{
			String sql = "INSERT INTO autocoverage(Collision,"
					+ "Physical_Damage,Personal_Injury,Liability,Comprehensive,id_number) "
					+ "Values(?,?,?,?,?,?) ";
			connection = getConnection();
			ptmt = connection.prepareStatement(sql);
			
			ptmt.setString(1,coverage.getCollision());
			ptmt.setString(2,coverage.getPhysicalDamage());
			ptmt.setString(3, coverage.getPersonalInjury());
			ptmt.setString(4,coverage.getLiability());
			ptmt.setString(5, coverage.getComprehensive());
			ptmt.setString(6, coverage.getId_number());
	
			ptmt.executeUpdate();
		    System.out.println ("Auto_Coverage has been added successfully");
			
			
		}
		catch (SQLException e) 
		{
			e.printStackTrace();

			
		}
	}
}
