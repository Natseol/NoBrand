package com.javaproject.nobrand;

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
	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public String cart(HttpServletRequest request, Model model) {
		
		return "cart/cart";
	}
}
