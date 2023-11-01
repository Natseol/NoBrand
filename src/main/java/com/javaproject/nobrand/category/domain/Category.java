package com.javaproject.nobrand.category.domain;


public class Category {
	private String topKind;
	private String bottomKind;
	public Category() {}
	public Category(String topKind, String bottomKind) {
		this.topKind = topKind;
		this.bottomKind = bottomKind;
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
