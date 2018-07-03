package cn.bdqn.shop.dao;

import java.util.List;

import cn.bdqn.shop.entity.PayMent;

public interface PayMentDao {
	List<PayMent> selectPayMentAll();
	int insertPayMent(PayMent obj);

}
