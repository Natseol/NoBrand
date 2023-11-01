package com.javaproject.nobrand.buyList.dao;


import java.sql.ResultSet;

import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.javaproject.nobrand.buyList.domain.BuyList;


@Repository
public class BuyListDAOImpl implements BuyListDAO {
	private JdbcTemplate jdbctemplate;
	public void setDataSource(DataSource dataSource) {
		jdbctemplate=new JdbcTemplate(dataSource);
	}
	private RowMapper<BuyList> mapper=new RowMapper<BuyList>() {
		public BuyList mapRow(ResultSet rs, int rowNum) throws SQLException{
			return new BuyList(
					rs.getInt("ID"),
					rs.getString("NAME"),
					rs.getInt("COUNT"),
					rs.getInt("PRICE"),
					rs.getDate("CREATEAT")
					);
		}
	};
	@Override
	public void add(BuyList buyList) {
		jdbctemplate.update("insert into buyList ( "
				+ "\"ID\", \"NAME\", \"COUNT\",\"PRICE\",\"CREATEAT\") "
				+ "values( ?, ?, ?, ?,? )",
				buyList.getId(),
				buyList.getName(),
				buyList.getCount(),
				buyList.getPrice(),
				buyList.getCreateAt()
				);
	}

	@Override
	public BuyList get(int id) {
		// TODO Auto-generated method stub
		return jdbctemplate.queryForObject("select * from buyList where \"ID\"=?", new Object[] { id },mapper);
	}

	@Override
	public List<BuyList> getAll() {
		// TODO Auto-generated method stub
		return jdbctemplate.query("select * from buyList", mapper);
	}

	@Override
	public void update(BuyList buyList) {
		jdbctemplate.update("update buyList set("
				+ "\"NAME\"=?,"
				+ "\"COUNT\"=?,"
				+ "\"PRICE\"=?,"
				+ "\"CREATEAT\"=?) where \"ID\"=?",
				buyList.getName(),
				buyList.getCount(),
				buyList.getPrice(),
				buyList.getCreateAt()
				);
		
	}

	@Override
	public void delete(int id) {
		jdbctemplate.update("delete from review where \"ID\"=?");
		// TODO Auto-generated method stub
	}

}
