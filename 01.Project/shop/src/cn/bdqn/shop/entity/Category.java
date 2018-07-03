package cn.bdqn.shop.entity;

import java.sql.Date;

/**
 * 商品分类表
 * 
 * @author admin
 */
public class Category {
	/**
	 * 分类编号，自增id号
	 */
	private int catID;

	/**
	 * 分类名称
	 */
	private String catName;

	/**
	 * 分类的关键字
	 */
	private String keywords;

	/**
	 * 分类的说明
	 */
	private String description;

	/**
	 * 是否在前台页面显示 1显示; 0不显示
	 */
	private int isShow;

	public Category() {
	}

	public Category(int catID, String catName, String keywords,
			String description, int isShow) {
		this.catID = catID;
		this.catName = catName;
		this.keywords = keywords;
		this.description = description;
		this.isShow = isShow;
	}

	/**
	 * 设置分类编号，自增id号
	 * 
	 * @param catID
	 */
	public void setCatID(int catID) {
		this.catID = catID;
	}

	/**
	 * 获取分类编号，自增id号
	 * 
	 * @return 分类编号，自增id号
	 */
	public int getCatID() {
		return this.catID;
	}

	/**
	 * 设置分类名称
	 * 
	 * @param catName
	 */
	public void setCatName(String catName) {
		this.catName = catName;
	}

	/**
	 * 获取分类名称
	 * 
	 * @return 分类名称
	 */
	public String getCatName() {
		return this.catName;
	}

	/**
	 * 设置分类的关键字
	 * 
	 * @param keywords
	 */
	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}

	/**
	 * 获取分类的关键字
	 * 
	 * @return 分类的关键字
	 */
	public String getKeywords() {
		return this.keywords;
	}

	/**
	 * 设置分类的说明
	 * 
	 * @param description
	 */
	public void setDescription(String description) {
		this.description = description;
	}

	/**
	 * 获取分类的说明
	 * 
	 * @return 分类的说明
	 */
	public String getDescription() {
		return this.description;
	}

	/**
	 * 设置是否在前台页面显示 1显示; 0不显示
	 * 
	 * @param isShow
	 */
	public void setIsShow(int isShow) {
		this.isShow = isShow;
	}

	/**
	 * 获取是否在前台页面显示 1显示; 0不显示
	 * 
	 * @return 是否在前台页面显示 1显示; 0不显示
	 */
	public int getIsShow() {
		return this.isShow;
	}
}
