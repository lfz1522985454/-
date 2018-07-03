package cn.bdqn.shop.service;

import java.util.List;

import cn.bdqn.shop.entity.Cart;

public interface CartService {
	List<Cart> selectCartByUserId(String id);
	/**
	 * 增加
	 * 
	 * @param cart
	 * @return
	 */
	int insertCart(Cart cart);
	int deleteCartId(String id);
	int deleteCartByuserId(String id);
	List<Cart> selectCartByCartId(String id);

}
