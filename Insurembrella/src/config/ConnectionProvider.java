package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionProvider {
	
	private static Connection con = null;
	private static ConnectionProvider connectionProvider = null;
	
	public static Connection getConnection()
	{
		if(con != null)
		{
			return con;
		}
		else
		{
			try
			{
				
				String driver = "com.mysql.jdbc.Driver";
				String url ="jdbc:mysql://localhost/insurance";
				String user = "root";
				String password = "root";
				Class.forName(driver);
				con = DriverManager.getConnection(url,user,password);
					
			}
			catch(ClassNotFoundException  cnfe)
			{
				System.out.println(cnfe.getMessage());
			}
			catch(SQLException sqe)
			{
				System.out.println(sqe.getMessage());
			}
		}
		
		
		return con;
	}
	
	public static ConnectionProvider getInstance() {
		if (connectionProvider == null) {
			connectionProvider = new ConnectionProvider();
		}
		return connectionProvider;
	}

}
