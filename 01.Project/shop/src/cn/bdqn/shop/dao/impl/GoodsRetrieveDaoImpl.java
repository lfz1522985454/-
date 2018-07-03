package cn.bdqn.shop.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.bdqn.shop.dao.BaseDao;
import cn.bdqn.shop.dao.GoodsRetrieveDao;
import cn.bdqn.shop.dto.GoodsDTO;
import cn.bdqn.shop.entity.Goods;
import cn.bdqn.shop.util.Page;

public class GoodsRetrieveDaoImpl extends BaseDao implements GoodsRetrieveDao {

	public List<Goods> selectGoodsbyIsDelete(Page page,GoodsDTO dto) {
		List<Goods> list = new ArrayList<Goods>();
		String sql = "";
		try {
			sql = "SELECT   top(?)  g.GoodsID, g.GoodsName, c.CatName, b.BrandName,g.Thumbnail,  g.ShopPrice, g.Description,g.DeleteTime, g.isSale FROM         dbo.Goods AS g INNER JOIN dbo.Category AS c ON g.CatID = c.CatID INNER JOIN dbo.Brand AS b ON g.BrandID = b.BrandID  where GoodsId not in (select top((?-1)*?) GoodsId from Goods where isDelete=1) and 1=1 and g.isDelete=1 ";
		
			if (dto.getGoodsName() != null) {
				sql += " and g.goodsname like '%" + dto.getGoodsName() + "%'";
			}
			if (dto.getTimeBegin() != null) {
				sql += " and g.DeleteTime BETWEEN  '" + dto.getTimeBegin()
						+ "' and '" + dto.getTimeEnd() + "'";
			}
			sql +=" order by g.DeleteTime desc";
			Object[] param = { page.getPageCount(), page.getPageIndex(),
					page.getPageCount() };
			rs = this.executeQuery(sql, param);

			while (rs.next()) {

				Goods g = new Goods();

				g.setGoodsID(rs.getInt("goodsID"));
				g.setGoodsName(rs.getString("goodsName"));
				g.setCatName(rs.getString("CatName"));
				g.setBrandName(rs.getString("BrandName"));
				g.setShopPrice(rs.getInt("ShopPrice"));
				g.setDescription(rs.getString("description"));
				g.setThumbnail(rs.getString("thumbnail"));
				g.setDeleteTime(rs.getDate("deleteTime"));;
				g.setIsSale(rs.getInt("isSale"));
				
			
			
				
				list.add(g);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			this.closeAll(conn, pstmt, rs);
		}

		return list;
	}
	
	public int selectGoodsCount(GoodsDTO dto) {
		int count = 0;
		String sql = "";
		try {
			sql = "SELECT  count(*) as row FROM  dbo.Goods AS g INNER JOIN dbo.Category AS c ON g.CatID = c.CatID INNER JOIN dbo.Brand AS b ON g.BrandID = b.BrandID  where  1=1 and g.isDelete=1 ";
			if (dto.getGoodsName() != null) {
				sql += " and g.goodsname like '%" + dto.getGoodsName() + "%'";
			}
			if (dto.getTimeBegin() != null) {
				sql += " and g.DeleteTime BETWEEN  '" + dto.getTimeBegin()
						+ "' and '" + dto.getTimeEnd() + "'";
			}
			
			rs = this.executeQuery(sql, null);
			System.out.println(sql);
			if (rs.next()) { 	
				count = rs.getInt("row");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			this.closeAll(conn, pstmt, rs);
		}
		return count;
	}

	public int updateGoodsByID(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int GoodsRetrieveOut(String id) {

		String sql="UPDATE [dbo].[Goods] SET [isDelete] = 0,DeleteTime=null WHERE goodsId=?";
		Object [] param={id};
		return this.executeUpdate(sql, param);
	}

	

}
