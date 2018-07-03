package cn.bdqn.shop.service;

import java.util.List;

import cn.bdqn.shop.entity.PayMent;

public interface PayMentService {
	List<PayMent> selectPayMentAll();

	int insertPayMent(PayMent obj);
}
