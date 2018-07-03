package cn.bdqn.shop.service;

import java.util.List;

import cn.bdqn.shop.dto.OrderDTO;
import cn.bdqn.shop.entity.Order;
import cn.bdqn.shop.util.Page;

public interface orderweifahuolistService {
	List<Order> selectOrderAll(Page page, OrderDTO dto);

	int selectGoodsCount(OrderDTO dto);
}
