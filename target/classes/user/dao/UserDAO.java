package user.dao;

import java.util.List;

import user.domain.User;

public interface UserDAO {
	public void add(User user);
	public User get(int id);
	public List<User> getAll();
	public void update(User user);
	public void delete(int id);
}
