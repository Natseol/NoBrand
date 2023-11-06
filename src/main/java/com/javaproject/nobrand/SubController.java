package com.javaproject.nobrand;

import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaproject.nobrand.goods.dao.GoodsDAO;
import com.javaproject.nobrand.goods.domain.Goods;

@Controller
public class SubController {
	
	@Autowired
	ServletContext context;
	
	@Autowired
	private GoodsDAO goodsDAO;

	@RequestMapping(value = "/sub", method = RequestMethod.GET)
	public String sub(@RequestParam Map<String,String> map, HttpServletRequest request) {
		List<Goods> goodsList = goodsDAO.getAll();
		
		
		JSONObject json = new JSONObject();
		json.put("list", goodsList);
		
		request.setAttribute("list", json.get("list"));		
		System.out.println(json.get("list"));
		return "sub/main";
	}
	
}
