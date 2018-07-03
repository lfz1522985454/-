package cn.bdqn.shop.service.impl;

import java.util.List;

import cn.bdqn.shop.dao.BrandDao;
import cn.bdqn.shop.dao.impl.BrandDaoImpl;
import cn.bdqn.shop.dto.BrandDTO;
import cn.bdqn.shop.entity.Brand;
import cn.bdqn.shop.service.BrandService;
import cn.bdqn.shop.util.Page;

public class BrandServiceImpl implements BrandService {
	
	BrandDao dao = new BrandDaoImpl();

	public int deleteBrand(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insertBrand(Brand brand) {
		// TODO Auto-generated method stub
		return dao.insertBrand(brand);
	}

	public List<Brand> selectBrandAll() {
		return dao.selectBrandAll();
	}

	public Brand selectBrandByID(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Brand> selectBrandByPage(Page page, BrandDTO dto) {
		// TODO Auto-generated method stub
		return dao.selectBrandByPage(page, dto);
	}

	public int selectBrandCount(BrandDTO dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateBrand(Brand brand) {
		// TODO Auto-generated method stub
		return 0;
	}

}
