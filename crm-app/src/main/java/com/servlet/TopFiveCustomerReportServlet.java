package com.servlet;



import java.io.*;
import java.util.*;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.impl.TopFiveCustomerReport;
/**
 * Servlet implementation class TopFiveCustomerReportServlet
 */
public class TopFiveCustomerReportServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private ServletConfig config;

	// Setting JSP page

	String page = "TopFiveCustomerReport.jsp";

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
		    PrintWriter out = response.getWriter();
		    response.setContentType("text/html");
		    
		    TopFiveCustomerReport topfive = new TopFiveCustomerReport();
		    
			   request.setAttribute("data",topfive.fetchingData());

			   //Disptching request

			   RequestDispatcher dispatcher = request.getRequestDispatcher(page);

			   if (dispatcher != null){

			   dispatcher.forward(request, response);

			   } 

	}

}
