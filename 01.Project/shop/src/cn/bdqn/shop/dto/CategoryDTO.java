package cn.bdqn.shop.dto;

public class CategoryDTO {
	
	private String catName;
	private String isShow;
	public String getCatName() {
		return catName;
	}
	public void setCatName(String catName) {
		this.catName = catName;
	}
	public String getIsShow() {
		return isShow;
	}
	public void setIsShow(String isShow) {
		this.isShow = isShow;
	}
	public CategoryDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CategoryDTO(String catName, String isShow) {
		super();
		this.catName = catName;
		this.isShow = isShow;
	}

}
