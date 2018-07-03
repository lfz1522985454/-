package cn.bdqn.shop.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.print.attribute.standard.Fidelity;

import cn.bdqn.shop.dao.BaseDao;
import cn.bdqn.shop.dao.OrderDao;
import cn.bdqn.shop.dto.OrderDTO;
import cn.bdqn.shop.entity.Order;
import cn.bdqn.shop.util.Page;

public class OrderDaoImpl extends BaseDao implements OrderDao {

	public int updateOrder() {
		// TODO Auto-generated method stub
		return 0;
	}

	public List<Order> selectOrderAll(Page page, OrderDTO Orderdto) {
		List<Order> list = new ArrayList<Order>();

		try {
			String sql = "SELECT   top(?)  o.OrderId, o.Address,o.ShippingMethod,o.OrderSN, u.UserName, o.OrderStatus,o.PayId, o.ShippingStatus, o.PayStatus, o.OrderMsg, s.ShippingName, p.PayName, o.GoodsAmout, o.ShippingMoney,   o.OrderAmount, o.Payment, o.CreateTime, o.ConfirmTime, o.PayTime, o.ShippingTime, o.ReceiptTime FROM         dbo.Users AS u INNER JOIN dbo.UserAddress AS a ON u.AddressID = a.AddressId INNER JOIN dbo.[Order] AS o ON u.UserID = o.UserId INNER JOIN dbo.Shipping AS s ON o.ShippingMethod = s.ShippingId INNER JOIN dbo.PayMent AS p ON o.PayId = p.PayId where o.OrderId not in(select top((?-1)*?)OrderId from [Order] where 1=1) and 1=1 ";
			Object[] param = { page.getPageCount(), page.getPageIndex(),
					page.getPageCount() };

			// 条件 -- begin

			if (Orderdto.getOrderSN() != null) {
				if (Orderdto.getOrderSN().equals("")) {

				} else {
					sql += " and o.OrderSN='" + Orderdto.getOrderSN() + "'";
				}
			}
			if (Orderdto.getOrderStetus() != null) {
				if (Orderdto.getOrderStetus().equals("A")) {

				} else {
					sql += " and o.OrderStatus=" + Orderdto.getOrderStetus();
				}
			}
			if (Orderdto.getPayStatus() != null) {
				if (Orderdto.getPayStatus().equals("A")) {

				} else {
					sql += " and o.PayStatus='" + Orderdto.getPayStatus() + "'";
				}
			}
			if (Orderdto.getShippingStatus() != null) {
				if (Orderdto.getShippingStatus().equals("A")) {

				} else {
					sql += " and o.ShippingStatus='"
							+ Orderdto.getShippingStatus() + "'";

				}
			}
			if (Orderdto.getPayID() != null) {
				if (Orderdto.getPayID().equals("A")) {

				} else {
					sql += " and o.PayId=" + Orderdto.getPayID();
				}
			}
			if (Orderdto.getShippingMethod() != null) {
				if (Orderdto.getShippingMethod().equals("A")) {

				} else {
					sql += " and o.ShippingMethod="
							+ Orderdto.getShippingMethod();
				}
			}
			if (Orderdto.getUserName() != null) {
				if (Orderdto.getUserName().equals("A")) {

				} else {
					sql += " and u.UserName like '%" + Orderdto.getUserName()
							+ "%'";
				}
			}

			if (Orderdto.getBeginTime() != null) {
				sql += " and  o.CreateTime between '" + Orderdto.getBeginTime()
						+ "' and '" + Orderdto.getEndTime() + "'";
			}
			sql += "  order by o.CreateTime desc ";

			// 条件 -- end
			System.out.println("-----shuy" + sql);
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
				o.setAddress(rs.getString("address"));
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

	public int selectGoodsCount(OrderDTO dto) {
		int count = 0;
		try {
			String sql = "SELECT COUNT(*) as row FROM         dbo.Users AS u INNER JOIN dbo.UserAddress AS a ON u.AddressID = a.AddressId INNER JOIN dbo.[Order] AS o ON u.UserID = o.UserId INNER JOIN dbo.Shipping AS s ON o.ShippingMethod = s.ShippingId INNER JOIN dbo.PayMent AS p ON o.PayId = p.PayId where 1=1 ";
			// 条件 -- begin

			if (dto.getOrderSN() != null) {
				if (dto.getOrderSN().equals("")) {

				} else {
					sql += " and o.OrderSN='" + dto.getOrderSN() + "'";
				}
			}
			if (dto.getOrderStetus() != null) {
				if (dto.getOrderStetus().equals("A")) {

				} else {
					sql += " and o.OrderStatus=" + dto.getOrderStetus();
				}
			}
			if (dto.getPayStatus() != null) {
				if (dto.getPayStatus().equals("A")) {

				} else {
					sql += " and o.PayStatus=" + dto.getPayStatus();
				}
			}
			if (dto.getShippingStatus() != null) {
				if (dto.getShippingStatus().equals("A")) {

				} else {
					sql += " and o.ShippingStatus=" + dto.getShippingStatus();
				}
			}
			if (dto.getPayID() != null) {
				if (dto.getPayID().equals("A")) {

				} else {
					sql += " and o.PayId=" + dto.getPayID();
				}
			}
			if (dto.getShippingMethod() != null) {
				if (dto.getShippingMethod().equals("A")) {

				} else {
					sql += " and o.ShippingMethod=" + dto.getShippingMethod();
				}
			}
			if (dto.getUserName() != null) {
				if (dto.getUserName().equals("A")) {

				} else {
					sql += " and u.UserName like '%" + dto.getUserName() + "%'";
				}
			}

			if (dto.getBeginTime() != null) {
				sql += " and o.CreateTime between '" + dto.getBeginTime()
						+ "' and '" + dto.getEndTime() + "'";
			}

			// 条件 -- end
			System.out.println("sql+\t" + sql);
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

	public int insertOrder(Order obj) {
		String sql = "INSERT INTO [MyShop].[dbo].[Order] ([UserId],[OrderStatus] ,[ShippingStatus],[PayStatus],[OrderMsg] ,[ShippingMethod] ,[PayId],[GoodsAmout] ,[ShippingMoney] ,[OrderAmount] ,[Payment] ,[CreateTime],[ConfirmTime],[PayTime] ,[ShippingTime] ,[ReceiptTime] ,[Address]) VALUES(1,1,1,2,?,14,11,?,?,?,?,getdate(),getdate(),getdate(),getdate(),getdate(),?)";
		Object[] param = { obj.getOrderMsg(), obj.getGoodsAmout(),
				obj.getGoodsAmout(), obj.getGoodsAmout(), obj.getGoodsAmout(),
				obj.getAddress() };

		return this.executeUpdate(sql, param);
	}

	public List<Order> selectOrderByuserId(String id) {
		List<Order> list = new ArrayList<Order>();
		try {
			String sql = "SELECT     dbo.[Order].OrderSN, dbo.[Order].OrderStatus, dbo.[Order].ShippingStatus, dbo.Shipping.ShippingName, dbo.[Order].Address FROM         dbo.[Order] INNER JOIN  dbo.Shipping ON dbo.[Order].ShippingMethod = dbo.Shipping.ShippingId INNER JOIN  dbo.Users ON dbo.[Order].UserId = dbo.Users.UserID where dbo.Users.UserID=?";
			Object[] param = { id };
			rs = this.executeQuery(sql, param);
			while (rs.next()) {
				Order o = new Order();
				o.setOrderSN(rs.getString("orderSN"));
				
				o.setShippingName(rs.getString("shippingName"));
				o.setOrderStatus(rs.getInt("orderStatus"));
				o.setShippingStatus(rs.getInt("shippingStatus"));
			
				o.setAddress(rs.getString("address"));
				list.add(o);
				;
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
