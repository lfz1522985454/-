package cn.bdqn.shop.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.bdqn.shop.dao.BaseDao;
import cn.bdqn.shop.dao.PayMentDao;
import cn.bdqn.shop.entity.PayMent;

public class PayMentDaoImpl extends BaseDao implements PayMentDao {

	public List<PayMent> selectPayMentAll() {
		List<PayMent> list = new ArrayList<PayMent>();

		String sql = "select * from payment";

		try {
			rs = this.executeQuery(sql, null);
			while (rs.next()) {

				PayMent s = new PayMent();
				s.setDesctiption(rs.getString("Desription"));
				s.setEnabled(rs.getInt("enabled"));
				s.setPayId(rs.getInt("payId"));
				s.setPayName(rs.getString("payName"));
				s.setImg(rs.getString("img"));
				list.add(s);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}

	public int insertPayMent(PayMent obj) {
		String sql = "INSERT INTO [PayMent]([PayName],[Enabled] ,[Desription],[Img])VALUES(?,?,?,?)";
		Object[] param = { obj.getPayName(), obj.getEnabled(),
				obj.getDesctiption(), obj.getImg() };
		
		return this.executeUpdate(sql, param);
	}

}
