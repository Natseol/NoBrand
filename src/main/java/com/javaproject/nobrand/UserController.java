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
		
		
		//회원가입 페이지로 이동(홈페이지 등에서 주소연결 요망)
		public String regist() {
			return "/login/regist";
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
			return "redirect:/";
		}
		@RequestMapping(value="/login",method=RequestMethod.GET)
		public String login() {
			return "/login/login";
		}
		
		//로그인 쪽(로그인 되면 이전 페이지)
		@RequestMapping(value="/login",method=RequestMethod.POST)
		public String logInPost(@RequestParam Map<String,String> map,HttpSession session) {
			User user=new User();
			user.setUserId(map.get("USERID"));
			user.setPassword(map.get("PASSWORD"));
			user =userService.login(user);
			//세션 저장 전에 유저 정보가 제대로 불러와졌는지 확인용
			System.out.println(user.getName());
			if(user!=null) session.setAttribute("user", user.getName());
			//세션이 잘 저장됬는지 유저name으로 확인용
			System.out.println(session.getAttribute("user"));
			
			return "redirect:/login";
		}
		@RequestMapping(value="/logout",method=RequestMethod.POST)
		public String logOutPost(@RequestParam Map<String,String> map,HttpSession session) {
			session.setAttribute("user", null);
			return "redirect:/login";
		}
	}


