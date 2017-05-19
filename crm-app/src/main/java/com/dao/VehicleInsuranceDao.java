package com.dao;

import java.util.List;
import com.bean.VehicleInquiryBean;

public interface VehicleInsuranceDao {
	public void createVehicleInquiry(VehicleInquiryBean vehicleInsurance);
	public List<VehicleInquiryBean> getVehicleInquiry();
	public VehicleInquiryBean getCustomer(VehicleInquiryBean vehicleInsurance);
	public void updateVehicleInquiry(VehicleInquiryBean vehicleInsurance);
	public void deleteVehicleInquiry(VehicleInquiryBean vehicleInsurance);
		
	
}
