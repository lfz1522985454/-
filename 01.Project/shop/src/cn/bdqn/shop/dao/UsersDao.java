package cn.bdqn.shop.dao;

import java.util.List;

import cn.bdqn.shop.dto.UsersDTO;
import cn.bdqn.shop.entity.Users;
import cn.bdqn.shop.util.Page;

public interface UsersDao {
	List<Users> selectUsersAll(Page page, UsersDTO dto);
	int selectUsersCount(UsersDTO dto);
	int insertUsers(Users obj);
	int updateusers(Users obj);
}
