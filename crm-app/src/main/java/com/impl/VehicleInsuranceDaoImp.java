package com.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.bean.VehicleInquiryBean;
import com.config.ConnectionProvider;
import com.dao.VehicleInsuranceDao;

public class VehicleInsuranceDaoImp implements VehicleInsuranceDao {

	Connection connection = null;
	PreparedStatement ptmt = null;
	ResultSet resultSet = null;
	private Connection getConnection() throws SQLException {
		Connection conn;
		conn = ConnectionProvider.getInstance().getConnection();
		return conn;
	}
	public String createVehicleInquiry(VehicleInquiryBean vehicleInquiry) {
		String msg = null;
		try {
			String queryString = "INSERT INTO autopolicy(productId,VehicleModel,VehicleReg,VehicleMake,ManufactureDate,Price,vehicleType,periodRequired,EnquiryID) VALUES(?,?,?,?,?,?,?,?,?)";
			connection = getConnection();
			ptmt = connection.prepareStatement(queryString);
			ptmt.setInt(1,  1);
			ptmt.setString(2, vehicleInquiry.getModel());
			ptmt.setString(3,vehicleInquiry.getVehicleRegistration());
			ptmt.setString(4, vehicleInquiry.getMake());
			ptmt.setString(5,vehicleInquiry.getManufacturedDate());
			ptmt.setInt(6, (int) vehicleInquiry.getValue());
			ptmt.setString(7, vehicleInquiry.getVehicleType());
			ptmt.setString(8, vehicleInquiry.getPeriodRequired());
			ptmt.setInt(9, vehicleInquiry.getEnquiryId());
			System.out.println("CONNECTED: "+connection);
			
			ptmt.executeUpdate();
		    msg = "New Record has been added successfully";
		} 
		
		catch (SQLException e) 
		{
			e.printStackTrace();
		}	
		System.out.println("CONNECTED: "+connection);
		return msg;
	}
}
