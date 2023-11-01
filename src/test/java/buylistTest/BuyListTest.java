package buylistTest;
import static org.hamcrest.CoreMatchers.is;




import static org.junit.Assert.assertThat;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.javaproject.nobrand.buyList.dao.BuyListDAO;
import com.javaproject.nobrand.buyList.domain.BuyList;




@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
public class BuyListTest {
	@Autowired
	BuyListDAO buylistDAO;
	@Test
	public void add() {
		BuyList buyList= new BuyList();
		buyList.setName("상품");
		buyList.setCount(100);
		buyList.setPrice(128800);
		buylistDAO.add(buyList);
	}
	@Test
	public void get() {
		BuyList created =buylistDAO.get(1);
		assertThat(created.getName(), is("상품"));
	}
}
