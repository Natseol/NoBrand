package com.javaproject.nobrand.user.dao;
import java.util.List;

import com.javaproject.nobrand.user.domain.User;




public interface UserDAO {
	public void add(User user);
	public User get(int id);
<<<<<<< Upstream, based on develop
	public User get(String userId);
=======
	public User get(String userID);
>>>>>>> cbf0654 tag:review and buylist
	public List<User> getAll();
	public void update(User user);
	public void delete(int id);
}
