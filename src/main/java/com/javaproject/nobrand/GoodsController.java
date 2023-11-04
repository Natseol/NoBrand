package com.javaproject.nobrand;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class GoodsController {

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/createCookie", method = RequestMethod.GET)
	public String createCookie(HttpServletResponse response) {
		Cookie cookie = new Cookie("name","goodsId");
		cookie.setDomain("localhost");
		cookie.setPath("/");
		cookie.setMaxAge(10000000);
		cookie.setSecure(true);
		response.addCookie(cookie);
		return "redirect:/cart";
	}
	@RequestMapping(value = "/goods", method = RequestMethod.GET)
	public String cart(HttpServletRequest request, Model model) {
		
		return "goods/goods";
	}
}
