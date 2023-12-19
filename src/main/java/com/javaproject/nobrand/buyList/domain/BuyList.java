package com.javaproject.nobrand.buyList.domain;

import java.util.Date;

public class BuyList {
	private int userID;
	private int goodsID;
	private int count;
	private int price;
	private Date createAt;
	public BuyList() {}
	
	public BuyList(int userID, int goodsID, int count, int price, Date createAt) {
		this.userID = userID;
		this.goodsID = goodsID;
		this.count = count;
		this.price = price;
		this.createAt = createAt;
	}
	public BuyList(int goodsID, int count, int price, Date createAt) {
		this.goodsID = goodsID;
		this.count = count;
		this.price = price;
		this.createAt = createAt;
	}
	public BuyList(int goodsID, int count, int price) {
		this.goodsID = goodsID;
		this.count = count;
		this.price = price;
	}

	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public int getGoodsID() {
		return goodsID;
	}
	public void setGoodsID(int goodsID) {
		this.goodsID = goodsID;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public Date getCreateAt() {
		return createAt;
	}
	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	};
	
	

}
