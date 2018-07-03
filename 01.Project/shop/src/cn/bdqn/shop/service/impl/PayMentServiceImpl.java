package cn.bdqn.shop.service.impl;

import java.util.List;

import cn.bdqn.shop.dao.PayMentDao;
import cn.bdqn.shop.dao.impl.PayMentDaoImpl;
import cn.bdqn.shop.entity.PayMent;
import cn.bdqn.shop.service.PayMentService;

public class PayMentServiceImpl implements PayMentService {
	PayMentDao dao = new PayMentDaoImpl();

	public List<PayMent> selectPayMentAll() {
		// TODO Auto-generated method stub
		return dao.selectPayMentAll();
	}

	public int insertPayMent(PayMent obj) {
		// TODO Auto-generated method stub
		return dao.insertPayMent(obj);
	}

}
