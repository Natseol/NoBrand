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
		goods.setPrice(121);
		goods.setSearchCount(5);
		goods.setCellCount(6);
		goods.setName("��ǰ");
		goods.setBottomKind("�׽�Ʈ");
		goods.setInfo("����");
		goods.setImgAdress("�̹����ּ�");
		goods.setOptions("���ÿɼ�");
		goods.setDelivery("����ּ�");
		goods.setContent("����");
		goods.setGoodsCount(4);
		goodsDAO.add(goods);
		}
	

}
