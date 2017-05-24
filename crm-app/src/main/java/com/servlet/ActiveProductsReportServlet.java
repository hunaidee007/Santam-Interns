package com.servlet;


import java.io.*;
import java.util.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class ActiveProductsReportServlet
 */
public class ActiveProductsReportServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private ServletConfig config;

	// Setting JSP page

	String page = "ActiveProductsReport.jsp";

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
		  //Establish connection to MySQL database
		  String connectionURL = "jdbc:mysql://localhost:3306/insurance";
		  Connection connection= null;
		  ResultSet rs;
		  response.setContentType("text/html");
		  List dataList= new ArrayList(); 
		  try {

			  // Load the database driver

			   Class.forName("com.mysql.jdbc.Driver");

			   // Get a Connection to the database

			   connection = DriverManager.getConnection(connectionURL, "root", "root"); 

			   //Select the data from the database

			   String sql = "select * from product where Active='yes'";

			   Statement s = connection.createStatement();

			   s.executeQuery (sql);

			   rs = s.getResultSet();

			   while (rs.next ()){

			   //Add records into data list

			   dataList.add(rs.getInt("ProductID"));
			   dataList.add(rs.getInt("custId"));
			   dataList.add(rs.getString("ProductName"));
			   dataList.add(rs.getString("Description"));
			   dataList.add(rs.getString("Active"));

			   }

			   rs.close ();

			   s.close ();

			   }catch(Exception e){

			   System.out.println("Exception is ;"+e);

			   }

			   request.setAttribute("data",dataList);

			   //Disptching request

			   RequestDispatcher dispatcher = request.getRequestDispatcher(page);

			   if (dispatcher != null){

			   dispatcher.forward(request, response);

			   } 

	}

}
