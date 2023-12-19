package com.javaproject.nobrand;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.javaproject.nobrand.goods.dao.GoodsDAO;
import com.javaproject.nobrand.goods.domain.Goods;
import com.javaproject.nobrand.goods.service.GoodsService;
import com.javaproject.nobrand.review.domain.Review;
import com.javaproject.nobrand.review.service.ReviewService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class GoodsController {
	@Autowired
	GoodsService goodsService;
	@Autowired
	GoodsDAO goodsDAO;
	@Autowired
	ReviewService reviewService;
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/goods", method = RequestMethod.GET)
	public String goods(HttpServletRequest request, Model model) {

		int goodsId = Integer.parseInt(request.getParameter("goodsid"));
		
		Goods goods = goodsService.getGoods(goodsId);
		List<Review> reviews = reviewService.getAll(goodsId);
		
		if(goods.getDelete() == 1) {
			return "/home";
		}
		
		JSONObject json = new JSONObject(goods);
		JSONObject reviewJson = new JSONObject();
		reviewJson.put("list", reviews);
		request.setAttribute("goodsJson", json);
		request.setAttribute("reviews", reviewJson.get("list"));
		
		
		return "goods/goods";
	}
	
	@RequestMapping(value = "/goodsdelete", method = RequestMethod.POST)
	public String goodsDelete(HttpServletRequest request, HttpServletResponse response, Model model) throws ServletException, IOException {
		
		ObjectMapper mapper = new ObjectMapper();
		
		JsonNode node = mapper.readTree(request.getInputStream());
		
		System.out.println("node="+node);
		
		JsonNode node1 = node.get("id");
		
		System.out.println("node1="+node1);
		
		try {
			
			int goodsId = node1.asInt();
			System.out.println("goodsId:"+goodsId);
			
			Goods goods = goodsDAO.get(goodsId);
			goods.setDelete(1);
			goodsDAO.update(goods);
			
			System.out.println(goodsDAO.get(goodsId).getDelete());
			
			System.out.println("삭제성공");
			
		}catch(NullPointerException e) {
			System.out.println(e.getMessage());
		}
		
		return "redirect:/";
	}
}
