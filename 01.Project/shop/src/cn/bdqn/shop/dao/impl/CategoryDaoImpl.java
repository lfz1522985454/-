package cn.bdqn.shop.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.bdqn.shop.dao.BaseDao;
import cn.bdqn.shop.dao.CategoryDao;
import cn.bdqn.shop.dto.CategoryDTO;
import cn.bdqn.shop.entity.Brand;
import cn.bdqn.shop.entity.Category;
import cn.bdqn.shop.util.Page;

public class CategoryDaoImpl extends BaseDao implements CategoryDao {

	public int deleteCategory(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insertCategory(Category category) {
		String sql ="INSERT INTO [Category] ([CatName],[Keywords],[Description] ,[IsShow])VALUES(?,?,?,?)";
		Object [] param={category.getCatName(),category.getKeywords(),category.getDescription(),category.getIsShow()};
		return this.executeUpdate(sql, param);
	}

	public List<Category> selectCategoryAll() {
		List<Category> list = new ArrayList<Category>();

		try {
			String sql = "SELECT * FROM Category  where isshow=1";
			rs = this.executeQuery(sql, null);
			while (rs.next()) {
				Category c = new Category();
				c.setCatID(rs.getInt("catID"));
				c.setCatName(rs.getString("catName"));
				c.setDescription(rs.getString("description"));
				c.setIsShow(rs.getInt("isShow"));
				c.setKeywords(rs.getString("keywords"));
				list.add(c);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			this.closeAll(conn, pstmt, rs);
		}

		return list;

	}

	public Category selectCategoryByID(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Category> selectCategoryByPage(Page page, CategoryDTO dto) {
		List<Category> list =new ArrayList<Category>();
		
		try {
			String sql = "SELECT top(?)* FROM Category where catid not in(select top ((?-1)*?) CatID from Category ) and 1=1 ";
			if(dto.getCatName()!=null){
				sql+=" and catName like '%"+dto.getCatName()+"%'";
			}
			if(dto.getIsShow()!=null){
				if(dto.getIsShow().equals("A")){
					
				}else{
					sql+="  and isShow="+dto.getIsShow();
					
				}
				
			}
			Object [] param ={page.getPageCount(),page.getPageIndex(),page.getPageCount()};
			rs = this.executeQuery(sql, param);
			while (rs.next()) {
				Category c = new Category();
				c.setCatID(rs.getInt("catID"));
				c.setCatName(rs.getString("catName"));
				c.setDescription(rs.getString("description"));
				c.setIsShow(rs.getInt("isShow"));
				c.setKeywords(rs.getString("keywords"));
				list.add(c);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			this.closeAll(conn, pstmt, rs);
		}
		
		
		return list;
	}

	public int selectCategoryCount(CategoryDTO dto) {
		int count=0;
		try {
			String sql = "SELECT  count(*) as row FROM Category where 1=1 ";
			if(dto.getCatName()!=null){
				sql+=" and catName like '%"+dto.getCatName()+"%'";
			}
			if(dto.getIsShow().equals("A")){
				
			}else{
				sql+="  and isShow="+dto.getIsShow();
				
			}
			
			System.out.println(sql);
			if (rs.next()) { 	
				count = rs.getInt("row");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			this.closeAll(conn, pstmt, rs);
		}
		
		
		return count;
	}

	public int updateCategory(Category category) {
		// TODO Auto-generated method stub
		return 0;
	}

}
