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
	
	@RequestMapping(value = "/review", method = RequestMethod.GET)
	public String userInfo(HttpServletRequest request, HttpSession session) {		
		int userId = (Integer) session.getAttribute("userId");
		int goodsId = (Integer) session.getAttribute("goodsId");
		int score = (Integer) session.getAttribute("score");
		String context = (String) session.getAttribute("context");
		
		Review review = new Review();
		reviewDAO.add(review);		
		
		return "review/review";
	}	
}