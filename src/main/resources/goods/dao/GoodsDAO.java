package goods.dao;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

public class GoodsDAO {
	private JdbcTemplate jdbcTemplate;
	public void setDataSource(DataSource dataSource) {
		jdbcTemplate=new JdbcTemplate(dataSource);
	}


}
