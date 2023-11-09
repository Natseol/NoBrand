package goodstest;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.javaproject.nobrand.goods.dao.GoodsDAO;
import com.javaproject.nobrand.goods.domain.Goods;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
public class GoodsTest {
	@Autowired
	GoodsDAO goodsDAO;
	
	@Test
	public void add() {
		Goods goods =new Goods();
		goods.setPrice(5480);
		goods.setSearchCount(5);
		goods.setCellCount(6);
		goods.setName("[��귣��] ���ö� �� 100g (5g*20)");
		goods.setTopKind("�׽�Ʈ");
		goods.setBottomKind("�׽�Ʈ");
		goods.setInfo("����");
		goods.setImgAddress("resources/images/1000014798997_i1_290.jpg");
		goods.setOptions("[��귣��] ���ö� �� 100g (5g*20)");
		goods.setDelivery("����ּ�");
		goods.setContent("����");
		goods.setGoodsCount(4);
		goodsDAO.add(goods);
		}	

}
