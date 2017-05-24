package com.servlet;



import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.impl.CustomerByCityReportImpl;
import com.impl.TopFiveCustomerReport;

/**
 * Servlet implementation class CustomerByCityReportServlet
 */
public class CustomerByCityReportServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private ServletConfig config;

	// Setting JSP page

	String page = "CustomerByCityReport.jsp";

	public void init(ServletConfig config)

	throws ServletException {

		this.config = config;

	}
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	public void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
			String city = request.getParameter("choosencity");
		    PrintWriter out = response.getWriter();
		    response.setContentType("text/html");
		    
		    CustomerByCityReportImpl bycity = new  CustomerByCityReportImpl();
		    
			   request.setAttribute("data",bycity.fetchingData(city));

			   //Disptching request

			   RequestDispatcher dispatcher = request.getRequestDispatcher(page);

			   if (dispatcher != null){

			   dispatcher.forward(request, response);

			   } 

	}

}
