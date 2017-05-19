package com.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.bean.VehicleInquiryBean;
import com.config.ConnectionProvider;
import com.config.Service;
import com.dao.VehicleInsuranceDao;

@Service
public class VehicleInsuranceDaoImp implements VehicleInsuranceDao {

	Connection connection = null;
	PreparedStatement ptmt = null;
	ResultSet resultSet = null;
	private Connection getConnection() throws SQLException {
		Connection conn;
		conn = ConnectionProvider.getInstance().getConnection();
		return conn;
	}
	
	public void createVehicleInquiry(VehicleInquiryBean vehicleInquiry) {
		try {
			String queryString = "INSERT INTO vehicleInsurance(cust_name,surname,Address,Contact_No,Email,id_number,gender) VALUES(?,?,?,?,?,?,?)";
			connection = getConnection();
			ptmt = connection.prepareStatement(queryString);
			
			ptmt.setString(1, vehicleInquiry.getMake());
			ptmt.setString(2,vehicleInquiry.getManufacturedDate());
			ptmt.setString(3, vehicleInquiry.getModel());
			ptmt.setString(4,vehicleInquiry.getPeriodRequired());
			ptmt.setString(5, vehicleInquiry.getVehicleRegistration());
			ptmt.setString(6, vehicleInquiry.getVehicleType());
			ptmt.setLong(7, (long) vehicleInquiry.getValue());
			
			ptmt.executeUpdate();
			System.out.println("Data Added Successfully");
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}	
	}

	public List<VehicleInquiryBean> getVehicleInquiry() {
		// TODO Auto-generated method stub
		return null;
	}

	public VehicleInquiryBean getCustomer(VehicleInquiryBean vehicleInsurance) {
		// TODO Auto-generated method stub
		return null;
	}

	public void updateVehicleInquiry(VehicleInquiryBean vehicleInsurance) {
		// TODO Auto-generated method stub
		
	}

	public void deleteVehicleInquiry(VehicleInquiryBean vehicleInsurance) {
		// TODO Auto-generated method stub
		
	}
	
}
