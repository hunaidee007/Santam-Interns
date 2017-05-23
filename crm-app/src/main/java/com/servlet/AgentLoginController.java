package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.AgentBean;
import com.dao.AgentDao;
import com.impl.AgentDaoImp;

@WebServlet("/AgentLogin")
public class AgentLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
	    String username = request.getParameter("txtUsername");  
	    String password = request.getParameter("txtPassword");  
	   
	    AgentBean agentBean = new AgentBean(username, password);
	    AgentDao agentDao = new AgentDaoImp();
	    boolean status=agentDao.validate(agentBean);
		if(status){
			request.getSession().setAttribute("username", username);
			request.getRequestDispatcher("CustomerRegistrationForm.jsp").include(request, response);
		}
		else{  
			request.getRequestDispatcher("AlertLogin.jsp").include(request, response);
	    }        
	    
	}
}
