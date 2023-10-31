package category.domain;

public class CategoryBean {
	private String bottomKind;
	private String topKind;
	private String middleKind;
	public CategoryBean() {}
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
