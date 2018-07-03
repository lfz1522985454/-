package cn.bdqn.shop.dao.impl;

import java.sql.SQLException;

import cn.bdqn.shop.dao.AdminsDao;
import cn.bdqn.shop.dao.BaseDao;
import cn.bdqn.shop.entity.Admins;

public class AdminsDaoImpl extends BaseDao implements AdminsDao {

	public int insertAdmins(Admins admins) {
		String sql="INSERT INTO Admins ([AdminName] ,[Email],[Password] ,[CreateTime] ,[LastLoginTime] ,[LastIP]) VALUES(?,?,?,GETDATE(),GETDATE(),1)";
		Object [] param={admins.getAdminName(),admins.getEmail(),admins.getPassWord()};
		return this.executeUpdate(sql, param);
	}

	public int selectAdminsByNameByPwd(String name, String pwd) {
		
		int row=0;
		try {
			String sql="select Count(*) as row from Admins where adminname=? and Password=?";
			Object [] param={name,pwd};
			rs=this.executeQuery(sql, param);
			while(rs.next()){
				row =rs.getInt("row");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			this.closeAll(conn, pstmt, rs);
		}
		return row;
	}

	public int selectAdminsByName(String adminName) {
	int row=0;
		
		try {
			String sql="select Count(*) as row from Admins where adminname=? ";
			Object [] param={adminName};
			rs=this.executeQuery(sql, param);
			while(rs.next()){
				row =rs.getInt("row");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			this.closeAll(conn, pstmt, rs);
		}
		return row;
		
	
	}

}
