package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.Customer;
import com.bean.InsuranceInquiry;
import com.config.ApplicationContext;
import com.dao.CustomerDao;
import com.impl.CustomerDaoImpl;
import com.model.AddressConcat;
@WebServlet("/CustomerController")
public class CustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session = request.getSession();
		String custName = request.getParameter("txtFName");
		String surname = request.getParameter("txtLName");
		String address = request.getParameter("txtAreaAddress");
		String city = request.getParameter("txtCity");
		String state = request.getParameter("txtState");
		String postalCode = request.getParameter("txtCode");
		String gender = request.getParameter("txtGender");
		String idNumber = request.getParameter("txtID");
		String phoneNo = request.getParameter("txtPhoneNo");
		String email = request.getParameter("txtEmail");
		String insuranceType = request.getParameter("insuranceType");
		AddressConcat concat = new AddressConcat();
		String myAddress = concat.AddressConCat(address, city, state, postalCode);
		Customer custBean = new Customer(custName, myAddress, phoneNo, email, gender, surname, idNumber);
		CustomerDao myDao = ApplicationContext.getInstance(CustomerDaoImpl.class); 
		myDao.createCustomer(custBean);
		// Get Stored the Customer 
	//Customer customerBean = myDao.getCustomer(custBean);
		InsuranceInquiry inquiry = new InsuranceInquiry();
		
	   //   CustomerDaoImpl cd = new CustomerDaoImpl();
		//    cd.storeEnquiryData(customerBean, inquiry);
		//   System.out.println("Print  "+ inquiry.getAgentId());
		
		if(insuranceType.equals("auto")){
			request.getSession().setAttribute("enquiryId", inquiry.getEnquiryId());
			RequestDispatcher rd = request.getRequestDispatcher("AutoCoverage.jsp");
			rd.forward(request, response);
			
		}
		
		
		
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
