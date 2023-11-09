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
import com.javaproject.nobrand.goods.dao.GoodsDAO;
import com.javaproject.nobrand.goods.domain.Goods;
import com.javaproject.nobrand.user.dao.UserDAO;
import com.javaproject.nobrand.user.domain.User;




@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
public class BuyListTest {
	@Autowired
	BuyListDAO buylistDAO;
	@Autowired
	UserDAO userDAO;
	@Autowired
	GoodsDAO goodsDAO;
	@Test
	public void add() {
		User user=userDAO.get(3);
		Goods goods=goodsDAO.get(2);
		BuyList buylist=new BuyList();
		buylist.setUserID(user.getId());
		buylist.setGoodsID(goods.getId());
		buylist.setCount(4);
		buylist.setPrice(goods.getPrice());
		buylistDAO.add(buylist);
//	}
//	@Test
//	public void get() {
//		BuyList created =buylistDAO.get(1);
//		assertThat(created.getName(), is("ªÛ«∞"));
//	}
	}
}
