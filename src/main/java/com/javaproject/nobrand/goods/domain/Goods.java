package com.javaproject.nobrand.goods.domain;

public class Goods{
	private int id;
	private int price;
	private int searchCount;
	private int cellCount;
	private int goodsCount;
	private String name;
	private String bottomKind;
	private String info;
	private String imgAdress;
	private String options;
	private String delivery;
	private String content;
	public Goods() {};
	public Goods(int id, int price, int searchCount, int cellCount,int goodsCount, String name, String bottomKind, String info,
			String imgAdress, String options, String delivery, String content) {
		this.id = id;
		this.price = price;
		this.searchCount = searchCount;
		this.cellCount = cellCount;
		this.goodsCount=goodsCount;
		this.name = name;
		this.bottomKind = bottomKind;
		this.info = info;
		this.imgAdress = imgAdress;
		this.options = options;
		this.delivery = delivery;
		this.content = content;
	}
	public Goods(int price, int searchCount, int cellCount,int goodsCount, String name, String bottomKind, String info,
			String imgAdress, String options, String delivery, String content) {
		this.price = price;
		this.searchCount = searchCount;
		this.cellCount = cellCount;
		this.goodsCount=goodsCount;
		this.name = name;
		this.bottomKind = bottomKind;
		this.info = info;
		this.imgAdress = imgAdress;
		this.options = options;
		this.delivery = delivery;
		this.content = content;
	}

	public Goods(String name, int price, String bottomKind, String options, int goodsCount, String delivery, String imgAdress,
			String content, String info) {
		super();
		this.name = name;
		this.price = price;
		this.bottomKind = bottomKind;
		this.options = options;
		this.goodsCount = goodsCount;
		this.delivery = delivery;
		this.imgAdress = imgAdress;
		this.content = content;
		this.info = info;
	}
	
	
	public void setId(int id) {
		this.id=id;
	}
	public void setPrice(int price) {
		this.price=price;
	}
	public void setSearchCount(int searchCount) {
		this.searchCount=searchCount;
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
	public void setImgAdress(String imgAdress) {
		this.imgAdress=imgAdress;
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
	public int getSearchCount() {
		return searchCount;
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
	public String getImgAdress() {
		return imgAdress;
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

}
