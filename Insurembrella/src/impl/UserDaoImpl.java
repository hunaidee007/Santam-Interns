package impl;

import insurebean.UserBean;
import insuredao.UserDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import config.ConnectionProvider;



public class UserDaoImpl implements UserDao{

	Connection connection = null;
	PreparedStatement ptmt = null;
	ResultSet resultSet = null;
	
	private Connection getConnection() throws SQLException {
		Connection conn;
		conn = ConnectionProvider.getInstance().getConnection();
		return conn;
	}
	
	
	
	
	@Override
	public void Create(UserBean user) {
		
		try
		{
			String sql = "INSERT INTO users (username, password, firstname, lastname) VALUES VALUES(?,?,?,?,?)";
			connection = getConnection();
			ptmt = connection.prepareStatement(sql);
			
			ptmt.setString(1, user.getUsername());
			ptmt.setString(2, user.getPassword());
			ptmt.setString(3, user.getFirstName());
			ptmt.setString(4, user.getLastName());
			ptmt.executeUpdate();
			
			
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
	}

	@Override
	public List<UserBean> getAllUsers() {
		
		return null;
	}

	@Override
	public UserBean getUser(UserBean user) {
		
		String sql = "SELECT FROM users Username and password Where username =? ";
		
		return null;
	}

	@Override
	public void updateUser(UserBean user) {
		
		
	}

	@Override
	public void deleteUser(UserBean user) {
		
		
	}
	
	

}
