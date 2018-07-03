
package cn.bdqn.shop.dao;

import java.util.List;

import cn.bdqn.shop.dto.CategoryDTO;
import cn.bdqn.shop.entity.*;
import cn.bdqn.shop.util.*;

 /**
 * @author 商品分类表的接口
 *
 */
public interface  CategoryDao {	
	/**
	 * 增加商品分类表的信息
	 * @param category
	 * @return 受影响行数
	 */
	 int insertCategory(Category  category);
	 
	/**
	 * 根据编号查询商品分类表信息
	 * 
	 * @param id
	 *            商品分类表的主键
	 * @return 返回指定编号的商品分类表表对象
	 */
	Category selectCategoryByID(String id);
	
	/**
	 * 修改商品分类表的信息
	 * 
	 * @param category
	 * @return 受影响行数
	 */
	int updateCategory(Category category);
	
	/**
	 * 删除商品分类表信息
	 * 
	 * @param id
	 * @return 受影响行数
	 */
	int deleteCategory(String id);
	
	
	/**
	 * 查询全部商品分类表信息
	 * 
	 * @return 商品分类表对象集合
	 */
	List<Category> selectCategoryAll();
	
	/**
	 * 根据条件查询符合条件的商品分类表信息条数
	 * 
	 * @param dto
	 *            查询条件
	 * @return 满足条件的记录数
	 */
	int selectCategoryCount(CategoryDTO dto);
	
	/**
	 * 根据条件分页查询符合条件的商品分类表信息条数
	 * 
	 * @param page
	 *            分页条件
	 * @param dto
	 *            查询条件
	 * @return 商品分类表对象集合
	 */
	List<Category> selectCategoryByPage(Page page, CategoryDTO dto);
	}
