package cn.bdqn.shop.entity;

import java.sql.Date;

/**
 * 商品品牌表
 * 
 * @author admin
 */
public class Brand {
	/**
	 * 自增id号,品牌编号
	 */
	private int brandID;

	/**
	 * 品牌名称
	 */
	private String brandName;

	/**
	 * 上传的该公司Logo图片
	 */
	private String brandLogo;

	/**
	 * 品牌的网址
	 */
	private String url;

	/**
	 * 该品牌是否显示;0否1显示
	 */
	private int isShow;

	public Brand() {
	}

	public Brand(int brandID, String brandName, String brandLogo, String url,
			int isShow) {
		this.brandID = brandID;
		this.brandName = brandName;
		this.brandLogo = brandLogo;
		this.url = url;
		this.isShow = isShow;
	}

	/**
	 * 设置自增id号,品牌编号
	 * 
	 * @param brandID
	 */
	public void setBrandID(int brandID) {
		this.brandID = brandID;
	}

	/**
	 * 获取自增id号,品牌编号
	 * 
	 * @return 自增id号,品牌编号
	 */
	public int getBrandID() {
		return this.brandID;
	}

	/**
	 * 设置品牌名称
	 * 
	 * @param brandName
	 */
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}

	/**
	 * 获取品牌名称
	 * 
	 * @return 品牌名称
	 */
	public String getBrandName() {
		return this.brandName;
	}

	/**
	 * 设置上传的该公司Logo图片
	 * 
	 * @param brandLogo
	 */
	public void setBrandLogo(String brandLogo) {
		this.brandLogo = brandLogo;
	}

	/**
	 * 获取上传的该公司Logo图片
	 * 
	 * @return 上传的该公司Logo图片
	 */
	public String getBrandLogo() {
		return this.brandLogo;
	}

	/**
	 * 设置品牌的网址
	 * 
	 * @param url
	 */
	public void setUrl(String url) {
		this.url = url;
	}

	/**
	 * 获取品牌的网址
	 * 
	 * @return 品牌的网址
	 */
	public String getUrl() {
		return this.url;
	}

	/**
	 * 设置该品牌是否显示;0否1显示
	 * 
	 * @param isShow
	 */
	public void setIsShow(int isShow) {
		this.isShow = isShow;
	}

	/**
	 * 获取该品牌是否显示;0否1显示
	 * 
	 * @return 该品牌是否显示;0否1显示
	 */
	public int getIsShow() {
		return this.isShow;
	}
}
