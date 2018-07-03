package cn.bdqn.shop.dao.impl;

import java.sql.Date;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import cn.bdqn.shop.dao.BaseDao;
import cn.bdqn.shop.dao.GoodsDao;
import cn.bdqn.shop.dto.GoodsDTO;
import cn.bdqn.shop.entity.Goods;
import cn.bdqn.shop.util.Page;

public class GoodsDaoImpl extends BaseDao implements GoodsDao {

	public int deleteGoods(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insertGoods(Goods goods) {
		// 增加
		String sql = "INSERT INTO [dbo].[Goods]([CatID] ,[GoodsName]  ,[BrandID] ,[GoodsStock] ,[ShopPrice],[Description],[Thumbnail] ,[IsSale],[CreateTime] ,[IsDelete] ,[Remark] ,isNew,isDaGuangGao,guanggaotu,datu1,datu2,datu3,xiaotu1,xiaotu2,xiaotu3,isPromotion,isBest,isHot) VALUES(?,?,?,?,?,?,?,?,GETDATE(),0,?,1,?,?,?,?,?,?,?,?,?,?,?)";
		Object[] param = { goods.getCatName(), goods.getGoodsName(),
				goods.getBrandName(), goods.getGoodsStock(),
				goods.getShopPrice(), goods.getDescription(),
				goods.getThumbnail(), goods.getIsSale(), goods.getRemark(),
				goods.getIsDaGuangGao(), goods.getGuangGaoTu(),
				goods.getDaTu1(), goods.getDaTu2(), goods.getDaTu3(),
				goods.getXiaoTu1(), goods.getXiaoTu2(), goods.getXiaoTu3() ,goods.getIsPromotion(),goods.getIsBest(),goods.getIsHot()};
		return this.executeUpdate(sql, param);
	}

	public List<Goods> selectGoodsAll() {
		// TODO Auto-generated method stub
		return null;
	}

	public Goods selectGoodsByID(String id) {
		Goods g = new Goods();
		try {
			String sql = "select * from goods where goodsid=?";
			Object[] param = { id };
			rs = this.executeQuery(sql, param);
			while (rs.next()) {
				g.setGoodsID(rs.getInt("goodsID"));
				g.setBrandName(rs.getString("brandID"));
				g.setCatName(rs.getString("catID"));
				g.setDescription(rs.getString("description"));
				g.setGoodsName(rs.getString("goodsName"));
				g.setGoodsStock(rs.getInt("goodsStock"));
				g.setIsBest(rs.getInt("isBest"));
				g.setIsHot(rs.getInt("isHot"));
				g.setIsNew(rs.getInt("isNew"));
				g.setIsPromotion(rs.getInt("isPromotion"));
				g.setIsSale(rs.getInt("isSale"));
				g.setRemark(rs.getString("remark"));
				g.setShopPrice(rs.getDouble("shopPrice"));
				g.setThumbnail(rs.getString("thumbnail"));
				g.setIsDaGuangGao(rs.getInt("isDaGuangGao"));
				g.setDaTu1(rs.getString("datu1"));
				g.setDaTu2(rs.getString("datu2"));
				g.setDaTu3(rs.getString("datu3"));
				g.setXiaoTu1(rs.getString("xiaoTu1"));
				g.setXiaoTu2(rs.getString("xiaoTu2"));
				g.setXiaoTu3(rs.getString("xiaoTu3"));
				g.setGuangGaoTu(rs.getString("guangGaoTu"));

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			this.closeAll(conn, pstmt, rs);
		}

		return g;
	}

	/*
	 * 分页查询+条件 (non-Javadoc)
	 * 
	 * @see cn.bdqn.shop.dao.GoodsDao#selectGoodsByPage(cn.bdqn.shop.util.Page,
	 * cn.bdqn.shop.dto.GoodsDTO)
	 */
	public List<Goods> selectGoodsByPage(Page page, GoodsDTO dto) {
		List<Goods> list = new ArrayList<Goods>();
		String sql = "";
		try {
			sql = "SELECT   top(?) g.guangGaoTu, g.isDaGuangGao,g.GoodsID,g.isSale, g.GoodsName, c.CatName, b.BrandName, g.GoodsStock, g.ShopPrice, g.Description, g.Thumbnail, g.IsSale, g.CreateTime, g.IsDelete, g.IsBest, g.IsNew, g.IsHot, g.IsPromotion, g.Remark FROM         dbo.Goods AS g INNER JOIN dbo.Category AS c ON g.CatID = c.CatID INNER JOIN dbo.Brand AS b ON g.BrandID = b.BrandID  where GoodsId not in (select top((?-1)*?) GoodsId from Goods where isDelete=0 ) and 1=1 and g.isDelete=0 ";
			// and catid=1 and brandid=2 and goodsname like '%帅%' and
			// [createtime] BETWEEN '2016-1-1' and '2018-1-1'
			System.out.println(dto.getCatName());
			if (dto.getCatName() != null) {
				if (dto.getCatName().equals("A")) {

				} else {
					sql += " and c.CatName= '" + dto.getCatName() + "'";
				}
			}
			if (dto.getBreanName() != null) {

				if (dto.getBreanName().equals("A")) {

				} else {
					sql += " and b.BrandName= '" + dto.getBreanName() + "'";
				}
			}
			if (dto.getIsNew() != null) {
				if (dto.getIsNew().equals("A")) {

				} else {
					sql += " and g.isNew=" + dto.getIsNew();
				}

			}
			if (dto.getIsHot() != null) {
				if (dto.getIsHot().equals("A")) {

				} else {
					sql += " and g.isHot=" + dto.getIsHot();
				}

			}
			if (dto.getIsBest() != null) {
				if (dto.getIsBest().equals("A")) {

				} else {
					sql += " and g.isBest=" + dto.getIsBest();
				}

			}
			if (dto.getIsPromotion() != null) {
				if (dto.getIsPromotion().equals("A")) {

				} else {
					sql += " and g.isPromotion=" + dto.getIsPromotion();
				}

			}
			if (dto.getGoodsName() != null) {
				sql += " and g.goodsname like '%" + dto.getGoodsName() + "%'";
			}
			if (dto.getTimeBegin() != null) {
				sql += " and [createtime] BETWEEN  '" + dto.getTimeBegin()
						+ "' and '" + dto.getTimeEnd() + "'";
			}
			sql += " order by g.CreateTime desc";
			Object[] param = { page.getPageCount(), page.getPageIndex(),
					page.getPageCount() };
			rs = this.executeQuery(sql, param);
			System.out.println("查询方法\t" + sql);
			while (rs.next()) {

				Goods g = new Goods();

				g.setCreateTime(rs.getDate("createTime"));
				g.setDescription(rs.getString("description"));
				g.setGoodsID(rs.getInt("goodsID"));
				g.setGoodsName(rs.getString("goodsName"));
				g.setGoodsStock(rs.getInt("goodsStock"));
				g.setIsBest(rs.getInt("isBest"));
				g.setIsHot(rs.getInt("isHot"));
				g.setIsNew(rs.getInt("isNew"));
				g.setIsPromotion(rs.getInt("isPromotion"));
				g.setThumbnail(rs.getString("thumbnail"));
				g.setIsSale(rs.getInt("isSale"));
				g.setIsDaGuangGao(rs.getInt("isDaGuangGao"));
				g.setRemark(rs.getString("remark"));
				g.setShopPrice(rs.getInt("ShopPrice"));
				g.setBrandName(rs.getString("BrandName"));
				g.setCatName(rs.getString("CatName"));
				g.setGuangGaoTu(rs.getString("guangGaoTu"));
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

	/*
	 * 行数 (non-Javadoc)
	 * 
	 * @see
	 * cn.bdqn.shop.dao.GoodsDao#selectGoodsCount(cn.bdqn.shop.dto.GoodsDTO)
	 */
	public int selectGoodsCount(GoodsDTO dto) {
		int count = 0;
		String sql = "";
		try {
			sql = "SELECT  count(*) as row FROM  dbo.Goods AS g INNER JOIN dbo.Category AS c ON g.CatID = c.CatID INNER JOIN dbo.Brand AS b ON g.BrandID = b.BrandID  where  1=1 and g.isDelete=0 ";
			if (dto.getCatName() != null) {
				if (dto.getCatName().equals("A")) {

				} else {
					sql += " and c.CatName= '" + dto.getCatName() + "'";
				}
			}
			if (dto.getBreanName() != null) {

				if (dto.getBreanName().equals("A")) {

				} else {
					sql += " and b.BrandName= '" + dto.getBreanName() + "'";
				}
			}

			if (dto.getIsNew() != null) {
				if (dto.getIsNew().equals("A")) {

				} else {
					sql += " and g.isNew=" + dto.getIsNew();
				}

			}
			if (dto.getIsHot() != null) {
				if (dto.getIsHot().equals("A")) {

				} else {
					sql += " and g.isHot=" + dto.getIsHot();
				}

			}
			if (dto.getIsBest() != null) {
				if (dto.getIsBest().equals("A")) {

				} else {
					sql += " and g.isBest=" + dto.getIsBest();
				}

			}
			if (dto.getIsPromotion() != null) {
				if (dto.getIsPromotion().equals("A")) {

				} else {
					sql += " and g.isPromotion=" + dto.getIsPromotion();
				}

			}

			if (dto.getGoodsName() != null) {
				sql += " and g.goodsname like '%" + dto.getGoodsName() + "%'";
			}
			if (dto.getTimeBegin() != null) {
				sql += " and [createtime] BETWEEN  '" + dto.getTimeBegin()
						+ "' and '" + dto.getTimeEnd() + "'";
			}

			rs = this.executeQuery(sql, null);
			System.out.println("查询行数\t" + sql);
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

	/*
	 * 修改信息 (non-Javadoc)
	 * 
	 * @see cn.bdqn.shop.dao.GoodsDao#updateGoods(cn.bdqn.shop.entity.Goods)
	 */
	public int updateGoods(Goods goods) {
		String sql = "UPDATE [Goods] SET [CatID] = ? ,[GoodsName] = ?,[BrandID] = ?,[GoodsStock] = ? ,[ShopPrice] = ? ,[Description] = ? ,[Thumbnail] =? ,[IsSale] =? ,[IsBest] = ?,[IsNew] = ? ,[IsHot] = ?,[IsPromotion] = ? ,[Remark] =? ,[DeleteTime] = null WHERE GoodsID=?";
		Object[] param = { goods.getCatName(), goods.getGoodsName(),
				goods.getBrandName(), goods.getGoodsStock(),
				goods.getShopPrice(), goods.getDescription(),
				goods.getThumbnail(), goods.getIsSale(), goods.getIsBest(),
				goods.getIsNew(), goods.getIsHot(), goods.getIsPromotion(),
				goods.getRemark(), goods.getGoodsID() };

		return this.executeUpdate(sql, param);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.bdqn.shop.dao.GoodsDao#GoodsRetrieveIn(java.lang.String)
	 */
	public int GoodsRetrieveIn(String id) {

		String sql = "UPDATE [dbo].[Goods] SET [isDelete] = 1,DeleteTime=GETDATE() WHERE goodsId=?";
		Object[] param = { id };
		return this.executeUpdate(sql, param);

	}

	public int selectGoodsId() {
		String sql = "select ";
		return 0;
	}

}
