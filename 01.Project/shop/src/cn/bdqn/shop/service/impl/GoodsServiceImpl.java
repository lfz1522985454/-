package cn.bdqn.shop.service.impl;

import java.util.List;


import cn.bdqn.shop.dao.GoodsDao;
import cn.bdqn.shop.dao.impl.GoodsDaoImpl;
import cn.bdqn.shop.dto.GoodsDTO;
import cn.bdqn.shop.entity.Goods;
import cn.bdqn.shop.service.GoodsService;
import cn.bdqn.shop.util.Page;

public class GoodsServiceImpl  implements GoodsService{
	GoodsDao dao =new GoodsDaoImpl();
	public int deleteGoods(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insertGoods(Goods goods) {
		// TODO Auto-generated method stub
		return dao.insertGoods(goods);
	}

	public List<Goods> selectGoodsAll() {
		// TODO Auto-generated method stub
		return null;
	}

	public Goods selectGoodsByID(String id) {
		// TODO Auto-generated method stub
		return dao.selectGoodsByID(id);
	}

	public List<Goods> selectGoodsByPage(Page page, GoodsDTO dto) {
		// TODO Auto-generated method stub
		return dao.selectGoodsByPage(page, dto);
	}

	public int selectGoodsCount(GoodsDTO dto) {
		// TODO Auto-generated method stub
		return dao.selectGoodsCount(dto);
	}

	public int updateGoods(Goods goods) {
		// TODO Auto-generated method stub
		return dao.updateGoods(goods);
	}

	public int GoodsRetrieveIn(String id) {
		// TODO Auto-generated method stub
		return dao.GoodsRetrieveIn(id);
	}

}
