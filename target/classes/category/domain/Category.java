package category.domain;

public class Category {
	private String topKind;
	private String middleKind;
	private String bottomKind;
	public Category() {}
	public Category(String topKind, String middleKind, String bottomKind) {
		this.topKind = topKind;
		this.middleKind = middleKind;
		this.bottomKind = bottomKind;
	}
	public String getTopKind() {
		return topKind;
	}
	public void setTopKind(String topKind) {
		this.topKind = topKind;
	}
	public String getMiddleKind() {
		return middleKind;
	}
	public void setMiddleKind(String middleKind) {
		this.middleKind = middleKind;
	}
	public String getBottomKind() {
		return bottomKind;
	}
	public void setBottomKind(String bottomKind) {
		this.bottomKind = bottomKind;
	}

	

}
