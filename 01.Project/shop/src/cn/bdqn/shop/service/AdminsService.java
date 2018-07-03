package cn.bdqn.shop.service;

import cn.bdqn.shop.entity.Admins;

public interface AdminsService {
	int insertAdmins(Admins admins);
	int selectAdminsByName(String adminName);
	int selectAdminsByNameByPwd(String name,String pwd);

}
