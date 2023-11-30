package com.javaproject.nobrand.review.dao;

import java.util.List;

import com.javaproject.nobrand.review.domain.Review;




public interface ReviewDAO {
	public void add(Review review);
	public Review get(int userID);
	public List<Review> getAll(int goodsId);
	public void update(Review review);
	public void delete(int userID);
}
