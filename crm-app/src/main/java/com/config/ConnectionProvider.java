package com.config;

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
			//Connecting from the Connection string property file
			
			ReadProperties readProperties = new ReadProperties();
			String[] MyTokens = readProperties.readMyFile();
			String url = MyTokens[3];
			String user = MyTokens[7];
			String password = MyTokens[11];
			try
			{
				String driver = "com.mysql.jdbc.Driver";
				//String url ="jdbc:mysql://localhost:3306/insurance";
				//String user = "root";
				//String password = "";
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
