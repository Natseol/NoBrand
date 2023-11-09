package com.javaproject.nobrand;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaproject.nobrand.buyList.dao.BuyListDAO;
import com.javaproject.nobrand.buyList.domain.BuyList;
import com.javaproject.nobrand.buyList.service.BuyListService;
import com.javaproject.nobrand.goods.domain.Goods;
import com.javaproject.nobrand.user.dao.UserDAO;
import com.javaproject.nobrand.user.domain.User;

@Controller
public class UserInfoController {
	@Autowired
	UserDAO userDAO;
	@Autowired
	BuyListDAO buyListDAO;
	@Autowired
	BuyListService buyListService; 
	
	@RequestMapping(value = "/userinfo", method = RequestMethod.GET)
	public String userInfo(@RequestParam Map<String,String> map, HttpServletRequest request, HttpSession session) {
		String userId = (String) session.getAttribute("ID");
		User user = userDAO.get(userId);
		List<BuyList> buyList = buyListDAO.getList((user.getId()));		
		List<Goods> goodsList = buyListService.getGoodsList(buyList);
		
		JSONObject jsonUser = new JSONObject(user);
		JSONObject jsonList = new JSONObject();
		jsonList.put("list", buyList);
		jsonList.put("goodsList", goodsList);
		
		request.setAttribute("userInfo", jsonUser);
		request.setAttribute("buyList", jsonList.get("list"));
		request.setAttribute("goodsList", jsonList.get("goodsList"));

		System.out.println(jsonUser);
		System.out.println(jsonList);
		return "userInfo/userInfo";
	}
	
}