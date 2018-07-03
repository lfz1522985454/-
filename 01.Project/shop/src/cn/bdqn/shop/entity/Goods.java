package cn.bdqn.shop.entity;

import java.sql.Date;

/**
 * 商品表
 * 
 * @author admin
 */
public class Goods {
	private String daTu1;
	private String daTu2;
	private String daTu3;
	private String xiaoTu1;
	private String xiaoTu2;
	private String xiaoTu3;
	private String guangGaoTu;

	public String getDaTu1() {
		return daTu1;
	}

	public void setDaTu1(String daTu1) {
		this.daTu1 = daTu1;
	}

	public String getDaTu2() {
		return daTu2;
	}

	public void setDaTu2(String daTu2) {
		this.daTu2 = daTu2;
	}

	public String getDaTu3() {
		return daTu3;
	}

	public void setDaTu3(String daTu3) {
		this.daTu3 = daTu3;
	}

	public String getXiaoTu1() {
		return xiaoTu1;
	}

	public void setXiaoTu1(String xiaoTu1) {
		this.xiaoTu1 = xiaoTu1;
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

	public String getGuangGaoTu() {
		return guangGaoTu;
	}

	public void setGuangGaoTu(String guangGaoTu) {
		this.guangGaoTu = guangGaoTu;
	}

	private int isDaGuangGao;

	public int getIsDaGuangGao() {
		return isDaGuangGao;
	}

	public void setIsDaGuangGao(int isDaGuangGao) {
		this.isDaGuangGao = isDaGuangGao;
	}

	/**
	 * 商品id
	 */
	private int goodsID;

	/**
	 * 商品所属商品分类id，取值category的cat_id
	 */

	/**
	 * 商品的名称
	 */
	private String goodsName;

	/**
	 * 商品名称显示的样式；包括颜色和字体样式
	 */
	private String nameStyle;

	/**
	 * 品牌id，取值于brand 的brand_id
	 */

	private String brandName;

	public String getBrandName() {
		return brandName;
	}

	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}

	private String catName;

	public String getCatName() {
		return catName;
	}

	public void setCatName(String catName) {
		this.catName = catName;
	}

	/**
	 * 商品库存数量
	 */
	private int goodsStock;

	/**
	 * 本店售价
	 */
	private double shopPrice;

	/**
	 * 商品的详细描述
	 */
	private String description;

	/**
	 * 商品在前台显示的微缩图片
	 */
	private String thumbnail;

	/**
	 * 该商品是否开放销售，1，是；0，否
	 */
	private int isSale;

	/**
	 * 商品添加时间
	 */
	private Date createTime;

	/**
	 * 商品显示的顺序,数字越大顺序越靠后,同数字,id在前的先显示
	 */
	private int showOrder;

	/**
	 * 商品是否已经删除，0，否；1，已删除
	 */
	private int isDelete;

	/**
	 * 删除时间
	 */
	private Date deleteTime;

	public Date getDeleteTime() {
		return deleteTime;
	}

	public void setDeleteTime(Date deleteTime) {
		this.deleteTime = deleteTime;
	}

	/**
	 * 是否是精品；0，否；1，是
	 */
	private int isBest;

	/**
	 * 是否是新品；0，否；1，是
	 */
	private int isNew;

	/**
	 * 是否热销，0，否；1，是
	 */
	private int isHot;

	/**
	 * 是否特价促销；0，否；1，是
	 */
	private int isPromotion;

	/**
	 * 备注
	 */
	private String remark;

	/**
	 * 设置商品id
	 * 
	 * @param goodsID
	 */
	public void setGoodsID(int goodsID) {
		this.goodsID = goodsID;
	}

	/**
	 * 获取商品id
	 * 
	 * @return 商品id
	 */
	public int getGoodsID() {
		return this.goodsID;
	}

	/**
	 * 设置商品的名称
	 * 
	 * @param goodsName
	 */
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	/**
	 * 获取商品的名称
	 * 
	 * @return 商品的名称
	 */
	public String getGoodsName() {
		return this.goodsName;
	}

	/**
	 * 设置商品名称显示的样式；包括颜色和字体样式
	 * 
	 * @param nameStyle
	 */
	public void setNameStyle(String nameStyle) {
		this.nameStyle = nameStyle;
	}

	/**
	 * 获取商品名称显示的样式；包括颜色和字体样式
	 * 
	 * @return 商品名称显示的样式；包括颜色和字体样式
	 */
	public String getNameStyle() {
		return this.nameStyle;
	}

	/**
	 * 设置商品库存数量
	 * 
	 * @param goodsStock
	 */
	public void setGoodsStock(int goodsStock) {
		this.goodsStock = goodsStock;
	}

