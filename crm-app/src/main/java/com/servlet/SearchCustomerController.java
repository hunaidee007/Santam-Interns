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

@WebServlet("/SearchCustomerController")
public class SearchCustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SearchCustomerController() {
		super();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());

		//String searchString = (String)request.getParameter("searchField");

		String customerName = (String)request.getParameter("txtFName");
		String customerCity = (String)request.getParameter("txtCity");
		String customerID = (String)request.getParameter("txtID");

		if(customerName.equals("") && customerCity.equals("") && customerID.equals("")){
			try {
				throw new Exception("Please fill in search fields (i.e., Name of Customer or City of Customer or Customer ID");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else{

			SearchCustomerBean searchCustomerBean = new SearchCustomerBean(customerName, customerCity, customerID);
			SearchImpl searchImpl = new SearchImpl();
			List<Customer> customerList = searchImpl.getCustomerList(searchCustomerBean);
			Iterator iter = customerList.iterator();
			Customer customer = new Customer();
			/*while (iter.hasNext()){
				customer = (Customer) iter.next();
				System.out.println("Gerna in servlet" + customer.getCustId() + " " + customer.getCustName());
			}*/

			HttpSession session = request.getSession();
			session.setAttribute("customerList", customerList);

			RequestDispatcher dispatcher = request.getRequestDispatcher("/DisplayCustomerList.jsp");
			dispatcher.forward(request, response);

		}

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
