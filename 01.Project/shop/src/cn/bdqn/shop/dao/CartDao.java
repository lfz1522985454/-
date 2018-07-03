package cn.bdqn.shop.dao;

import java.util.List;

import cn.bdqn.shop.entity.Cart;

public interface CartDao {
	/**
	 * 查询
	 * 
	 * @param id
	 * @return
	 */
	List<Cart> selectCartByUserId(String id);
	
	List<Cart> selectCartByCartId(String id);
	/**
	 * 增加
	 * 
	 * @param cart
	 * @return
	 */
	int insertCart(Cart cart);
	
	int deleteCartId(String id);
	int deleteCartByuserId(String id);
	

}
