package com.javaproject.nobrand.goods.domain;

public class Goods{
	private int id;
	private int price;
	private int delete;
	private int cellCount;
	private int goodsCount;
	private String name;
	private String topKind;
	private String bottomKind;
	private String info;
	private String imgAddress;
	private String options;
	private String delivery;
	private String content;
	public Goods() {};
	
	public Goods(int id, int price, int delete, int cellCount, int goodsCount, String name, String topKind,
			String bottomKind, String info, String imgAddress, String options, String delivery, String content) {
		this.id = id;
		this.price = price;
		this.delete = delete;
		this.cellCount = cellCount;
		this.goodsCount = goodsCount;
		this.name = name;
		this.topKind = topKind;
		this.bottomKind = bottomKind;
		this.info = info;
		this.imgAddress = imgAddress;
		this.options = options;
		this.delivery = delivery;
		this.content = content;
	}

	public Goods(int price, int delete, int cellCount, int goodsCount, String name, String topKind,
			String bottomKind, String info, String imgAddress, String options, String delivery, String content) {
		this.price = price;
		this.delete = delete;
		this.cellCount = cellCount;
		this.goodsCount = goodsCount;
		this.name = name;
		this.topKind = topKind;
		this.bottomKind = bottomKind;
		this.info = info;
		this.imgAddress = imgAddress;
		this.options = options;
		this.delivery = delivery;
		this.content = content;
	}

	public Goods(String name, int price,String topKind, String bottomKind, String options, int goodsCount, String delivery, String imgAddress,
			String content, String info) {
		super();
		this.name = name;
		this.price = price;
		this.topKind = topKind;
		this.bottomKind = bottomKind;
		this.options = options;
		this.goodsCount = goodsCount;
		this.delivery = delivery;
		this.imgAddress = imgAddress;
		this.content = content;
		this.info = info;
	}
	
	
	public void setId(int id) {
		this.id=id;
	}
	public void setPrice(int price) {
		this.price=price;
	}
	public void setDelete(int delete) {
		this.delete=delete;
	}
	public void setCellCount(int cellCount) {
		this.cellCount=cellCount;
	}
	public void setGoodsCount(int goodsCount) {
		this.goodsCount=goodsCount;
	}
	public int getGoodsCount() {
		return goodsCount;
	}
	public void setName(String name) {
		this.name=name;
	}
	public void setBottomKind(String bottomKind) {
		this.bottomKind=bottomKind;
	}
	public void setInfo(String info) {
		this.info=info;
	}
	public void setImgAddress(String imgAddress) {
		this.imgAddress=imgAddress;
	}
	public void setOptions(String options) {
		this.options=options;
	}
	public void setDelivery(String delivery) {
		this.delivery=delivery;
	}
	public void setContent(String content) {
		this.content=content;
	}
	public int getId() {
		return id;
	}
	public int getPrice() {
		return price;
	}
	public int getDelete() {
		return delete;
	}
	public int getCellCount() {
		return cellCount;
	}
	public String getName() {
		return name;
	}
	public String getBottomKind() {
		return bottomKind;
	}

	public String getInfo() {
		return info;
	}
	public String getImgAddress() {
		return imgAddress;
	}
	
	public String getOptions() {
		return options;
	}
	public String getDelivery() {
		return delivery;
	}
	public String getContent() {
		return content;
	}
	public String getTopKind() {
		return topKind;
	}
	public void setTopKind(String topKind) {
		this.topKind = topKind;
	}
	

}
