package com.javaproject.nobrand.review.domain;


public class Review {
	private int goodsId;
	private int userId;
	private int score;
	private String content;
	private String userStrId;
	
	public Review() {}
	
	public Review(int userId,int goodsId, int score, String content, String userStrId) {
		this.userId=userId;
		this.goodsId = goodsId;
		this.score = score;
		this.content = content;
		this.userStrId = userStrId;
	}
	public Review(int goodsId, int score, String content) {
		this.goodsId = goodsId;
		this.score = score;
		this.content = content;
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getUserStrId() {
		return userStrId;
	}
	public void setUserStrId(String userStrId) {
		this.userStrId = userStrId;
	}
	
	
}
