package cn.bdqn.shop.service.impl;

import java.util.List;

import cn.bdqn.shop.dao.UsersDao;
import cn.bdqn.shop.dao.impl.UsersDaoImpl;
import cn.bdqn.shop.dto.UsersDTO;
import cn.bdqn.shop.entity.Users;
import cn.bdqn.shop.service.UsersService;
import cn.bdqn.shop.util.Page;

public class UsersServiceImpl implements UsersService {
	UsersDao dao =new UsersDaoImpl();
	public List<Users> selectUsersAll(Page page, UsersDTO dto) {
		// TODO Auto-generated method stub
		return dao.selectUsersAll(page, dto);
	}
	public int selectUsersCount(UsersDTO dto) {
		// TODO Auto-generated method stub
		return dao.selectUsersCount(dto);
	}
	public int updateusers(Users obj) {
		// TODO Auto-generated method stub
		return dao.updateusers(obj);
	}

}
