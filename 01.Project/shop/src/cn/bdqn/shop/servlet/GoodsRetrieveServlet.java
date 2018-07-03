package cn.bdqn.shop.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.bdqn.shop.dto.GoodsDTO;
import cn.bdqn.shop.entity.Goods;
import cn.bdqn.shop.service.GoodsRetrieveService;
import cn.bdqn.shop.service.impl.GoodsretrieveServiceImpl;
import cn.bdqn.shop.util.Page;

/**
 * Servlet implementation class GoodsRetrieveServlet
 */
public class GoodsRetrieveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GoodsRetrieveServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("------------------------------商品回收站--BEGIN");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String type = request.getParameter("type");
		String id = request.getParameter("id");
		GoodsRetrieveService server = new GoodsretrieveServiceImpl();

		if (type == null) {
			// 条件
			GoodsDTO dto = (GoodsDTO) session.getAttribute("cxtj");

			String begtime = request.getParameter("begtime");
			String endtime = request.getParameter("endtime");
			String goodsName = request.getParameter("goodsName");

			Date tb = null;
			if (begtime == null || begtime.equals("")) {

			} else {
				tb = Date.valueOf(begtime);
			}
			Date te = null;
			if (endtime == null || endtime.equals("")) {

			} else {
				te = Date.valueOf(endtime);
			}

			if (dto == null) {
				dto = new GoodsDTO();
				dto.setTimeBegin(tb);
				dto.setTimeEnd(te);
				dto.setGoodsName(goodsName);
			} else {

				if (begtime != null) {
					dto.setTimeBegin(tb);
				}
				if (endtime != null) {
					dto.setTimeEnd(te);

				}
				if (goodsName != null) {
					dto.setGoodsName(goodsName);
				}
			}
			session.setAttribute("cxtjj", dto);
			// 条件 ---end
			System.out.println("---条件");
			System.out.println(begtime);
			System.out.println(endtime);
			System.out.println(goodsName);

			// 分页查询 -- begin
			int count = server.selectGoodsCount(dto);
			session.setAttribute("zhs", count);
			System.out.println("总行数：" + count);
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
			List<Goods> list = server.selectGoodsbyIsDelete(page, dto);
			// 数据
			session.setAttribute("spxx", list);
			System.out.println("------信息");
			for (Goods goods : list) {
				System.out.println(goods.getDeleteTime() + "\t" + goods.getGoodsName());
			}
			// 分页查询 -- end
			response.sendRedirect("admin/goodsretrieve.jsp");
		} else if (type.equals("hy")) {
			System.out.println("进入还原");
			// 还原
			int row = server.GoodsRetrieveOut(id);
			System.out.println(row);
			if (row > 0) {
				System.out.println("还原成功");
				out.write("<script>alert('还原成功');location.href='GoodsRetrieveServlet';</script>");
			} else {
				out.write("<script>alert('还原失败');location.href='GoodsRetrieveServlet';</script>");
			}

		}

	}

}
