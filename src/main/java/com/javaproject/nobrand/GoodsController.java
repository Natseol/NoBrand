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

		int goodsId = Integer.parseInt(request.getParameter("goodsId"));
		
		Goods goods = goodsService.getGoods(goodsId);
		
		JSONObject json = new JSONObject(goods);
		
		request.setAttribute("goodsJson", json);
		
		return "goods/goods";
	}
}
