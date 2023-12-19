package com.javaproject.nobrand;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
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
import com.javaproject.nobrand.goods.domain.Goods;
import com.javaproject.nobrand.goods.service.GoodsService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class CartController {
	@Autowired
	GoodsService goodsService;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public String cart(HttpServletRequest request, Model model) {
	
		return "cart/cart";
	}
	
	@RequestMapping(value = "/cart/id", method = RequestMethod.POST)
	public String cartId(HttpServletRequest request, HttpServletResponse response, Model model) throws ServletException, IOException{
		
		 // JSON �����͸� �б� ���� BufferedReader ����
        BufferedReader reader = request.getReader();

        // JSON �����͸� ������ ���ڿ� ����
        StringBuilder jsonContent = new StringBuilder();
        String line;
        while ((line = reader.readLine()) != null) {
            jsonContent.append(line);
        }

        // JSON �Ľ�
        JSONObject jsonObject = new JSONObject(jsonContent.toString());
        
        JSONArray arr =jsonObject.getJSONArray("id");
        
        int[] idArr = new int[arr.length()];
        for (int i = 0; i < idArr.length; i++) {
			idArr[i] = arr.getInt(i);
		}
        
        Object[] objectArr = new Object[150];
        String isList = "false"; 
        
        for (int i = 0; i < idArr.length; i++) {
        	Goods goods = new Goods();
        	
     		goods = goodsService.getGoods(idArr[i]);
     		
     		JSONObject json = new JSONObject(goods);
     		
     		objectArr[i] = goods;
     		
     		if(idArr[i] != 0) {
     			isList = "true";
     		}
		}
        
        jsonObject.put("goodsObject", objectArr);
        
        Map<String, Object> jsonMap = jsonObject.toMap();
 		request.setAttribute("goodsItem", jsonObject);
 		
 		ObjectMapper objectMapper = new ObjectMapper();
 		
 		response.setContentType("text/html;charset=UTF-8");
 		response.setContentType("application/json");
        objectMapper.writeValue(response.getWriter(), jsonMap);
        
        request.setAttribute("isList", isList);
       
		return "cart/cart";
	}


}
