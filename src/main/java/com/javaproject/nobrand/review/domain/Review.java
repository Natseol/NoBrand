package com.javaproject.nobrand.review.domain;


public class Review {
	private int goodsId;
	private int userId;
	private int score;
	private int count;
	public Review() {}
	
	public Review(int userId,int goodsId, int score, int count) {
		this.userId=userId;
		this.goodsId = goodsId;
		this.score = score;
		this.count = count;
	}
	public Review(int goodsId, int score, int count) {
		this.goodsId = goodsId;
		this.score = score;
		this.count = count;
	}

	public int getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	

}
