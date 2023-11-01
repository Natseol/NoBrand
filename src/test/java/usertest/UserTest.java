package usertest;

import static org.junit.Assert.assertThat;


import static org.hamcrest.CoreMatchers.is;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.javaproject.nobrand.user.dao.UserDAO;
import com.javaproject.nobrand.user.domain.User;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
public class UserTest {
	@Autowired
	UserDAO userDAO;
	@Test
	public void add() {
		User user=new User();
		user.setName("name");
		user.setUserId("nickname");
		user.setPassword("pass");
		user.setPhoneNumber("01020201203");
		user.setEmailAddress("eee@eee.@@@");
		user.setAddress("add");
		userDAO.add(user);
	}
	
//	public void add(User user) {
//		user=new User(
//				user.getName(),
//				user.getUserId(),
//				user.getPassword(),
//				user.getPhoneNumber(),
//				user.getEmailAddress(),
//				user.getAddress()
//				);
//		userdao.add(user);
//	}
	@Test
	public void get() {
		User created = userDAO.get(7);
		assertThat(created.getName(),is("name"));
	}
	

}
