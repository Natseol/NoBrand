package com.javaproject.nobrand;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaproject.nobrand.user.domain.User;
import com.javaproject.nobrand.user.service.UserService;


	@Controller
	public class UserController {
		@Autowired
		public UserService userService;
		@RequestMapping(value="/regist",method=RequestMethod.GET)
		public String regist() {
			return "user/regist";
		}
		@RequestMapping(value="/regist",method=RequestMethod.POST)
		public String registPost(@RequestParam Map<String,String> map) {
			userService.add(new User(
					map.get("NAME"),
					map.get("USERID"),
					map.get("PASSWORD"),
					map.get("PHONENUMBER"),
					map.get("EMAILADDRESS"),
					map.get("ADDRESS")
					));
			return "redirect:/regist";
		}
		@RequestMapping(value="/login",method=RequestMethod.POST)
		public String logInPost(@RequestParam Map<String,String> map,HttpSession session) {
			User user=new User();
			user.setUserId(map.get("user-id"));
			user.setPassword(map.get("user-pw"));
			System.out.println(map.get("user-id"));
			user =userService.login(user);
			System.out.println(user.getPassword());
			if(user!=null)session.setAttribute("userName", user.getName());
			
			return "redirect:/";
		}
		
				
		}


