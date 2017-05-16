package insuresevlets;
import impl.UserDaoImpl;
import insurebean.UserBean;

import java.util.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UsersLogin")
public class UsersLogin extends HttpServlet {
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

	    List<UserBean> list = new ArrayList<UserBean>();
	    list.add(new UserBean(username, password));
	    
	    if ((username.equals("a") && password.equals("a"))){  
	    	request.getSession().setAttribute("username", username);
	        
	    	RequestDispatcher rd=request.getRequestDispatcher("CustomerRegistration.jsp");  
	        rd.forward(request,response);  
	    }  
	    else{  
	        out.print("<script type=\"text/javascript\">");
	        out.print("location = 'Login.jsp';");
			out.print("alert('Sorry, username or password error!');");
			out.print("</script>");
	    }        
	    out.close();  
	}
	

}
