package cn.bdqn.shop.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.bdqn.shop.dao.BaseDao;
import cn.bdqn.shop.dao.BrandDao;
import cn.bdqn.shop.dto.BrandDTO;
import cn.bdqn.shop.entity.Brand;
import cn.bdqn.shop.util.Page;

public class BrandDaoImpl extends BaseDao implements BrandDao {

	public int deleteBrand(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insertBrand(Brand brand) {
		String sql="INSERT INTO [MyShop].[dbo].[Brand]([BrandName],[BrandLogo],[Url],[IsShow]) VALUES(?,?,?,?)";
		Object [] param ={brand.getBrandName(),brand.getBrandLogo(),brand.getUrl(),brand.getIsShow()};
		return this.executeUpdate(sql, param);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.bdqn.shop.dao.BrandDao#selectBrandAll()
	 */
	public List<Brand> selectBrandAll() {
		List<Brand> list = new ArrayList<Brand>();

		try {
			String sql = "SELECT * FROM brand where isshow=1";
			rs = this.executeQuery(sql, null);
			while (rs.next()) {
				Brand b = new Brand();
				
				b.setBrandID(rs.getInt("brandID"));
				b.setBrandLogo(rs.getString("brandLogo"));
				b.setBrandName(rs.getString("brandName"));
				b.setIsShow(rs.getInt("isShow"));
				b.setUrl(rs.getString("url"));
				list.add(b);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			this.closeAll(conn, pstmt, rs);
		}

		return list;
	}

	public Brand selectBrandByID(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Brand> selectBrandByPage(Page page, BrandDTO dto) {
		List<Brand> list =new ArrayList<Brand>();
		try {
			String sql="select * from brand where 1=1 ";
			if(dto.getBrandName()!=null){
				sql+=" and brandname like '%"+dto.getBrandName()+"%'";
				
			}
			if(dto.getIsShow()!=null){
				sql+=" and isShow="+dto.getIsShow();
			}
			
			rs=this.executeQuery(sql, null);
			while(rs.next()){
				Brand b =new Brand();
				b.setBrandID(rs.getInt("brandID"));
				b.setBrandLogo(rs.getString("brandLogo"));
				b.setBrandName(rs.getString("brandName"));
				b.setIsShow(rs.getInt("isShow"));
				b.setUrl(rs.getString("url"));
				list.add(b);
				
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			this.closeAll(conn, pstmt, rs);
		}
		
		return list;
	}

	public int selectBrandCount(BrandDTO dto) {
		int count =0;
		
		try {
			String sql="select count(*) as row from brand where 1=1 ";
			if(dto.getBrandName()!=null){
				sql+=" and brandname like '%"+dto.getBrandName()+"%'";
				
			}
			if(dto.getIsShow()!=null){
				sql+=" and isShow="+dto.getIsShow();
			}
			rs=this.executeQuery(sql, null);
			while(rs.next()){
				count=rs.getInt("row");
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			this.closeAll(conn, pstmt, rs);
		}
		
		return count;
	}

	public int updateBrand(Brand brand) {
		// TODO Auto-generated method stub
		return 0;
	}

}
