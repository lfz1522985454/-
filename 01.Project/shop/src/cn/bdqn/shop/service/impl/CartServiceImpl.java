package cn.bdqn.shop.service.impl;

import java.util.List;

import cn.bdqn.shop.dao.CartDao;
import cn.bdqn.shop.dao.impl.CartDaoImpl;
import cn.bdqn.shop.entity.Cart;
import cn.bdqn.shop.service.CartService;

public class CartServiceImpl implements CartService {
	CartDao dao = new CartDaoImpl();

	public List<Cart> selectCartByUserId(String id) {
		// TODO Auto-generated method stub
		return dao.selectCartByUserId(id);
	}

	public int insertCart(Cart cart) {
		// TODO Auto-generated method stub
		return dao.insertCart(cart);
	}

	public int deleteCartId(String id) {
		// TODO Auto-generated method stub
		return dao.deleteCartId(id);
	}

	public List<Cart> selectCartByCartId(String id) {
		// TODO Auto-generated method stub
		return dao.selectCartByCartId(id);
	}

	public int deleteCartByuserId(String id) {
		// TODO Auto-generated method stub
		return dao.deleteCartByuserId(id);
	}

}
