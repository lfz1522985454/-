package cn.bdqn.shop.service.impl;

import java.util.List;

import cn.bdqn.shop.dao.CategoryDao;
import cn.bdqn.shop.dao.impl.CategoryDaoImpl;
import cn.bdqn.shop.dto.CategoryDTO;
import cn.bdqn.shop.entity.Category;
import cn.bdqn.shop.service.CategoryService;
import cn.bdqn.shop.util.Page;

public class CategoryServiceImpl implements CategoryService {
	CategoryDao dao = new CategoryDaoImpl();

	public int deleteCategory(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insertCategory(Category category) {
		// TODO Auto-generated method stub
		return dao.insertCategory(category);
	}

	public List<Category> selectCategoryAll() {
		return dao.selectCategoryAll();
	}

	public Category selectCategoryByID(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Category> selectCategoryByPage(Page page, CategoryDTO dto) {
		// TODO Auto-generated method stub
		return dao.selectCategoryByPage(page, dto);
	}

	public int selectCategoryCount(CategoryDTO dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateCategory(Category category) {
		// TODO Auto-generated method stub
		return 0;
	}

}
