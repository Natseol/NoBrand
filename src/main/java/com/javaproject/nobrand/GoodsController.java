package com.javaproject.nobrand;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaproject.nobrand.goods.domain.Goods;
import com.javaproject.nobrand.goods.service.GoodsService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class GoodsController {
	@Autowired
	GoodsService goodsService;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/goods", method = RequestMethod.GET)
	public String goods(HttpServletRequest request, Model model) {

		System.out.println(0);
		int goodsId = Integer.parseInt(request.getParameter("goodsId"));
		System.out.println(goodsId);
		
		
		Goods goods = goodsService.getGoods(goodsId);
		System.out.println(2);
		
		JSONObject json = new JSONObject(goods);
		System.out.println(json);
//		json.put("goodsData", goods);
	
//		System.out.println(json.get("goodsData"));
		
		request.setAttribute("goodsJson", json);
		
		return "goods/goods";
	}
}
