package com.javaproject.nobrand;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaproject.nobrand.buyList.dao.BuyListDAO;
import com.javaproject.nobrand.user.dao.UserDAO;
import com.javaproject.nobrand.user.domain.User;

@Controller
public class UserInfoController {
	@Autowired
	UserDAO userDAO;
	@Autowired
	BuyListDAO buyListDAO;
	
	@RequestMapping(value = "/userinfo", method = RequestMethod.GET)
	public String userInfo(@RequestParam Map<String,String> map, HttpServletRequest request, HttpSession session) {		
		String userId = (String) session.getAttribute("ID");
		User user = userDAO.get(userId);
		
		JSONObject json = new JSONObject(user);		
		request.setAttribute("user", json);
		System.out.println(json);
		return "userInfo/userInfo";
	}
	
}