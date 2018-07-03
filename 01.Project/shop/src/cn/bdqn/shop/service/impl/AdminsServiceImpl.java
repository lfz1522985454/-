package cn.bdqn.shop.service.impl;

import cn.bdqn.shop.dao.AdminsDao;
import cn.bdqn.shop.dao.impl.AdminsDaoImpl;
import cn.bdqn.shop.entity.Admins;
import cn.bdqn.shop.service.AdminsService;

public class AdminsServiceImpl implements AdminsService {
	AdminsDao dao =new AdminsDaoImpl();
	public int insertAdmins(Admins admins) {
		// TODO Auto-generated method stub
		return dao.insertAdmins(admins);
	}

	
	public int selectAdminsByName(String adminName) {
		// TODO Auto-generated method stub
		return dao.selectAdminsByName(adminName);
	}


	public int selectAdminsByNameByPwd(String name, String pwd) {
		// TODO Auto-generated method stub
		return dao.selectAdminsByNameByPwd(name, pwd);
	}

}
