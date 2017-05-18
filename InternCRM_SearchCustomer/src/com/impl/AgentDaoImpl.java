package com.impl;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import com.bean.AgentBean;
import com.config.ConnectionProvider;
import com.dao.AgentDao;

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
	@Override
	public void Create(AgentBean user) {
	}
	@Override
	public List<AgentBean> getAllAgents() {
		return null;
	}
	@Override
	public AgentBean getAgent(AgentBean user) {
		return null;
	}
	@Override
	public void updateAgent(AgentBean user) {
	}
	@Override
	public void deleteAgent(AgentBean user) {
	}
	public static boolean validate(AgentBean agentBean){
		boolean status=false;
		try{
			con=ConnectionProvider.getConnection();
			ps=con.prepareStatement("select username, password from agent where username=? and password=?");
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
}
