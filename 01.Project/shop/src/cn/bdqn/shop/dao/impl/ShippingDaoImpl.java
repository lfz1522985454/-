package cn.bdqn.shop.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.bdqn.shop.dao.BaseDao;
import cn.bdqn.shop.dao.ShippingDao;
import cn.bdqn.shop.entity.Shipping;

public class ShippingDaoImpl extends BaseDao implements ShippingDao {

	/*
	 * (non-Javadoc)
	 * 
	 * @see cn.bdqn.shop.dao.ShippingDao#selectShippingAll()
	 */
	public List<Shipping> selectShippingAll() {
		List<Shipping> list = new ArrayList<Shipping>();
		try {
			String sql = "select * from Shipping";
			rs = this.executeQuery(sql, null);
			while (rs.next()) {
				Shipping s = new Shipping();
				s.setDescription(rs.getString("description"));
				s.setEnabled(rs.getInt("enabled"));
				s.setShippingId(rs.getInt("shippingId"));
				s.setShippingName(rs.getString("shippingName"));
				s.setImg(rs.getString("img"));
				list.add(s);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			this.closeAll(conn, pstmt, rs);
		}

		return list;
	}

	public int insertShipping(Shipping obj) {
		String sql = "INSERT INTO [MyShop].[dbo].[Shipping]([ShippingName] ,[Description] ,[Enabled] ,[Img]) VALUES(?,?,?,?)";
		Object param[] = { obj.getShippingName(), obj.getDescription(),
				obj.getEnabled(), obj.getImg() };

		return this.executeUpdate(sql, param);

	}

}
