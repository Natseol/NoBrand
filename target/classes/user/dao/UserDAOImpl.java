package user.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import user.domain.User;

public class UserDAOImpl implements UserDAO {
	private JdbcTemplate jdbctemplate;
	public void setDataSource(DataSource dataSource) {
		jdbctemplate=new JdbcTemplate(dataSource);
	}
	
	private RowMapper<User> mapper=new RowMapper<User>() {
		public User mapRow(ResultSet rs, int rowNum) throws SQLException{
			return new User(
					rs.getInt("id"),
					rs.getString("name"),
					rs.getString("userId"),
					rs.getString("password"),
					rs.getString("phoneNumber"),
					rs.getString("emailAddress"),
					rs.getString("address"),
					rs.getDate("createAt")
					);
		}
	};
	@Override
	public void add(User user) {
		jdbctemplate.update("insert into users ( "
				+ "id,name,userId,password,phoneNumber,emailAddress,address,createAt) "
				+ "values( ?, ?, ?, ?, ?, ?, ?, ?) ",
				user.getId(),
				user.getName(),
				user.getUserId(),
				user.getPassword(),
				user.getPhoneNumber(),
				user.getEmailAddress(),
				user.getAddress(),
				user.getDate()
				);
		// TODO Auto-generated method stub
	}
	@Override
	public User get(int id) {
		// TODO Auto-generated method stub
		return jdbctemplate.queryForObject("select * from users where id=?", new Object[] { id },mapper);
	}

	@Override
	public List<User> getAll() {
		// TODO Auto-generated method stub
		return jdbctemplate.query("select * from users", mapper);
	}

	@Override
	public void update(User user) {
		// TODO Auto-generated method stub
		jdbctemplate.update("update users set ("
				+ "id,"
				+ "name,"
				+ "userId,"
				+ "password,"
				+ "phoneNumber,"
				+ "emailAddress,"
				+ "address,"
				+ "createAt)"
				,
				user.getId(),
				user.getName(),
				user.getUserId(),
				user.getPassword(),
				user.getPhoneNumber(),
				user.getEmailAddress(),
				user.getAddress(),
				user.getDate()
				);
	}
	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		jdbctemplate.update("delete from users where id=?");
	}

}
