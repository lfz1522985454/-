package cn.bdqn.shop.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.bdqn.shop.dto.CategoryDTO;
import cn.bdqn.shop.dto.GoodsDTO;
import cn.bdqn.shop.entity.Brand;
import cn.bdqn.shop.entity.Category;
import cn.bdqn.shop.entity.Goods;
import cn.bdqn.shop.service.BrandService;
import cn.bdqn.shop.service.CategoryService;
import cn.bdqn.shop.service.GoodsService;
import cn.bdqn.shop.service.impl.BrandServiceImpl;
import cn.bdqn.shop.service.impl.CategoryServiceImpl;
import cn.bdqn.shop.service.impl.GoodsServiceImpl;
import cn.bdqn.shop.util.Page;

public class qt_GoodsServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		GoodsService service = new GoodsServiceImpl();
		String type = request.getParameter("type");
		if (type == null) {
			GoodsDTO dto = new GoodsDTO();
			dto.setBreanName(null);
			dto.setCatName(null);
			dto.setGoodsName(null);
			dto.setIsBest(null);
			dto.setIsHot(null);
			dto.setIsNew(null);
			dto.setIsPromotion(null);
			dto.setTimeBegin(null);
			dto.setTimeEnd(null);
			// 分页查询 -- begin
			int count = service.selectGoodsCount(dto);
			session.setAttribute("zhs", count);
			Page page = new Page();
			page.setPageCount(10);
			page.setIndex(count);
			String index = request.getParameter("index");
			if (index == null) {
				page.setPageIndex(1);
			} else {
				page.setPageIndex(Integer.parseInt(index));
			}
			session.setAttribute("page", page);
			List<Goods> list = service.selectGoodsByPage(page, dto);
			for (Goods goods : list) {
				System.out.println("------------名称" + goods.getGoodsName());
			}
			session.setAttribute("list", list);
			response.sendRedirect("index.jsp");

		} else if (type.equals("sel")) {
			// 搜索
			System.out.println("----------进入搜索");
			request.setCharacterEncoding("UTF-8");
			String goodsName = request.getParameter("goodsName");
			session.setAttribute("gname", goodsName);
			String isnew = request.getParameter("isnew");
			String ishot = request.getParameter("ishot");
			String iscx = request.getParameter("iscx");
			
			String isbase = request.getParameter("isbase");
			GoodsDTO dto = new GoodsDTO();
			dto.setBreanName(null);
			dto.setCatName(null);
			dto.setGoodsName(goodsName);
			dto.setIsBest(isbase);
			dto.setIsHot(ishot);
			dto.setIsNew(isnew);
			dto.setIsPromotion(iscx);
			dto.setTimeBegin(null);
			dto.setTimeEnd(null);
			// 分页查询 -- begin
			int count = service.selectGoodsCount(dto);
			session.setAttribute("zhs", count);
			Page page = new Page();
			page.setPageCount(10);
			page.setIndex(count);
			String index = request.getParameter("index");
			if (index == null) {
				page.setPageIndex(1);
			} else {
				page.setPageIndex(Integer.parseInt(index));
			}
			session.setAttribute("page", page);
			List<Goods> list = service.selectGoodsByPage(page, dto);
			for (Goods goods : list) {
				System.out.println("------------名称" + goods.getGoodsName());
			}
			session.setAttribute("ssxx", list);

			// 查询分类
			CategoryService service1 = new CategoryServiceImpl();
			List<Category> fllist = service1.selectCategoryAll();
			session.setAttribute("fllist", fllist);

			// 查询品牌
			BrandService service2 = new BrandServiceImpl();
			List<Brand> pplist = service2.selectBrandAll();
			session.setAttribute("pplist", pplist);
			response.sendRedirect("shop.jsp");
		} else if (type.equals("xq")) {
			// 商品详情
			System.out.println("------------ 商品详情");
			String id = request.getParameter("id");
			System.out.println(id);
			Goods g = service.selectGoodsByID(id);
			System.out.println(g.getGoodsID());
			g.setDescription(g.getDescription().replace("../", ""));
			session.setAttribute("g", g);

			// 查询全部
			GoodsDTO dto = new GoodsDTO();
			dto.setBreanName(null);
			dto.setCatName(null);
			dto.setGoodsName(null);
			dto.setIsBest(null);
			dto.setIsHot("1");
			dto.setIsNew(null);
			dto.setIsPromotion(null);
			dto.setTimeBegin(null);
			dto.setTimeEnd(null);
			// 分页查询 -- begin
			int count = service.selectGoodsCount(dto);
			session.setAttribute("zhs", count);
			Page page = new Page();
			page.setPageCount(4);
			page.setIndex(count);
			String index = request.getParameter("index");
			if (index == null) {
				page.setPageIndex(1);
			} else {
				page.setPageIndex(Integer.parseInt(index));
			}
			session.setAttribute("page", page);
			List<Goods> list = service.selectGoodsByPage(page, dto);
			for (Goods goods : list) {
				System.out.println("------------名称" + goods.getGoodsName());
			}
			session.setAttribute("rxxp", list);
			response.sendRedirect("single.jsp");

		}

	}

}
