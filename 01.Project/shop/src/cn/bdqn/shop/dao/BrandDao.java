
package cn.bdqn.shop.dao;

import java.util.List;

import cn.bdqn.shop.dto.BrandDTO;
import cn.bdqn.shop.entity.*;
import cn.bdqn.shop.util.*;

 /**
 * @author 商品品牌表的接口
 *
 */
public interface  BrandDao {	
	/**
	 * 增加商品品牌表的信息
	 * @param brand
	 * @return 受影响行数
	 */
	 int insertBrand(Brand  brand);
	 
	/**
	 * 根据编号查询商品品牌表信息
	 * 
	 * @param id
	 *            商品品牌表的主键
	 * @return 返回指定编号的商品品牌表表对象
	 */
	Brand selectBrandByID(String id);
	
	/**
	 * 修改商品品牌表的信息
	 * 
	 * @param brand
	 * @return 受影响行数
	 */
	int updateBrand(Brand brand);
	
	/**
	 * 删除商品品牌表信息
	 * 
	 * @param id
	 * @return 受影响行数
	 */
	int deleteBrand(String id);
	
	
	/**
	 * 查询全部商品品牌表信息
	 * 
	 * @return 商品品牌表对象集合
	 */
	List<Brand> selectBrandAll();
	
	/**
	 * 根据条件查询符合条件的商品品牌表信息条数
	 * 
	 * @param dto
	 *            查询条件
	 * @return 满足条件的记录数
	 */
	int selectBrandCount(BrandDTO dto);
	
	/**
	 * 根据条件分页查询符合条件的商品品牌表信息条数
	 * 
	 * @param page
	 *            分页条件
	 * @param dto
	 *            查询条件
	 * @return 商品品牌表对象集合
	 */
	List<Brand> selectBrandByPage(Page page, BrandDTO dto);
	}
