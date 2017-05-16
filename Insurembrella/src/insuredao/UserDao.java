package insuredao;

import insurebean.UserBean;

import java.util.List;


public interface UserDao {
	
	public void Create(UserBean user);
	public List<UserBean> getAllUsers();
	public UserBean getUser(UserBean user);
	public void updateUser(UserBean user);
	public void deleteUser(UserBean user);
	


}
