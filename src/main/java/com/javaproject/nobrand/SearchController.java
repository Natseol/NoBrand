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

import com.javaproject.nobrand.category.service.CategorySerivce;
import com.javaproject.nobrand.goods.domain.Goods;

@Controller
public class SearchController {
	@Autowired
	private CategorySerivce cs;
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String sub(@RequestParam Map<String,String> map, HttpServletRequest request) {
		JSONObject json = new JSONObject();
		
		String searchStr = request.getParameter("target");
		List<Goods> goodsList = cs.getTargetList(searchStr);
		json.put("list", goodsList);		
		
		request.setAttribute("list", json.get("list"));		
		return "sub/main";
	}
	
}
