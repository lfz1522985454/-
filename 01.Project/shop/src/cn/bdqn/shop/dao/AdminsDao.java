package cn.bdqn.shop.dao;

import cn.bdqn.shop.entity.Admins;

public interface AdminsDao {
	int insertAdmins(Admins admins);
	int selectAdminsByName(String adminName);
	int selectAdminsByNameByPwd(String name,String pwd);
	

}
