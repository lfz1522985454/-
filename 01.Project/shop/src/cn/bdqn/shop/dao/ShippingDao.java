package cn.bdqn.shop.dao;

import java.util.List;

import cn.bdqn.shop.entity.Shipping;

public interface ShippingDao {
	List<Shipping> selectShippingAll();
 
	int insertShipping(Shipping obj);
}
