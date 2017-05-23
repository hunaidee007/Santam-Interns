package com.servlet;

import java.io.IOException;
import java.util.Date;
import java.text.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.AddressBean;
import com.bean.CustomerBean;
import com.bean.InsuranceInquiryBean;
import com.config.ApplicationContext;
import com.dao.EnsuranceEnquiryDao;
import com.impl.CustomerDaoImp;
import com.impl.EnsuranceEnquiryDaoImp;

@WebServlet("/CustomerController")
public class CustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		HttpSession session = request.getSession();
		String custName = request.getParameter("txtFName");
		String surname = request.getParameter("txtLName");
		String street = request.getParameter("txtAreaAddress");
		String city = request.getParameter("txtCity");
		String state = request.getParameter("txtState");
		String postalCode = request.getParameter("txtCode");
		String gender = request.getParameter("txtGender");
		String idNumber = request.getParameter("txtID");
		String phoneNo = request.getParameter("txtPhoneNo");
		String email = request.getParameter("txtEmail");
		String insuranceType = request.getParameter("insuranceType");
		String agentUserN = request.getParameter("agentUserN");

		CustomerBean cust = new CustomerBean(custName, phoneNo, email, gender, surname, idNumber);
		AddressBean add = new AddressBean(street, city, state, postalCode, idNumber);

		CustomerDaoImp imp = new CustomerDaoImp();
		imp.createCustomer(cust, add);
		
		DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
		String data = df.format(new Date());
		InsuranceInquiryBean inquiry = new InsuranceInquiryBean(data, agentUserN, idNumber);
		EnsuranceEnquiryDao enquiryDao = new EnsuranceEnquiryDaoImp();
		enquiryDao.createEnsuranceEnquiry(inquiry);
		
		if(insuranceType.equals("auto")){
			request.getSession().setAttribute("idNumber", idNumber);
			RequestDispatcher rd = request.getRequestDispatcher("AutoCoverage.jsp");
			rd.forward(request, response);
		}
		if(insuranceType.equals("property")){
			request.getSession().setAttribute("idNumber", idNumber);
			RequestDispatcher rdr = request.getRequestDispatcher("InsuranceInquiryProperty.jsp");
			rdr.forward(request, response);
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
