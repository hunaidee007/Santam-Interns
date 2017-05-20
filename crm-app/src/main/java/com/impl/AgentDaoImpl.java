package com.impl;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.bean.AgentBean;
import com.config.ConnectionProvider;
import com.config.Service;
import com.dao.AgentDao;

@Service
public class AgentDaoImpl implements AgentDao{

	Connection connection = null;
	static PreparedStatement ptmt = null;
	static ResultSet resultSet = null;
	static PreparedStatement ps = null;
	static Connection con = null;

	private Connection getConnection() throws SQLException {
		Connection conn;
		ConnectionProvider.getInstance();
		conn = ConnectionProvider.getConnection();
		return conn;
	}
	
	public static boolean validate(AgentBean agentBean){
		boolean status=false;
		try{
			con=ConnectionProvider.getConnection();
			ps=con.prepareStatement("select Username, Password from agent where Username=? and Password=?");
			ps.setString(1,agentBean.getUsername());
			ps.setString(2,agentBean.getPassword());
			ResultSet rs=ps.executeQuery();
			status=rs.next();

		}catch(Exception ex){System.out.println(ex);}
		finally 
		{
			try {
				if (resultSet != null) {
					con.close();
				}
				if (ptmt != null) {
					ptmt.close();
				} 
			}
			catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return status;
	}

	public void create(AgentBean agent) {
		// TODO Auto-generated method stub
		
	}

	public List<AgentBean> getAllAgents() {
		// TODO Auto-generated method stub
		return null;
	}

	public AgentBean getAgent(AgentBean agent) {
		// TODO Auto-generated method stub
		return null;
	}

	public void updateAgent(AgentBean agent) {
		// TODO Auto-generated method stub
		
	}

	public void deleteAgent(AgentBean agent) {
		// TODO Auto-generated method stub
		
	}
}
