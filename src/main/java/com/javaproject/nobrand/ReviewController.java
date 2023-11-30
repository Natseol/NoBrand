package com.javaproject.nobrand;

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
import com.javaproject.nobrand.review.dao.ReviewDAO;
import com.javaproject.nobrand.review.domain.Review;
import com.javaproject.nobrand.user.dao.UserDAO;
import com.javaproject.nobrand.user.domain.User;

@Controller
public class ReviewController {
	@Autowired
	UserDAO userDAO;
	@Autowired
	BuyListDAO buyListDAO;
	@Autowired
	ReviewDAO reviewDAO;
	
	@RequestMapping(value = "/review", method = RequestMethod.POST)
	public String userInfo(@RequestParam Map<String,String> map) {		
		try {
			int userId = Integer.parseInt(map.get("userId"));
			int goodsId = Integer.parseInt(map.get("goodsId"));
			int score = Integer.parseInt( map.get("score"));
			String content = map.get("content");
			
			Review review = new Review(userId, goodsId, score, content);
			reviewDAO.add(review);
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return "redirect:userinfo";
	}	
}