package com.javaproject.nobrand.category.dao;

import java.sql.ResultSet;

import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.javaproject.nobrand.category.domain.Category;

@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {
	@Autowired
	private JdbcTemplate jdbctemplate;
//	public void setDataSource(DataSource dataSource) {
//		jdbctemplate=new JdbcTemplate(dataSource);
//	}
	private RowMapper<Category> mapper=new RowMapper<Category>() {
		public Category mapRow(ResultSet rs, int rowNum) throws SQLException{
			return new Category(
					rs.getInt("ID"),
					rs.getString("TOPKIND"),
					rs.getString("BOTTOMKIND")
					);
		}
	};
	@Override
	public void add(Category category) {
		jdbctemplate.update("insert into CATEGORIES ( "
				+ "\"TOPKIND\",\"BOTTOMKIND\") "
				+ "values(?, ?) ",
				category.getTopKind(),
				category.getBottomKind()
				);
		// TODO Auto-generated method stub
	}
	@Override
	public Category get(int id) {
		// TODO Auto-generated method stub
		return jdbctemplate.queryForObject("select * from CATEGORIES where \"ID\"=?", new Object[] { id },mapper);
	}

	@Override
	public List<Category> getAll() {
		// TODO Auto-generated method stub
		return jdbctemplate.query("select * from CATEGORIES", mapper);
	}

	@Override
	public void update(Category category) {
		// TODO Auto-generated method stub
		jdbctemplate.update("update CATEGORIES set("
				+ "\"TOPKIND\"=?,"
				+ "\"BOTTOMKIND\"=? where \"TOPKIND\"=? ",
				category.getTopKind(),
				category.getBottomKind()
				);
	}
	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		jdbctemplate.update("delete from CATEGORIES where \"ID\"=?");
	}

}
