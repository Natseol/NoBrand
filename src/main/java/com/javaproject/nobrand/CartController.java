package com.javaproject.nobrand;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class CartController {

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/cartin", method = RequestMethod.GET)
	public String cart(HttpServletRequest request, Model model) {
		String id = (String) request.getParameter("cart_list");
		String testid = "1";
		
		//id = testid;
		
		try {
			System.out.println("시험용 id = 1");
		}catch(Exception e) {
			System.out.println("장바구니에 상품이 담겨있지 않음");
			return "cartnullgodds";
		}
		
		if(id != null) {
			System.out.println("장바구니 상품이 담겨있다.");
			return "cart";
		}
		return "cartnullgodds";
	}
}
