package com.javaproject.nobrand.category.domain;


public class Category {
	private int id;
	private String topKind;
	private String bottomKind;
	public Category() {}
	public Category(int id,String topKind, String bottomKind) {
		this.id=id;
		this.topKind = topKind;
		this.bottomKind = bottomKind;
	}
	public Category(String topKind, String bottomKind) {
		this.topKind = topKind;
		this.bottomKind = bottomKind;
	}
	public void setId(int id) {
		this.id=id;
	}
	public int getId() {
		return id;
	}
	public String getTopKind() {
		return topKind;
	}
	public void setTopKind(String topKind) {
		this.topKind = topKind;
	}
	public String getBottomKind() {
		return bottomKind;
	}
	public void setBottomKind(String bottomKind) {
		this.bottomKind = bottomKind;
	}

	

}
