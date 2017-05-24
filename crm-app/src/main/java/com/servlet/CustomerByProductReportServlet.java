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
import com.impl.CustomerByProductReportImpl;

/**
 * Servlet implementation class CustomerByProductReportServlet
 */
public class CustomerByProductReportServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private ServletConfig config;

	// Setting JSP page

	String page = "CustomerByProductReport.jsp";

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
		
			String product = request.getParameter("choosenproduct");
		    PrintWriter out = response.getWriter();
		    response.setContentType("text/html");
		    
		    CustomerByProductReportImpl bycity = new  CustomerByProductReportImpl();
		    
			   request.setAttribute("data",bycity.fetchingData(product));

			   //Disptching request

			   RequestDispatcher dispatcher = request.getRequestDispatcher(page);

			   if (dispatcher != null){

			   dispatcher.forward(request, response);

			   } 

	}

}
