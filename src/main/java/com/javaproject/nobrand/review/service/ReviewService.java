package com.javaproject.nobrand.review.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaproject.nobrand.review.dao.ReviewDAO;
import com.javaproject.nobrand.review.domain.Review;

@Service
public class ReviewService {
	@Autowired
	ReviewDAO reviewDAO;
	
	public List<Review> getAll(int goodsId) {
		return reviewDAO.getAll(goodsId);
	};
}
