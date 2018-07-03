package cn.bdqn.shop.service;

import java.util.List;

import cn.bdqn.shop.dto.UsersDTO;
import cn.bdqn.shop.entity.Users;
import cn.bdqn.shop.util.Page;

public interface UsersService {
	List<Users> selectUsersAll(Page page, UsersDTO dto);
	int selectUsersCount(UsersDTO dto);
	int updateusers(Users obj);
}
