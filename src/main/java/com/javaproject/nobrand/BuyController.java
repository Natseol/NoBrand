package com.javaproject.nobrand;


import java.io.BufferedReader;
import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.javaproject.nobrand.buyList.dao.BuyListDAO;
import com.javaproject.nobrand.buyList.domain.BuyList;
import com.javaproject.nobrand.goods.dao.GoodsDAO;
import com.javaproject.nobrand.goods.domain.Goods;
import com.javaproject.nobrand.goods.service.GoodsService;
import com.javaproject.nobrand.user.dao.UserDAO;
import com.javaproject.nobrand.user.domain.User;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BuyController {
	@Autowired
	GoodsDAO goodsDAO;
	@Autowired
	BuyListDAO buyListDAO;
	@Autowired
	UserDAO userDAO;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/buy", method = RequestMethod.GET)
	public String buy(HttpServletRequest request, Model model) {
	
		return "buy/buy";
	}
	@RequestMapping(value = "/buy/id", method = RequestMethod.POST)
	public String buy(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) throws ServletException, IOException{
		
        BufferedReader reader = request.getReader();

        StringBuilder jsonContent = new StringBuilder();
        String line;
        while ((line = reader.readLine()) != null) {
            jsonContent.append(line);
        }

        JSONObject myObject = new JSONObject(jsonContent.toString());
        
        JSONArray jArray =myObject.getJSONArray("id");
        
        int[] idListGoods = new int[jArray.length()];
        for (int i = 0; i < idListGoods.length; i++) {
        	idListGoods[i] = jArray.getInt(i);
		}
        
        Object[] myArr = new Object[150];
        
        for (int i = 0; i < idListGoods.length; i++) {
        	Goods goodsList = new Goods();
        	
        	goodsList = goodsDAO.get(idListGoods[i]);
     		
     		JSONObject goodsJson = new JSONObject(goodsList);
     		
     		myArr[i] = goodsList;
		}
        
        myObject.put("goodsObject", myArr);
        
        Map<String, Object> myMap = myObject.toMap();
 		request.setAttribute("goodsItem", myObject);
 		
 		ObjectMapper objectMapper = new ObjectMapper();
 		
 		response.setContentType("text/html;charset=UTF-8");
 		response.setContentType("application/json");
        objectMapper.writeValue(response.getWriter(), myMap);
        
		return "buy/buy";
	}
	@RequestMapping(value = "/buy/buyList", method = RequestMethod.POST)
	public String buyList(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) throws ServletException, IOException{
		
		ObjectMapper mapper = new ObjectMapper();
		
		JsonNode node = mapper.readTree(request.getInputStream());
		
		JsonNode node1 = node.get("goods");
		
		ArrayNode jArray = mapper.createArrayNode();
		
		for (JsonNode item : node1) {
			jArray.add(item);
		}
        
        String userId = (String)session.getAttribute("ID");
        User user = userDAO.get(userId);
        
        for (int i = 0; i < jArray.size(); i++) {
        	
        	try {
        		JsonNode object = jArray.get(i);

            	int id = object.get("goodsId").asInt();
            	int count = object.get("goodsCount").asInt();
            	
            	int nowCount = goodsDAO.get(id).getGoodsCount() - count;
            	
            	if(nowCount < 0) {
            		return "buy/buy";
            	}
            	
            	BuyList buyList = new BuyList();
            	
            	buyList.setUserID(user.getId());
            	buyList.setGoodsID(id);
            	buyList.setCount(count);
            	buyList.setPrice(goodsDAO.get(id).getPrice());
            	
            	Goods goods = goodsDAO.get(id);
            	
            	goods.setGoodsCount(goods.getCellCount()+nowCount);
            	goods.setCellCount(count);
            	
            	goodsDAO.update(goods);
            	buyListDAO.add(buyList);
            	
            	System.out.println("db insert");
        	}catch(NullPointerException e) {
        		System.out.println(e.getMessage());
        	}
		}
        
        response.setContentType("text/html;charset=UTF-8");
 		response.setContentType("application/json");
 		
        
		return "redirect:/";
	}
}