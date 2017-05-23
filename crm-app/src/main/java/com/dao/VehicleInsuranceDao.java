package com.dao;

import com.bean.VehicleCoverageBean;
import com.bean.VehicleInquiryBean;

public interface VehicleInsuranceDao {
	public void createVehicleInquiry(VehicleInquiryBean vehicleInsurance, VehicleCoverageBean coverage);
	
	
}
