package cn.bdqn.shop.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.bdqn.shop.dao.BaseDao;
import cn.bdqn.shop.dao.UsersDao;
import cn.bdqn.shop.dto.UsersDTO;
import cn.bdqn.shop.entity.Users;
import cn.bdqn.shop.util.Page;

public class UsersDaoImpl extends BaseDao implements UsersDao {

	public List<Users> selectUsersAll(Page page, UsersDTO dto) {
		List<Users> list = new ArrayList<Users>();

		String sql = "SELECT   top(?)  s.UserID, s.Email, s.NickName, s.UserName, s.PassWord, s.Sex, s.Birthday, u.Tel, s.LastLogin, s.LastIp, u.BestTimt, u.Addr FROM   dbo.Users AS s INNER JOIN dbo.UserAddress AS u ON s.AddressID = u.AddressId where s.UserID not in(select top((?-1)*?) UserID from Users)";
		try {
			Object[] param = { page.getPageCount(), page.getPageIndex(),
					page.getPageCount() };
			rs = this.executeQuery(sql, param);
			while (rs.next()) {
				Users u = new Users();
				u.setUserName(rs.getString("userName"));
				u.setAddr(rs.getString("addr"));
				u.setBestTimt(rs.getDate("bestTimt"));
				u.setBirthday(rs.getDate("birthday"));
				u.setEmail(rs.getString("email"));
				u.setLastIp(rs.getString("lastIp"));
				u.setNickName(rs.getString("nickName"));
				u.setPassWord(rs.getString("passWord"));
				u.setSex(rs.getInt("sex"));
				u.setTel(rs.getString("tel"));
				u.setUserId(rs.getInt("userId"));
				list.add(u);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			this.closeAll(conn, pstmt, rs);
		}

		return list;
	}

	public int selectUsersCount(UsersDTO dto) {
		int count=0;
		try {
			String sql="SELECT COUNT(*) as row FROM   dbo.Users AS s INNER JOIN dbo.UserAddress AS u ON s.AddressID = u.AddressId where 1=1 ";
			rs=this.executeQuery(sql, null);
			while(rs.next()){
				count=rs.getInt("row");
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;
	}

	public int insertUsers(Users obj) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateusers(Users obj) {
		String sql="UPDATE [Users]SET [Email] = ? ,[Address] =?,[phone] = ? WHERE Userid=?";
		
		Object [] param ={obj.getEmail(),obj.getPhone(),obj.getAddress()};
		
		return this.executeUpdate(sql, param);
	}

}
