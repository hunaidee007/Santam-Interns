package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.VehicleInquiryBean;
import com.impl.VehicleInsuranceDaoImp;
@WebServlet("/VehicleInsuranceServlet")
public class VehicleInsuranceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public VehicleInsuranceServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		VehicleInquiryBean vehicleInquiryBean = new VehicleInquiryBean();
		vehicleInquiryBean.setVehicleRegistration(request.getParameter("vehicleRegistration"));
		vehicleInquiryBean.setModel(request.getParameter("model"));
		vehicleInquiryBean.setMake(request.getParameter("make"));
		vehicleInquiryBean.setValue(Double.parseDouble(request.getParameter("value")));
		vehicleInquiryBean.setManufacturedDate(request.getParameter("date"));
		vehicleInquiryBean.setVehicleType(request.getParameter("type"));
		vehicleInquiryBean.setPeriodRequired(request.getParameter("period"));
		vehicleInquiryBean.setEnquiryId(Integer.parseInt(request.getParameter("enquiryId")));
		
		VehicleInsuranceDaoImp vehicleInsuranceDaoImp = new VehicleInsuranceDaoImp();
		String message = "<p>"  +  vehicleInsuranceDaoImp.createVehicleInquiry(vehicleInquiryBean)+ "</p>";
	HttpSession session = request.getSession();
		RequestDispatcher rd = request.getRequestDispatcher("AutoCoverage.jsp");
		
		
		
 	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}
}
