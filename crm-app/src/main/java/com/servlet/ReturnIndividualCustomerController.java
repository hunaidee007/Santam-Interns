package com.servlet;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.Customer;
import com.bean.SearchCustomerBean;
import com.impl.SearchImpl;

@WebServlet("/ReturnIndividualCustomerController")
public class ReturnIndividualCustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ReturnIndividualCustomerController() {
		super();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		Customer customer = new Customer();
			int custID= Integer.parseInt(request.getParameter("CustId"));
		SearchCustomerBean searchCustomerBean = new SearchCustomerBean(custID);
		SearchImpl searchImpl = new SearchImpl();
		customer = searchImpl.getIndividiualCustomer(searchCustomerBean);
		
		
		
		HttpSession session = request.getSession();
		session.setAttribute("customer", customer);
//		System.out.println("GERNA in REturnIndividualCsutomerController"+ customer.getAddress());
	
		RequestDispatcher dispatcher = request.getRequestDispatcher("/DisplayIndividualCustomer.jsp");
		dispatcher.forward(request, response);
		
		/*RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/DisplayIndividualCustomer.jsp");
		dispatcher.forward(request, response);*/
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
