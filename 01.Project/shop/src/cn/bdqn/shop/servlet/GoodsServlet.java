package cn.bdqn.shop.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;
import java.util.Map;

import javax.faces.application.Application;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

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
import cn.bdqn.shop.util.UploadHelper;

public class GoodsServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);

	}

	public void bdxlk(HttpServletRequest request) {
		HttpSession session = request.getSession();
		BrandService bservice = new BrandServiceImpl();
		CategoryService cservice = new CategoryServiceImpl();
		// 分类动态绑定 --begin
		List<Category> clist = cservice.selectCategoryAll();

		session.setAttribute("flxx", clist);
		// 分类动态绑定 --end
		// 品牌动态绑定 --begin
		List<Brand> blist = bservice.selectBrandAll();

		session.setAttribute("ppxx", blist);

		// 品牌动态绑定 --end

		// //记录 放入session 记录搜索
		// session.setAttribute("cn", catName);
		// session.setAttribute("bn", brandName);
		// session.setAttribute("tb", timeBegin);
		// session.setAttribute("te", timeEnd);
		// session.setAttribute("gn", goodsName);
		// session.setAttribute("ip", isPromotion);
		// session.setAttribute("ih", isHot);
		// session.setAttribute("in", isNew);
		// session.setAttribute("ib", isBest);
		//
		// System.out.println("-------------条件");
		// System.out.println("类别"+catName);
		// System.out.println("品牌"+brandName);
		// System.out.println("新品"+isNew);
		// System.out.println("热销"+isHot);
		// System.out.println("精品"+isBest);
		// System.out.println("特价促销"+isPromotion);
		// System.out.println("开始时间"+timeBegin);
		// System.out.println("结束时间"+timeEnd);
		// System.out.println("名称"+goodsName);
		//
		// Date tb = null;
		// if (timeBegin == null || timeBegin.equals("")) {
		//
		// } else {
		// tb = Date.valueOf(timeBegin);
		// }
		// Date te = null;
		// if (timeEnd == null || timeEnd.equals("")) {
		//
		// } else {
		// te = Date.valueOf(timeEnd);
		// }
		//
		// GoodsDTO dto = new GoodsDTO();
		// dto.setCatName(catName);
		// dto.setBreanName(brandName);
		// dto.setIsNew(isNew);
		// dto.setIsHot(isHot);
		// dto.setIsBest(isBest);
		// dto.setIsPromotion(isPromotion);
		// dto.setTimeBegin(tb);
		// dto.setTimeEnd(te);
		// dto.setGoodsName(goodsName);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String type = request.getParameter("type");
		GoodsService service = new GoodsServiceImpl();
		String id = request.getParameter("id");
		if (type == null) {

			bdxlk(request);
			// TestDTO dto = (TestDTO) session.getAttribute("cxtj");
			// String uname = request.getParameter("uname");
			// String uid = request.getParameter("uid");
			// //System.out.println("uname---"+uname);
			// if (dto == null) {
			// dto = new TestDTO();//专门用来保存查询条件
			// dto.setUname(uname);
			// dto.setUid(-1);
			// } else {
			// if (uname != null) {
			// dto.setUname(uname);
			// }
			// if (uid != null) {
			// dto.setUid(Integer.parseInt(uid));
			// }
			// }
			// session.setAttribute("cxtj", dto);

			// 条件 --begin
			GoodsDTO dto = (GoodsDTO) session.getAttribute("cxtj");
			String catName = request.getParameter("Category");
			String brandName = request.getParameter("Brand");
			String timeBegin = request.getParameter("begtime");
			String timeEnd = request.getParameter("endtime");
			String goodsName = request.getParameter("goodsName");
			String isPromotion = request.getParameter("isPromotion");
			String isHot = request.getParameter("isHot");
			String isNew = request.getParameter("isNew");
			String isBest = request.getParameter("isBest");

			System.out.println("类别" + catName);
			System.out.println("品牌" + brandName);
			System.out.println("新品" + isNew);
			System.out.println("热销" + isHot);
			System.out.println("精品" + isBest);
			System.out.println("特价促销" + isPromotion);
			System.out.println("开始时间" + timeBegin);
			System.out.println("结束时间" + timeEnd);
			System.out.println("名称" + goodsName);
			Date tb = null;
			if (timeBegin == null || timeBegin.equals("")) {

			} else {
				tb = Date.valueOf(timeBegin);
			}
			Date te = null;
			if (timeEnd == null || timeEnd.equals("")) {

			} else {
				te = Date.valueOf(timeEnd);
			}

			if (dto == null) {
				dto = new GoodsDTO();// 专门用来保存查询条件
				dto.setBreanName(brandName);
				dto.setCatName(catName);
				dto.setGoodsName(goodsName);
				dto.setIsBest(isBest);
				dto.setIsHot(isHot);
				dto.setIsNew(isNew);
				dto.setIsPromotion(isPromotion);
				dto.setTimeBegin(tb);
				dto.setTimeEnd(te);
			} else {
				if (brandName != null) {
					dto.setBreanName(brandName);
				}
				if (catName != null) {
					dto.setCatName(catName);
				}
				if (timeBegin != null) {
					dto.setTimeBegin(tb);
				}
				if (timeEnd != null) {
					dto.setTimeEnd(te);
				}
				if (goodsName != null) {
					dto.setGoodsName(goodsName);
				}
				if (isPromotion != null) {
					dto.setIsPromotion(isPromotion);
				}
				if (isHot != null) {
					dto.setIsHot(isHot);
				}
				if (isBest != null) {
					dto.setIsBest(isBest);

				}

				if (isNew != null) {
					dto.setIsNew(isNew);
				}

			}
			session.setAttribute("cxtj", dto);
			// 条件 --end

			// 分页查询 -- begin
			int count = service.selectGoodsCount(dto);
			session.setAttribute("zhs", count);
			Page page = new Page();
			// 每页显示行数
			page.setPageCount(10);
			// 总页数
			page.setIndex(count);
			// 当前页数
			String index = request.getParameter("index");
			if (index == null) {
				// 如果没有 默认第一行
				page.setPageIndex(1);
			} else {
				page.setPageIndex(Integer.parseInt(index));
			}
			session.setAttribute("page", page);
			// 查询全部
			List<Goods> list = service.selectGoodsByPage(page, dto);
			for (Goods goods : list) {
				System.out.println(goods.getGoodsName());
			}
			// 数据
			session.setAttribute("xpxx", list);
			// 分页查询 -- end
			response.sendRedirect("admin/goodslist.jsp");
		} else if (type.equals("del")) {
			// 放入回收站
			int row = service.GoodsRetrieveIn(id);
			if (row > 0) {

				out
						.write("<script>alert('成功放入回收站');location.href='GoodsServlet';</script>");
			} else {
				out
						.write("<script>alert('失败');location.href='GoodsServlet';</script>");
			}

		} else if (type.equals("bd")) {
			// 增加页面的绑定下拉框
			bdxlk(request);
			response.sendRedirect("admin/goodsadd.jsp");

		} else if (type.equals("add")) {
			System.out.println("---------------进入增加");
			UploadHelper helper = new UploadHelper();
			Map<String, String> map = helper.upload(request);
			// get() 方法
			System.out.println("-------------------------文件上传取值");
			System.out.println(map.get("goodsName"));
			System.out.println(map.get("catName"));
			System.out.println(map.get("thumbnail"));
			System.out.println(map.get("brandName"));
			System.out.println(map.get("goodsStock"));
			System.out.println(map.get("shopPrice"));
			System.out.println(map.get("description"));
			System.out.println(map.get("isSale"));
			System.out.println(map.get("remark"));

			Goods goods = new Goods();
			goods.setGoodsName(map.get("goodsName"));
			goods.setCatName(map.get("catName"));
			goods.setThumbnail(map.get("thumbnail"));
			goods.setBrandName(map.get("brandName"));
			goods.setGoodsStock(Integer.parseInt(map.get("goodsStock")));
			goods.setShopPrice(Integer.parseInt(map.get("shopPrice")));
			goods.setDescription(map.get("description"));
			System.out.println(map.get("description"));
			goods.setIsSale(Integer.parseInt(map.get("isSale")));
			goods.setRemark(map.get("remark"));
			goods.setIsDaGuangGao(Integer.parseInt(map.get("isDaGuangGao")));

			if (map.get("guangGaoTu") == null) {

			} else {
				goods.setGuangGaoTu(map.get("guangGaoTu"));
			}
			goods.setDaTu1(map.get("daTu1"));

			if (map.get("daTu2") == null) {

			} else {
				goods.setDaTu2(map.get("daTu2"));
			}
			goods.setDaTu3(map.get("daTu3"));
			goods.setXiaoTu1("");
			goods.setXiaoTu2("");
			goods.setXiaoTu3("");
			goods.setIsPromotion(Integer.parseInt(map.get("isPromotion")));
			goods.setIsHot(Integer.parseInt(map.get("isHot")));
			goods.setIsBest(Integer.parseInt(map.get("isBest")));

			int row = service.insertGoods(goods);
			if (row > 0) {

				out
						.write("<script>alert('添加成功');location.href='GoodsServlet';</script>");
			} else {
				out
						.write("<script>alert('添加失败，请重试!');location.href='admin/goodsadd.jsp';</script>");
			}

		} else if (type.equals("sel")) {
			// 修改頁面綁定值
			Goods goods = service.selectGoodsByID(id);
			System.out.println("图片：" + goods.getThumbnail() + "名称："
					+ goods.getGoodsName() + "类别：" + goods.getCatName() + "品牌："
					+ goods.getBrandName() + "库存数量：" + goods.getGoodsStock()
					+ "	售价：" + goods.getShopPrice() + "详细描述："
					+ goods.getDescription() + "上下架：" + goods.getIsSale()
					+ "精品：" + goods.getIsBest() + "新品：" + goods.getIsNew()
					+ "热销：" + goods.getIsHot() + "特价促销"
					+ goods.getIsPromotion());

		} else if (type.equals("upd")) {
			// 修改

			// Goods goods =new Goods();
			//
			// int row=service.updateGoods(goods);
			// if (row > 0) {
			//
			// out.write("<script>alert('修改成功');location.href='GoodsServlet';</script>");
			// } else {
			// out.write("<script>alert('修改失败，请重试!');location.href='GoodsServlet';</script>");
			// }
		}

	}

}
