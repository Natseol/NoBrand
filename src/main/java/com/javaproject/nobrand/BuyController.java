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

import com.fasterxml.jackson.databind.ObjectMapper;
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
	public String buy(HttpServletRequest request, HttpServletResponse response, Model model) throws ServletException, IOException{
		
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
		
		BufferedReader reader =request.getReader();
		StringBuilder jsonContent = new StringBuilder();
        String line;
        while ((line = reader.readLine()) != null) {
            jsonContent.append(line);
        }
        
        JSONObject myObject = new JSONObject(jsonContent.toString());
        System.out.println(myObject);
        JSONArray jArray =myObject.getJSONArray("goods");
        System.out.println(jArray);
        
        String userId = (String)session.getAttribute("ID");
        User user = userDAO.get(userId);
        
        for (int i = 0; i < jArray.length(); i++) {
        	
        	try {
        		JSONObject object = (JSONObject)jArray.get(i);
        		
        		System.out.println(object);
    			
            	Object objectId = (Object)object.get("goodsId");
            	Object objectCount = (Object)object.get("goodsCount");
            	String stringId = objectId.toString();
            	String stringCount = objectCount.toString();
            	int id = Integer.parseInt(stringId);
            	int count = Integer.parseInt(stringCount);
            	
            	BuyList buyList = new BuyList();
            	
            	buyList.setUserID(user.getId());
            	buyList.setGoodsID(id);
            	buyList.setCount(count);
            	buyList.setPrice(goodsDAO.get(id).getPrice());
            	
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