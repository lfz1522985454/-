package cn.bdqn.shop.service.impl;

import java.util.List;

import cn.bdqn.shop.dao.GoodsRetrieveDao;
import cn.bdqn.shop.dao.impl.GoodsRetrieveDaoImpl;
import cn.bdqn.shop.dto.GoodsDTO;
import cn.bdqn.shop.entity.Goods;
import cn.bdqn.shop.service.GoodsRetrieveService;
import cn.bdqn.shop.util.Page;

public class GoodsretrieveServiceImpl implements GoodsRetrieveService {
	GoodsRetrieveDao dao = new GoodsRetrieveDaoImpl();
	public List<Goods> selectGoodsbyIsDelete(Page page, GoodsDTO dto) {
		// TODO Auto-generated method stub
		return dao.selectGoodsbyIsDelete(page, dto);
	}


	public int selectGoodsCount(GoodsDTO dto) {
		// TODO Auto-generated method stub
		return dao.selectGoodsCount(dto);
	}

	public int GoodsRetrieveOut(String id) {
		// TODO Auto-generated method stub
		return dao.GoodsRetrieveOut(id);
	}

}