	/**
	 * 获取商品库存数量
	 * 
	 * @return 商品库存数量
	 */
	public int getGoodsStock() {
		return this.goodsStock;
	}

	/**
	 * 设置本店售价
	 * 
	 * @param shopPrice
	 */
	public void setShopPrice(double shopPrice) {
		this.shopPrice = shopPrice;
	}

	/**
	 * 获取本店售价
	 * 
	 * @return 本店售价
	 */
	public double getShopPrice() {
		return this.shopPrice;
	}

	/**
	 * 设置商品的详细描述
	 * 
	 * @param description
	 */
	public void setDescription(String description) {
		this.description = description;
	}

	/**
	 * 获取商品的详细描述
	 * 
	 * @return 商品的详细描述
	 */
	public String getDescription() {
		return this.description;
	}

	/**
	 * 设置商品在前台显示的微缩图片
	 * 
	 * @param thumbnail
	 */
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	/**
	 * 获取商品在前台显示的微缩图片
	 * 
	 * @return 商品在前台显示的微缩图片
	 */
	public String getThumbnail() {
		return this.thumbnail;
	}

	/**
	 * 设置该商品是否开放销售，1，是；0，否
	 * 
	 * @param isSale
	 */
	public void setIsSale(int isSale) {
		this.isSale = isSale;
	}

	/**
	 * 获取该商品是否开放销售，1，是；0，否
	 * 
	 * @return 该商品是否开放销售，1，是；0，否
	 */
	public int getIsSale() {
		return this.isSale;
	}

	/**
	 * 设置商品添加时间
	 * 
	 * @param createTime
	 */
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	/**
	 * 获取商品添加时间
	 * 
	 * @return 商品添加时间
	 */
	public Date getCreateTime() {
		return this.createTime;
	}

	/**
	 * 设置商品显示的顺序,数字越大顺序越靠后,同数字,id在前的先显示
	 * 
	 * @param showOrder
	 */
	public void setShowOrder(int showOrder) {
		this.showOrder = showOrder;
	}

	/**
	 * 获取商品显示的顺序,数字越大顺序越靠后,同数字,id在前的先显示
	 * 
	 * @return 商品显示的顺序,数字越大顺序越靠后,同数字,id在前的先显示
	 */
	public int getShowOrder() {
		return this.showOrder;
	}

	/**
	 * 设置商品是否已经删除，0，否；1，已删除
	 * 
	 * @param isDelete
	 */
	public void setIsDelete(int isDelete) {
		this.isDelete = isDelete;
	}

	/**
	 * 获取商品是否已经删除，0，否；1，已删除
	 * 
	 * @return 商品是否已经删除，0，否；1，已删除
	 */
	public int getIsDelete() {
		return this.isDelete;
	}

	/**
	 * 设置是否是精品；0，否；1，是
	 * 
	 * @param isBest
	 */
	public void setIsBest(int isBest) {
		this.isBest = isBest;
	}

	/**
	 * 获取是否是精品；0，否；1，是
	 * 
	 * @return 是否是精品；0，否；1，是
	 */
	public int getIsBest() {
		return this.isBest;
	}

	/**
	 * 设置是否是新品；0，否；1，是
	 * 
	 * @param isNew
	 */
	public void setIsNew(int isNew) {
		this.isNew = isNew;
	}

	/**
	 * 获取是否是新品；0，否；1，是
	 * 
	 * @return 是否是新品；0，否；1，是
	 */
	public int getIsNew() {
		return this.isNew;
	}

	/**
	 * 设置是否热销，0，否；1，是
	 * 
	 * @param isHot
	 */
	public void setIsHot(int isHot) {
		this.isHot = isHot;
	}

	/**
	 * 获取是否热销，0，否；1，是
	 * 
	 * @return 是否热销，0，否；1，是
	 */
	public int getIsHot() {
		return this.isHot;
	}

	/**
	 * 设置是否特价促销；0，否；1，是
	 * 
	 * @param isPromotion
	 */
	public void setIsPromotion(int isPromotion) {
		this.isPromotion = isPromotion;
	}

	/**
	 * 获取是否特价促销；0，否；1，是
	 * 
	 * @return 是否特价促销；0，否；1，是
	 */
	public int getIsPromotion() {
		return this.isPromotion;
	}

	/**
	 * 设置备注
	 * 
	 * @param remark
	 */
	public void setRemark(String remark) {
		this.remark = remark;
	}

	/**
	 * 获取备注
	 * 
	 * @return 备注
	 */
	public String getRemark() {
		return this.remark;
	}
}
