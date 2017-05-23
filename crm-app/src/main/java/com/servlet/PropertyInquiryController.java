package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.PropertyBean;
import com.bean.PropertyCoveragesBean;
import com.dao.PropertyCoverageDao;

import com.impl.PropertyInsuranceDaoImp;


@WebServlet("/PropertyInquiry")
public class PropertyInquiryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int propertyValue  = Integer.parseInt(request.getParameter("propertyValue"));
		String constructionType  = request.getParameter("constructionType");
		String fireProtectionEquipment= request.getParameter("fireProtectionEquipment");
		String buildingContentProtection = request.getParameter("buildingRd");
		String naturalDisasterProtection = request.getParameter("disasterRd");
		String burglarBars = request.getParameter("burglarRd");
		String propertyAaddress = request.getParameter("propertyAddress");
		String period = request.getParameter("period");
		String security = request.getParameter("security");
		String id_number = request.getParameter("idNumber");
		
		String dwell = request.getParameter("dwell");
		String personal = request.getParameter("personal");
		String liability = request.getParameter("liability");
		String medical = request.getParameter("medical");
		String additional = request.getParameter("additional");
		
		PropertyBean pbean = new PropertyBean(propertyValue,constructionType,fireProtectionEquipment,buildingContentProtection,
				naturalDisasterProtection,burglarBars,propertyAaddress,period, security,id_number); 
		
		PropertyCoveragesBean coverages = new PropertyCoveragesBean(dwell,personal,liability,medical,additional,id_number);
	
		PropertyCoverageDao propertyInfo = new PropertyInsuranceDaoImp();
		propertyInfo.createProperty(pbean,coverages);
		request.getRequestDispatcher("AlertPropertyInquiry.jsp").forward(request, response);
	
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
			doGet(request,response);
	}
}
