package cn.bdqn.shop.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.bdqn.shop.dao.BaseDao;
import cn.bdqn.shop.dao.CartDao;
import cn.bdqn.shop.entity.Cart;

public class CartDaoImpl extends BaseDao implements CartDao {

	public List<Cart> selectCartByUserId(String id) {
		List<Cart> list = new ArrayList<Cart>();
		try {
			String sql = "SELECT  Goods.daTu1,Goods.xiaotu2,Goods.xiaotu3,Users.UserID, Goods.GoodsId,  dbo.Cart.CartID, dbo.Goods.Thumbnail, dbo.Goods.GoodsName, dbo.Goods.ShopPrice, dbo.Cart.GoodsNumber FROM         dbo.Goods INNER JOIN dbo.Cart ON dbo.Goods.GoodsID = dbo.Cart.GoodsID INNER JOIN dbo.Users ON dbo.Cart.UserID = dbo.Users.UserID where Users.userId=?";
			Object[] param = { id };
			rs = this.executeQuery(sql, param);
			while (rs.next()) {
				Cart c = new Cart();
				c.setCartId(rs.getInt("cartId"));
				c.setGoodsId(rs.getInt("goodsId"));
				c.setGoodsNumber(rs.getInt("goodsNumber"));
				c.setDaTu1(rs.getString("daTu1"));
				c.setXiaoTu2(rs.getString("xiaoTu2"));
				c.setXiaoTu3(rs.getString("xiaoTu3"));

				c.setUserId(rs.getInt("userId"));
				c.setThumbnail(rs.getString("Thumbnail"));
				c.setGoodsName(rs.getString("goodsName"));
				c.setGoodsprice(rs.getDouble("ShopPrice"));

				list.add(c);

			}
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			this.closeAll(conn, pstmt, rs);
		}
		return list;
	}

	public int insertCart(Cart cart) {
		int row = 0;
		try {
			// 查询
			String sel = "select count(*) as row from cart where GoodsId=? and userid=?";
			int count = 0;
			Object[] p = { cart.getGoodsId() ,cart.getUserId()};
			rs = this.executeQuery(sel, p);
			while (rs.next()) {
				count = rs.getInt("row");
			}
			if (count > 0) {
				// 修改
				String sql = "UPDATE [Cart] SET [GoodsNumber] +=? WHERE GoodsId=? and userid=?";
				Object[] param = { cart.getGoodsNumber(), cart.getGoodsId() ,cart.getUserId() };
				row = this.executeUpdate(sql, param);
			} else {

				// 增加
				String sql = "INSERT INTO [MyShop].[dbo].[Cart] ([UserID] ,[GoodsID] ,[GoodsNumber])VALUES(?,?,?)";
				Object[] param = { cart.getUserId(), cart.getGoodsId(),
						cart.getGoodsNumber() };
				row = this.executeUpdate(sql, param);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			this.closeAll(conn, pstmt, rs);
		}
		return row;

	}

	public int deleteCartId(String id) {
		String sql = "delete from cart where cartid =?";
		Object[] param = { id };

		// TODO Auto-generated method stub
		return this.executeUpdate(sql, param);
	}

	public List<Cart> selectCartByCartId(String id) {
		// TODO Auto-generated method stub
		List<Cart> list = new ArrayList<Cart>();
		try {
			String sql = "SELECT  Goods.daTu1,Users.UserID, Goods.GoodsId,  dbo.Cart.CartID, dbo.Goods.GoodsName, dbo.Goods.ShopPrice, dbo.Cart.GoodsNumber FROM         dbo.Goods INNER JOIN dbo.Cart ON dbo.Goods.GoodsID = dbo.Cart.GoodsID INNER JOIN dbo.Users ON dbo.Cart.UserID = dbo.Users.UserID where Cart.UserID=?";
			Object[] param = { id };
			rs = this.executeQuery(sql, param);
			while (rs.next()) {
				Cart c = new Cart();
				c.setCartId(rs.getInt("cartId"));
				c.setGoodsId(rs.getInt("goodsId"));
				c.setGoodsNumber(rs.getInt("goodsNumber"));
				c.setDaTu1(rs.getString("daTu1"));
				c.setUserId(rs.getInt("userId"));
				c.setGoodsName(rs.getString("goodsName"));
				c.setGoodsprice(rs.getDouble("ShopPrice"));

				list.add(c);

			}
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			this.closeAll(conn, pstmt, rs);
		}
		return list;
		
		
	}

	public int deleteCartByuserId(String id) {
		String sql = "delete from cart where userid =?";
		Object[] param = { id };

		// TODO Auto-generated method stub
		return this.executeUpdate(sql, param);
		// TODO Auto-generated method stub
	
	}

}
