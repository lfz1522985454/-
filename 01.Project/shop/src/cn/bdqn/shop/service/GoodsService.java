package cn.bdqn.shop.service;
import java.util.List;

import cn.bdqn.shop.dto.GoodsDTO;
import cn.bdqn.shop.entity.*;
import cn.bdqn.shop.util.*;
public interface GoodsService {
	/**
	 * 放入回收站
	 * @param goods
	 * @return
	 */
	int GoodsRetrieveIn(String id); 
	
		/**
		 * 增加的信息
		 * @param goods
		 * @return 受影响行数
		 */
		 int insertGoods(Goods  goods);
		 
		/**
		 * 根据编号查询信息
		 * 
		 * @param id
		 *            的主键
		 * @return 返回指定编号的表对象
		 */
		Goods selectGoodsByID(String id);
		
		/**
		 * 修改的信息
		 * 
		 * @param goods
		 * @return 受影响行数
		 */
		int updateGoods(Goods goods);
		
		/**
		 * 删除信息
		 * 
		 * @param id
		 * @return 受影响行数
		 */
		int deleteGoods(String id);
		
		
		/**
		 * 查询全部信息
		 * 
		 * @return 对象集合
		 */
		List<Goods> selectGoodsAll();
		
		/**
		 * 根据条件查询符合条件的信息条数
		 * 
		 * @param dto
		 *            查询条件
		 * @return 满足条件的记录数
		 */
		int selectGoodsCount(GoodsDTO dto);
		
		/**
		 * 根据条件分页查询符合条件的信息条数
		 * 
		 * @param page
		 *            分页条件
		 * @param dto
		 *            查询条件
		 * @return 对象集合
		 */
		List<Goods> selectGoodsByPage(Page page, GoodsDTO dto);
		}
