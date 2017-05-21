package com.dao;

import java.util.List;

import com.bean.Customer;
import com.bean.InsuranceInquiry;
import com.bean.VehicleCoverageBean;
import com.bean.VehicleInquiryBean;

public interface VehicleInsuranceDao {
	public void createVehicleInquiry(VehicleInquiryBean vehicleInsurance, VehicleCoverageBean coverage);
	
	
}
