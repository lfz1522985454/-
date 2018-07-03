package cn.bdqn.shop.service;

import java.util.List;

import cn.bdqn.shop.entity.Shipping;

public interface ShippingService {
	List<Shipping> selectShippingAll();
	int insertShipping(Shipping obj);
}
