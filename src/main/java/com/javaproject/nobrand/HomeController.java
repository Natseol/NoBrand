package com.javaproject.nobrand;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaproject.nobrand.goods.dao.GoodsDAO;
import com.javaproject.nobrand.goods.domain.Goods;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	GoodsDAO goodsDAO;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpServletRequest request) {
		JSONObject json = new JSONObject();		
		List<Goods> goodsList = goodsDAO.getAll();
		json.put("list", goodsList);
		request.setAttribute("list", json.get("list"));
		System.out.println(json.get("list"));
		return "home";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String postHome(Locale locale, Model model) {
		return "home";
	}
	
	
	@RequestMapping(value = "/bottom", method = RequestMethod.GET)
	public String bottom(Model model) {
		return "bottompage";
	}

	@RequestMapping(value = "/top", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
		return "toppage";
	}
	
	@RequestMapping(value = "/cartbanner", method = RequestMethod.GET)
	public String topPage(Locale locale, Model model) {
		return "toppagessg";
	}

}
