package category.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import category.domain.Category;

public class CategoryDAOImpl implements CategoryDAO {
	private JdbcTemplate jdbctemplate;
	public void setDataSource(DataSource dataSource) {
		jdbctemplate=new JdbcTemplate(dataSource);
	}
	private RowMapper<Category> mapper=new RowMapper<Category>() {
		public Category mapRow(ResultSet rs, int rowNum) throws SQLException{
			return new Category(
					rs.getString("TOPKIND"),
					rs.getString("BOTTOMKIND")
					);
		}
	};
	@Override
	public void add(Category category) {
		jdbctemplate.update("insert into category ( "
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
		return jdbctemplate.queryForObject("select * from category where \"ID\"=?", new Object[] { id },mapper);
	}

	@Override
	public List<Category> getAll() {
		// TODO Auto-generated method stub
		return jdbctemplate.query("select * from category", mapper);
	}

	@Override
	public void update(Category category) {
		// TODO Auto-generated method stub
		jdbctemplate.update("update category set("
				+ "\"TOPKIND\"=?,"
				+ "\"BOTTOMKIND\"=? where \"TOPKIND\"=? ",
				category.getTopKind(),
				category.getBottomKind()
				);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		jdbctemplate.update("delete from category where \"ID\"=?");
	}

}
