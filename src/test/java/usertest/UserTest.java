package usertest;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;

import com.javaproject.nobrand.user.dao.UserDAO;
import com.javaproject.nobrand.user.domain.User;

@ContextConfiguration
public class UserTest {
	@Autowired
	UserDAO userdao;
	
	@Test
	public void add() {
	
		
	}

}
