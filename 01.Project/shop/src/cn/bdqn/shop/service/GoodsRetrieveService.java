package cn.bdqn.shop.service;

import java.util.List;

import cn.bdqn.shop.dto.GoodsDTO;
import cn.bdqn.shop.entity.Goods;
import cn.bdqn.shop.util.Page;

public interface GoodsRetrieveService {
	/**
	 * 查询被删除的商品
	 * @return
	 */
	public List<Goods> selectGoodsbyIsDelete(Page page,GoodsDTO dto);
	
	/**
	 * 还原
	 * @param goods
	 * @return
	 */
	int GoodsRetrieveOut(String id); 
	/**
	 * 根据条件查询符合条件的信息条数
	 * 
	 * @param dto
	 *            查询条件
	 * @return 满足条件的记录数
	 */
	int selectGoodsCount(GoodsDTO dto);
}
