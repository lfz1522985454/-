package cn.bdqn.shop.service;

import java.util.List;

import cn.bdqn.shop.dto.OrderDTO;
import cn.bdqn.shop.entity.Order;
import cn.bdqn.shop.util.Page;

public interface OrderService {
	
	List<Order> selectOrderAll(Page page,OrderDTO Orderdto);
	int selectGoodsCount(OrderDTO dto);
	int updateOrder();
	int insertOrder(Order obj);
	List<Order> selectOrderByuserId(String id);
}
