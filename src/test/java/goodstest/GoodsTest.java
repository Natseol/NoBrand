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
		goods.setName("∏¿¿÷¥¬ ¡¶¡÷±Ë 100g (5g*20)");
		goods.setTopKind("Ωƒ«∞");
		goods.setBottomKind("«ÿªÍπ∞");
		goods.setInfo("∏¿¿÷¥¬ ¡¶¡÷±Ë");
		goods.setImgAddress("resources/images/1000014798997_i1_290.jpg");
		goods.setOptions("¡¶¡÷ªÍ ≈Í 100g (5g*20)");
		goods.setDelivery("∑Œ¡®≈√πË");
		goods.setContent("∏¿¿÷¥¬ ¡¶¡÷±Ë¿Ãø°ø‰");
		goods.setGoodsCount(4);
		goodsDAO.add(goods);
		}	

}
