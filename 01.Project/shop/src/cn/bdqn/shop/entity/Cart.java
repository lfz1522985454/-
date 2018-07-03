package cn.bdqn.shop.entity;

public class Cart {
	private int CartId;
	private int userId;
	private String sessionId;
	private int goodsId;
	private double goodsPrice;
	private int goodsNumber;
	private String thumbnail;
	private String goodsName;
	private double goodsprice;
	private String daTu1;
	private String xiaoTu2;
	private String xiaoTu3;
	

	

	public String getDaTu1() {
		return daTu1;
	}

	public void setDaTu1(String daTu1) {
		this.daTu1 = daTu1;
	}

	public String getXiaoTu2() {
		return xiaoTu2;
	}

	public void setXiaoTu2(String xiaoTu2) {
		this.xiaoTu2 = xiaoTu2;
	}

	public String getXiaoTu3() {
		return xiaoTu3;
	}

	public void setXiaoTu3(String xiaoTu3) {
		this.xiaoTu3 = xiaoTu3;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public double getGoodsprice() {
		return goodsprice;
	}

	public void setGoodsprice(double goodsprice) {
		this.goodsprice = goodsprice;
	}

	public int getCartId() {
		return CartId;
	}

	public void setCartId(int cartId) {
		CartId = cartId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getSessionId() {
		return sessionId;
	}

	public void setSessionId(String sessionId) {
		this.sessionId = sessionId;
	}

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public double getGoodsPrice() {
		return goodsPrice;
	}

	public void setGoodsPrice(double goodsPrice) {
		this.goodsPrice = goodsPrice;
	}

	public int getGoodsNumber() {
		return goodsNumber;
	}

	public void setGoodsNumber(int goodsNumber) {
		this.goodsNumber = goodsNumber;
	}

}
