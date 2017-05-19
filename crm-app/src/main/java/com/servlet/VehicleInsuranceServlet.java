package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.VehicleInquiryBean;
@WebServlet("/VehicleInsurance")
public class VehicleInsuranceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public VehicleInsuranceServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		VehicleInquiryBean vehicleInquiryBean = new VehicleInquiryBean();
		vehicleInquiryBean.setVehicleRegistration(request.getParameter("vehicleRegistration"));
		vehicleInquiryBean.setModel(request.getParameter("model"));
		vehicleInquiryBean.setMake(request.getParameter("make"));
		vehicleInquiryBean.setValue(Double.parseDouble(request.getParameter("value")));
		vehicleInquiryBean.setManufacturedDate(request.getParameter("date"));
		vehicleInquiryBean.setVehicleType(request.getParameter(request.getParameter("type")));
		vehicleInquiryBean.setPeriodRequired(request.getParameter("period"));
		
		PrintWriter out = response.getWriter();
		out.println(vehicleInquiryBean.getVehicleRegistration()+" "+vehicleInquiryBean.getMake()+ " "+vehicleInquiryBean.getModel()+" "+vehicleInquiryBean.getPeriodRequired()+" "+vehicleInquiryBean.getValue()+vehicleInquiryBean.getVehicleType());
		
 	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}
}
