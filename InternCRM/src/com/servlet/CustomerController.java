package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Customer;
import com.impl.CustomerDaoImpl;
import com.model.AddressConcat;



/**
 * Servlet implementation class CustomerController
 */
@WebServlet("/CustomerController")
public class CustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String custName = request.getParameter("txtFName");
		String surname = request.getParameter("txtLName");
		String address = request.getParameter("txtAreaAddress");
		String city = request.getParameter("txtCity");
		String state = request.getParameter("txtState");
		String postalCode = request.getParameter("txtCode");
		String gender = request.getParameter("txtTitle");
		String idNumber = request.getParameter("txtID");
		String phoneNo = request.getParameter("txtPhoneNo");
		String email = request.getParameter("txtEmail");
		
		AddressConcat concat = new AddressConcat();
		
		String myAddress = concat.AddressConCat(address, city, state, postalCode);
		
		Customer custBean = new Customer(custName, myAddress, phoneNo, email, gender, surname, idNumber);

		CustomerDaoImpl myDao = new CustomerDaoImpl(); 
		
		myDao.Create(custBean);
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
