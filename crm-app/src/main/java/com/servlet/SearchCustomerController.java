package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.Customer;
import com.bean.SearchBean;
import com.impl.SearchImpl;

@WebServlet("/SearchCustomerController")
public class SearchCustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public SearchCustomerController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String searchString = (String)request.getParameter("searchField"); 
		SearchBean searchBean = new SearchBean(searchString);
		SearchImpl searchImpl = new SearchImpl();
		List<Customer> customerList = searchImpl.getCustomerList(searchBean);
		HttpSession session = request.getSession();
		session.setAttribute("customerList", customerList);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/DisplayCustomerList.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
