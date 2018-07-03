package cn.bdqn.shop.entity;

import java.sql.Date;

public class Order {
	private String goodsName;
	private String tupian;

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public String getTupian() {
		return tupian;
	}

	public void setTupian(String tupian) {
		this.tupian = tupian;
	}

	private String address;

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	private int orderId;
	private String orderSN;
	private int userId;
	private String userName;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getShippingName() {
		return shippingName;
	}

	public void setShippingName(String shippingName) {
		this.shippingName = shippingName;
	}

	public String getPayName() {
		return payName;
	}

	public void setPayName(String payName) {
		this.payName = payName;
	}

	private int orderStatus;
	private int shippingStatus;
	private int payStatus;
	private String orderMsg;
	private int shippingMethod;
	private String shippingName;

	private int payId;
	private String payName;
	private double goodsAmout;
	private double shippingMoney;
	private double orderAmount;

	public double getOrderAmount() {
		return orderAmount;
	}

	public void setOrderAmount(double orderAmount) {
		this.orderAmount = orderAmount;
	}

	private double payMent;

	private Date createTime;
	private Date confitmTime;
	private Date payTime;
	private Date shippingTime;
	private Date receipTime;

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public String getOrderSN() {
		return orderSN;
	}

	public void setOrderSN(String orderSN) {
		this.orderSN = orderSN;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(int orderStatus) {
		this.orderStatus = orderStatus;
	}

	public int getShippingStatus() {
		return shippingStatus;
	}

	public void setShippingStatus(int shippingStatus) {
		this.shippingStatus = shippingStatus;
	}

	public int getPayStatus() {
		return payStatus;
	}

	public void setPayStatus(int payStatus) {
		this.payStatus = payStatus;
	}

	public String getOrderMsg() {
		return orderMsg;
	}

	public void setOrderMsg(String orderMsg) {
		this.orderMsg = orderMsg;
	}

	public int getShippingMethod() {
		return shippingMethod;
	}

	public void setShippingMethod(int shippingMethod) {
		this.shippingMethod = shippingMethod;
	}

	public int getPayId() {
		return payId;
	}

	public void setPayId(int payId) {
		this.payId = payId;
	}

	public double getGoodsAmout() {
		return goodsAmout;
	}

	public void setGoodsAmout(double goodsAmout) {
		this.goodsAmout = goodsAmout;
	}

	public double getShippingMoney() {
		return shippingMoney;
	}

	public void setShippingMoney(double shippingMoney) {
		this.shippingMoney = shippingMoney;
	}

	public double getPayMent() {
		return payMent;
	}

	public void setPayMent(double payMent) {
		this.payMent = payMent;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getConfitmTime() {
		return confitmTime;
	}

	public void setConfitmTime(Date confitmTime) {
		this.confitmTime = confitmTime;
	}

	public Date getPayTime() {
		return payTime;
	}

	public void setPayTime(Date payTime) {
		this.payTime = payTime;
	}

	public Date getShippingTime() {
		return shippingTime;
	}

	public void setShippingTime(Date shippingTime) {
		this.shippingTime = shippingTime;
	}

	public Date getReceipTime() {
		return receipTime;
	}

	public void setReceipTime(Date receipTime) {
		this.receipTime = receipTime;
	}

	public Order(int orderId, String orderSN, int userId, int orderStatus,
			int shippingStatus, int payStatus, String orderMsg,
			int shippingMethod, int payId, double goodsAmout,
			double shippingMoney, double payMent, Date createTime,
			Date confitmTime, Date payTime, Date shippingTime, Date receipTime) {
		super();
		this.orderId = orderId;
		this.orderSN = orderSN;
		this.userId = userId;
		this.orderStatus = orderStatus;
		this.shippingStatus = shippingStatus;
		this.payStatus = payStatus;
		this.orderMsg = orderMsg;
		this.shippingMethod = shippingMethod;
		this.payId = payId;
		this.goodsAmout = goodsAmout;
		this.shippingMoney = shippingMoney;
		this.payMent = payMent;
		this.createTime = createTime;
		this.confitmTime = confitmTime;
		this.payTime = payTime;
		this.shippingTime = shippingTime;
		this.receipTime = receipTime;
	}

	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}

}
