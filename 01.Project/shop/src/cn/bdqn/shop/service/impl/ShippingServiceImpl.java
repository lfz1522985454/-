package cn.bdqn.shop.service.impl;

import java.util.List;

import cn.bdqn.shop.dao.ShippingDao;
import cn.bdqn.shop.dao.impl.ShippingDaoImpl;
import cn.bdqn.shop.entity.Shipping;
import cn.bdqn.shop.service.ShippingService;

public class ShippingServiceImpl implements ShippingService {
	ShippingDao dao = new ShippingDaoImpl();

	public List<Shipping> selectShippingAll() {
		// TODO Auto-generated method stub
		return dao.selectShippingAll();
	}

	public int insertShipping(Shipping obj) {
		// TODO Auto-generated method stub
		return dao.insertShipping(obj);
	}

}
