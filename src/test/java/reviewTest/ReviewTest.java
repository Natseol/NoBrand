package reviewTest;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.javaproject.nobrand.review.dao.ReviewDAO;
import com.javaproject.nobrand.review.domain.Review;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
public class ReviewTest {
	@Autowired
	ReviewDAO reviewDAO;
//	@Test
	public void add() {
		Review review=new Review();
		review.setGoodsId(2);
		review.setScore(4);
		review.setContent("5");
		reviewDAO.add(review);
	}

}
