package com.javaproject.nobrand.review.dao;

import java.sql.ResultSet;

import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.javaproject.nobrand.review.domain.Review;

@Repository("reviewDAO")
public class ReviewDAOImpl implements ReviewDAO{
	@Autowired
	private JdbcTemplate jdbctemplate;
//	public void setDataSource(DataSource dataSource) {
//		jdbctemplate=new JdbcTemplate(dataSource);
//	}
	private RowMapper<Review> mapper=new RowMapper<Review>() {
		public Review mapRow(ResultSet rs, int rowNum) throws SQLException{
			return new Review(
					rs.getInt("USER_ID"),
					rs.getInt("GOODS_ID"),
					rs.getInt("SCORE"),
					rs.getString("CONTENT")
					);
		}
	};


	@Override
	public void add(Review review) {
		jdbctemplate.update("insert into review ( "
				+"\"USER_ID\",\"GOODS_ID\" ,\"SCORE\", \"CONTENT\") "
				+ "values( ?, ?, ?, ?)",
				review.getUserId(),
				review.getGoodsId(),
				review.getScore(),
				review.getContent()
				);
		// TODO Auto-generated method stub
	}
	@Override
	public Review get(int userId) {
		// TODO Auto-generated method stub
		return jdbctemplate.queryForObject("select * from review where \"USER_ID\"=?", new Object[] { userId },mapper);
	}

	@Override
	public List<Review> getAll() {
		// TODO Auto-generated method stub
		return jdbctemplate.query("select * from review", mapper);
	}

	@Override
	public void update(Review review) {
		// TODO Auto-generated method stub
		jdbctemplate.update("update review set("
				+"\"USER_ID\"=?,"
				+ "\"GOODS_ID\"=?,"
				+ "\"SCORE\"=?,"
				+ "\"CONTENT\"=?) where \"USER_ID\"=?",
				review.getUserId(),
				review.getGoodsId(),
				review.getScore(),
				review.getContent(),
				review.getUserId()
				);
	}

	@Override
	public void delete(int userId) {
		// TODO Auto-generated method stub
		jdbctemplate.update("delete from review where \"USER_ID\"=?",userId);
	}

}
