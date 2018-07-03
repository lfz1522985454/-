package cn.bdqn.shop.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.bdqn.shop.dao.BaseDao;
import cn.bdqn.shop.dao.orderweifahuolistDao;
import cn.bdqn.shop.dto.OrderDTO;
import cn.bdqn.shop.entity.Order;
import cn.bdqn.shop.util.Page;

public class orderweifahuolistDaoImpl extends BaseDao implements
		orderweifahuolistDao {

	public int selectGoodsCount(OrderDTO dto) {
		int count = 0;
		try {
			String sql = "SELECT COUNT(*) as row FROM         dbo.Users AS u INNER JOIN dbo.UserAddress AS a ON u.AddressID = a.AddressId INNER JOIN dbo.[Order] AS o ON u.UserID = o.UserId INNER JOIN dbo.Shipping AS s ON o.ShippingMethod = s.ShippingId INNER JOIN dbo.PayMent AS p ON o.PayId = p.PayId where 1=1 and o.ShippingStatus=0 ";
			if (dto.getOrderSN() != null) {
				if (dto.getOrderSN().equals("")) {

				} else {
					sql += " and o.OrderSN='" + dto.getOrderSN() + "'";
				}
			}
			rs = this.executeQuery(sql, null);
			while (rs.next()) {
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

	public List<Order> selectOrderAll(Page page, OrderDTO dto) {
		List<Order> list = new ArrayList<Order>();

		try {
			String sql = "SELECT   top(?)  o.OrderId, o.OrderSN,  u.UserName, o.OrderStatus, o.ShippingStatus, o.PayStatus, o.OrderMsg, s.ShippingName, p.PayName, o.GoodsAmout, o.ShippingMoney,   o.OrderAmount, o.Payment, o.CreateTime, o.ConfirmTime, o.PayTime, o.ShippingTime, o.ReceiptTime FROM         dbo.Users AS u INNER JOIN dbo.UserAddress AS a ON u.AddressID = a.AddressId INNER JOIN dbo.[Order] AS o ON u.UserID = o.UserId INNER JOIN dbo.Shipping AS s ON o.ShippingMethod = s.ShippingId INNER JOIN dbo.PayMent AS p ON o.PayId = p.PayId where o.OrderId not in(select top((?-1)*?)OrderId from [Order]  where 1=1  and o.ShippingStatus=0) and 1=1 and o.ShippingStatus=0 ";
			Object[] param = { page.getPageCount(), page.getPageIndex(),
					page.getPageCount() };
			if (dto.getOrderSN() != null) {
				if (dto.getOrderSN().equals("")) {

				} else {
					sql += " and o.OrderSN='" + dto.getOrderSN() + "'";
				}
			}
			rs = this.executeQuery(sql, param);
			while (rs.next()) {
				Order o = new Order();
				o.setConfitmTime(rs.getDate("ConfirmTime"));
				o.setCreateTime(rs.getDate("createTime"));
				o.setGoodsAmout(rs.getDouble("goodsAmout"));
				o.setOrderId(rs.getInt("orderId"));
				o.setOrderAmount(rs.getDouble("orderAmount"));
				o.setOrderMsg(rs.getString("orderMsg"));
				o.setOrderSN(rs.getString("orderSN"));
				o.setOrderStatus(rs.getInt("orderStatus"));
				o.setPayMent(rs.getDouble("payMent"));
				o.setPayName(rs.getString("payName"));
				o.setPayStatus(rs.getInt("payStatus"));
				o.setPayTime(rs.getDate("payTime"));
				o.setReceipTime(rs.getDate("ReceiptTime"));
				o.setShippingName(rs.getString("shippingName"));
				o.setShippingMoney(rs.getDouble("shippingMoney"));
				o.setShippingStatus(rs.getInt("shippingStatus"));
				o.setShippingTime(rs.getDate("shippingTime"));
				o.setUserName(rs.getString("UserName"));
				list.add(o);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			this.closeAll(conn, pstmt, rs);
		}

		return list;
	}

}
