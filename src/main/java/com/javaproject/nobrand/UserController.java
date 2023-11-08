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
<<<<<<< Upstream, based on develop
		//È¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½Ìµï¿½(È¨ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½î¿¡ï¿½ï¿½ ï¿½Ö¼Ò¿ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½)
=======
		//È¸¿ø°¡ÀÔ ÆäÀÌÁö·Î ÀÌµ¿(È¨ÆäÀÌÁö µî¿¡¼­ ÁÖ¼Ò¿¬°á ¿ä¸Á)
>>>>>>> 34a9e67 tag:login
		public String regist() {
			return "/login/regist";
		}
		
		
		@RequestMapping(value="/loginFailed",method=RequestMethod.GET)
		public String loginFailed() {
			return "/login/loginFailed";
			}
		@RequestMapping(value="/loginSuccess",method=RequestMethod.GET)
<<<<<<< Upstream, based on develop
		//È¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½Ìµï¿½(È¨ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½î¿¡ï¿½ï¿½ ï¿½Ö¼Ò¿ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½)
=======
		//È¸¿ø°¡ÀÔ ÆäÀÌÁö·Î ÀÌµ¿(È¨ÆäÀÌÁö µî¿¡¼­ ÁÖ¼Ò¿¬°á ¿ä¸Á)
>>>>>>> 34a9e67 tag:login
		public String loginSuccess() {
			return "/login/loginSuccess";
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
		
		//ï¿½Î±ï¿½ï¿½ï¿½ ï¿½ï¿½(ï¿½Î±ï¿½ï¿½ï¿½ ï¿½Ç¸ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½)
		@RequestMapping(value="/login",method=RequestMethod.POST)
		public String logInPost(@RequestParam Map<String,String> map,HttpSession session) {
			String isFailed="redirect:login/loginFalied";
			User user=new User();
			user.setUserId(map.get("USERID"));
			user.setPassword(map.get("PASSWORD"));
			user =userService.login(user);
			if(user!=null) { session.setAttribute("ID", user.getUserId());
				System.out.println(session.getAttribute("ID"));
				isFailed= "redirect:/loginSuccess";
			}else if(user==null) {
				isFailed="redirect:/loginFailed";
			}
			return isFailed;
		}
		@RequestMapping(value="/logout",method=RequestMethod.POST)
		public String logOutPost(@RequestParam Map<String,String> map,HttpSession session) {
			session.setAttribute("ID", null);
			return "redirect:/";
		}
	}

