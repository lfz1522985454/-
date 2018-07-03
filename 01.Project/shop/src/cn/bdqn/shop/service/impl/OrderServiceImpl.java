package cn.bdqn.shop.service.impl;

import java.util.List;

import cn.bdqn.shop.dao.OrderDao;
import cn.bdqn.shop.dao.impl.OrderDaoImpl;
import cn.bdqn.shop.dto.OrderDTO;
import cn.bdqn.shop.entity.Order;
import cn.bdqn.shop.service.OrderService;
import cn.bdqn.shop.util.Page;

public class OrderServiceImpl implements OrderService {
	OrderDao dao =new OrderDaoImpl();
	public List<Order> selectOrderAll(Page page, OrderDTO Orderdto) {
		// TODO Auto-generated method stub
		return dao.selectOrderAll(page, Orderdto);
	}

	public int selectGoodsCount(OrderDTO dto) {
		// TODO Auto-generated method stub
		return dao.selectGoodsCount(dto);
	}

	public int updateOrder() {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insertOrder(Order obj) {
		// TODO Auto-generated method stub
		return dao.insertOrder(obj);
	}

	public List<Order> selectOrderByuserId(String id) {
		// TODO Auto-generated method stub
		return dao.selectOrderByuserId(id);
	}

}
