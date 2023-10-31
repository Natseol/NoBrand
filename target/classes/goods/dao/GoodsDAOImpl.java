package goods.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import goods.domain.Goods;

public class GoodsDAOImpl implements GoodsDAO {
	private JdbcTemplate jdbcTemplate;
	public void setDataSource(DataSource dataSource) {
		jdbcTemplate=new JdbcTemplate(dataSource);
	}
	private RowMapper<Goods> mapper = new RowMapper<Goods>() {
		@Override
		public Goods mapRow(ResultSet rs, int rowNum) throws SQLException{
			return new Goods(
					rs.getInt("ID"),
					rs.getInt("PRICE"),
					rs.getInt("SEARCHCOUNT"),
					rs.getInt("CELLCOUNT"),
					rs.getString("NAME"),
					rs.getString("BOTTOMKIND"),
					rs.getString("INFO"),
					rs.getString("IMGADRESS"),
					rs.getString("OPTION"),
					rs.getString("DELIVERY"),
					rs.getString("CONTENT")
					);
		}
	};
	@Override
	public void add(Goods goods) {
		// TODO Auto-generated method stub
		jdbcTemplate.update("insert into goods (\"ID\","
							+ "\"PRICE\","
							+ "\"SEARCHCOUNT\","
							+ "\"CELLCOUNT\","
							+ "\"NAME\","
							+ "\"BOTTOMKIND\","
							+ "\"INFO\","
							+ "\"IMGADRESS\","
							+ "\"OPTION\","
							+ "\"DELIVERY\","
							+ "\"CONTENT\") values (?, ?, ? ,? ,? ,? ,? ,? ,? ,?, ?)",
							goods.getId(),
							goods.getPrice(),
							goods.getSearchCount(),
							goods.getCellCount(),
							goods.getName(),
							goods.getBottomKind(),
							goods.getInfo(),
							goods.getImgAdress(),
							goods.getOptions(),
							goods.getDelivery(),
							goods.getContent()
							);
	}
	@Override
	public Goods get(int id) {
		// TODO Auto-generated method stub
		return jdbcTemplate.queryForObject("select * from goods where \"ID\"=?", new Object[] { id }, mapper);
	}
	@Override
	public List<Goods> getAll() {
		// TODO Auto-generated method stub
		return jdbcTemplate.query("select * from goods",mapper);
	}
	
	@Override
	public void update(Goods goods) {
		// TODO Auto-generated method stub
		jdbcTemplate.update("update goods set ("
				+ "\"PRICE\"=?,"
				+ "\"SEARCHCOUNT\"=?,"
				+ "\"CELLCOUNT\"=?,"
				+ "\"NAME\"=?,"
				+ "\"BOTTOMKIND\"=?,"
				+ "\"INFO\"=?,"
				+ "\"IMGADRESS\"=?,"
				+ "\"OPTION\"=?,"
				+ "\"DELIVERY\"=?,"
				+ "\"CONTENT\"=?) where \"ID\"=? ",
				goods.getPrice(),
				goods.getSearchCount(),
				goods.getCellCount(),
				goods.getName(),
				goods.getBottomKind(),
				goods.getInfo(),
				goods.getImgAdress(),
				goods.getOptions(),
				goods.getDelivery(),
				goods.getContent()
				);
	}
	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		jdbcTemplate.update("delete from goods where \"ID\"=?");
	}}
