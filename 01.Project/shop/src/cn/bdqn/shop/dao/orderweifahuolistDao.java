package cn.bdqn.shop.dao;

import java.util.List;

import cn.bdqn.shop.dto.OrderDTO;

import cn.bdqn.shop.entity.Order;
import cn.bdqn.shop.util.Page;

public interface orderweifahuolistDao {
	List<Order> selectOrderAll(Page page, OrderDTO dto);

	int selectGoodsCount(OrderDTO dto);
}
