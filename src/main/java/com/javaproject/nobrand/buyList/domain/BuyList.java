package com.javaproject.nobrand.buyList.domain;

import java.util.Date;

public class BuyList {
	private int id;
	private String name;
	private int count;
	private int price;
	private Date createAt;
	public BuyList() {}
	
	public BuyList(int id, String name, int count, int price, Date createAt) {
		this.id = id;
		this.name = name;
		this.count = count;
		this.price = price;
		this.createAt = createAt;
	}
	public BuyList(String name, int count, int price, Date createAt) {
		this.name = name;
		this.count = count;
		this.price = price;
		this.createAt = createAt;
	}
	public BuyList(String name, int count, int price) {
		this.name = name;
		this.count = count;
		this.price = price;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
