package com.javaproject.nobrand.user.dao;

import java.sql.ResultSet;

import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.javaproject.nobrand.user.domain.User;

@Repository
public class UserDAOImpl implements UserDAO {
	private JdbcTemplate jdbctemplate;
	public void setDataSource(DataSource dataSource) {
		jdbctemplate=new JdbcTemplate(dataSource);
	}
	
	private RowMapper<User> mapper=new RowMapper<User>() {
		public User mapRow(ResultSet rs, int rowNum) throws SQLException{
			return new User(
					rs.getInt("ID"),
					rs.getString("NAME"),
					rs.getString("USERID"),
					rs.getString("PASSWORD"),
					rs.getString("PHONENUMBER"),
					rs.getString("EMAILADDRESS"),
					rs.getString("ADDRESS"),
					rs.getDate("CREATEAT")
					);
		}
	};
	@Override
	public void add(User user) {
		jdbctemplate.update("insert into USERS ( "
				+ "\"ID\",\"NAME\",\"USERID\",\"PASSWORD\",\"PHONENUMBER\",\"EMAILADDRESS\",\"ADDRESS\",\"CREATEAT\") "
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
		return jdbctemplate.queryForObject("select * from USERS where \"ID\"=?", new Object[] { id },mapper);
	}

	@Override
	public List<User> getAll() {
		// TODO Auto-generated method stub
		return jdbctemplate.query("select * from USERS", mapper);
	}

	@Override
	public void update(User user) {
		// TODO Auto-generated method stub
		jdbctemplate.update("update USERS set ("
				+ "\"NAME\"=?,"
				+ "\"USERID\"=?,"
				+ "\"PASSWORD\"=?,"
				+ "\"PHONENUMBER\"=?,"
				+ "\"EMAILADDRESS\"=?,"
				+ "\"ADDRESS\"=?,"
				+ "\"CREATEAT\"=?) where \"ID\"=?"
				,
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
		jdbctemplate.update("delete from USERS where \"id\"=?");
	}

}
