package goods.domain;

public class GoodsBean {
	private int id;
	private int price;
	private int searchCount;
	private int cellCount;
	private String name;
	private String bottomKind;
	private String info;
	private String imgAdress;
	private String options;
	private String delivery;
	private String content;
	public GoodsBean() {};
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
