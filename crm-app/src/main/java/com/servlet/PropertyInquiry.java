package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.PropertyBean;
import com.bean.PropertyCoveragesBean;
import com.dao.PropertyCoverageDao;
import com.dao.PropertyInsuranceDao;
import com.impl.CoverageImpl;
import com.impl.PropertyInsuranceDaoImp;


@WebServlet("/PropertyInquiry")
public class PropertyInquiry extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//Property details
		
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
		System.out.println(" ID number " + id_number);
		
		
		
		
		RequestDispatcher rdr = request.getRequestDispatcher("CustomerRegistrationForm.jsp");
		rdr.forward(request, response);
		
		
		//Coverage
		/*
		String dwell = request.getParameter("dwell");
		String personal = request.getParameter("personal");
		String liability = request.getParameter("liability");
		String medical = request.getParameter("medical");
		String additional = request.getParameter("additional");
		
		if(dwell==null){
			dwell = "";
		}
		
		if(personal==null){
			personal = "";
		}
		if(liability==null){
			liability = "";
		}
		if(medical==null){
			medical = "";
		}
		if(additional==null){
			additional = "";
		}
		*/
		//PropertyCoveragesBean cbean = new PropertyCoveragesBean(dwell,personal,liability,medical,additional);
		//CoverageImpl coverageInfo = new CoverageImpl();
		//coverageInfo.createCoverages(cbean);

		
		
		/*System.out.println(propertyValue);
		System.out.println(constructionType);
		System.out.println(fireProtectionEquipment);
		System.out.println(buildingContentProtection);
		System.out.println(naturalDisasterProtection);
		System.out.println(burglarBars);
		System.out.println(propertyAaddress);
		System.out.println(period);
		System.out.println(dwell);
		System.out.println(personal);
		System.out.println(liability);
		System.out.println(medical);
		System.out.println(additional);
		System.out.println(security);
*/
		
		
		
		
		
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
			doGet(request,response);
	}

}
