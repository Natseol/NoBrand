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
		goods.setName("상품");
		goods.setBottomKind("테스트");
		goods.setInfo("정보");
		goods.setImgAdress("이미지주소");
		goods.setOptions("선택옵션");
		goods.setDelivery("배달주소");
		goods.setContent("내용");
		goods.setGoodsCount(4);
		goodsDAO.add(goods);
		}
	

}
