package cn.bdqn.shop.service.impl;

import java.util.List;

import cn.bdqn.shop.dao.orderweifahuolistDao;
import cn.bdqn.shop.dao.impl.orderweifahuolistDaoImpl;
import cn.bdqn.shop.dto.OrderDTO;
import cn.bdqn.shop.entity.Order;
import cn.bdqn.shop.service.orderweifahuolistService;
import cn.bdqn.shop.util.Page;

public class orderweifahuolistServiceImpl implements orderweifahuolistService{
	orderweifahuolistDao dao =new orderweifahuolistDaoImpl();
	public int selectGoodsCount(OrderDTO dto) {
		// TODO Auto-generated method stub
		return dao.selectGoodsCount(dto);
	}

	public List<Order> selectOrderAll(Page page, OrderDTO dto) {
		// TODO Auto-generated method stub
		return dao.selectOrderAll(page, dto);
	}

}
