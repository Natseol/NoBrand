package com.javaproject.nobrand.buyList.dao;


import java.sql.ResultSet;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.javaproject.nobrand.buyList.domain.BuyList;


@Repository("buylistDAO")
public class BuyListDAOImpl implements BuyListDAO {
	@Autowired
	private JdbcTemplate jdbctemplate;
//	public void setDataSource(DataSource dataSource) {
//		jdbctemplate=new JdbcTemplate(dataSource);
//	}
	private RowMapper<BuyList> mapper=new RowMapper<BuyList>() {
		public BuyList mapRow(ResultSet rs, int rowNum) throws SQLException{
			return new BuyList(
					rs.getInt("USER_ID"),
					rs.getInt("GOODS_ID"),
					rs.getInt("COUNT"),
					rs.getInt("PRICE"),
					rs.getDate("CREATEAT")
					);
		}
	};
	@Override
	public void add(BuyList buyList) {
		jdbctemplate.update("insert into BUYLIST ( "
				+ "USER_ID,GOODS_ID, COUNT,PRICE) "
				+ "values(?, ?, ?, ?)",
				buyList.getUserID(),
				buyList.getGoodsID(),
				buyList.getCount(),
				buyList.getPrice()
				);
	}

	@Override
	public BuyList get(String userId) {
		// TODO Auto-generated method stub
		return jdbctemplate.queryForObject("select * from BUYLIST where USER_ID=?", new Object[] { userId },mapper);
	}
	
	@Override
	public List<BuyList> getList(int id) {
		// TODO Auto-generated method stub
		return jdbctemplate.query("select * from BUYLIST where USER_ID=?", new Object[] { id },mapper);
	}

	@Override
	public List<BuyList> getAll() {
		// TODO Auto-generated method stub
		return jdbctemplate.query("select * from BUYLIST", mapper);
	}

	@Override
	public void update(BuyList buyList) {
		jdbctemplate.update("update BUYLIST set("
				+ "USER_ID=?,"
				+ "GOODS_ID=?,"
				+ "COUNT=?,"
				+ "PRICE=?"
				+") where USER_ID=?",
				buyList.getUserID(),
				buyList.getGoodsID(),
				buyList.getCount(),
				buyList.getPrice(),
				
				buyList.getUserID()
				);
	}
	@Override
	public void delete(String userId) {
		jdbctemplate.update("delete from BUYLIST where USER_ID=?",userId);
		// TODO Auto-generated method stub
	}

}
