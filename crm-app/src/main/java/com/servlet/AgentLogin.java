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
import com.impl.AgentDaoImpl;

@WebServlet("/AgentLogin")
public class AgentLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//insuredao.UserDao UserDao = DAOFactory().getInstanse("userDao");//
	//new  UserDaoImpl();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
	    PrintWriter out = response.getWriter();  
	    String username = request.getParameter("txtUsername");  
	    String password = request.getParameter("txtPassword");  
	   
	    
	    AgentBean agentBean = new AgentBean(username, password);
	    boolean status=AgentDaoImpl.validate(agentBean);
		if(status){
			request.getSession().setAttribute("username", username);
			request.getRequestDispatcher("CustomerRegistrationForm.jsp").include(request, response);
		}
		else{  
	        out.print("<script type=\"text/javascript\">");
	        out.print("location = 'AgentLogin.jsp';");
			out.print("alert('Sorry, username or password error!');");
			out.print("</script>");
	    }        
	    out.close();  
	}
}
