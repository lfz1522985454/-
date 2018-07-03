package cn.bdqn.shop.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.bdqn.shop.entity.Cart;
import cn.bdqn.shop.service.CartService;
import cn.bdqn.shop.service.impl.CartServiceImpl;

public class CartServlet extends HttpServlet {

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
		String type = request.getParameter("type");
		String userid = request.getParameter("userid");

		CartService service = new CartServiceImpl();
		if (type == null) {

			System.out.println("----------------------查询购物车");

			List<Cart> list = service.selectCartByUserId("1");
			for (Cart cart : list) {
				System.out.println(cart.getGoodsName());
			}
			session.setAttribute("cartlist", list);
			response.sendRedirect("cart.jsp");
		} else if (type.equals("add")) {
			// 增加
			System.out.println("----------------------增加购物车");
			String gid = request.getParameter("gid");
			System.out.println(gid);
			String goodsNumber = request.getParameter("sl");
			Cart c = new Cart();

			c.setGoodsId(Integer.parseInt(gid));
			c.setGoodsNumber(Integer.parseInt(goodsNumber));
			c.setUserId(1);

			int row = service.insertCart(c);
			if (row > 0) {

				out.write("<script>location.href='single.jsp';</script>");
			} else {
				out.write("<script>location.href='single.jsp';</script>");
			}

		} else if (type.equals("del")) {
			System.out.println("---------进入删除");
			String cid = request.getParameter("cid");
			int row = service.deleteCartId(cid);
			if (row > 0) {

				out.write("<script>location.href='CartServlet';</script>");
			} else {
				out.write("<script>alert('移除失败');location.href='cart.jsp';</script>");
			}

		} else if (type.equals("js")) {
			// 结算
			System.out.println("-----------结算");

			// 数量
			String sl = request.getParameter("sl");
			session.setAttribute("sl", sl);
			// 放入总价
			String zj = request.getParameter("zj");
			session.setAttribute("zj", zj);
			System.out.println("--------------------"+zj);
			
			
			String dj = request.getParameter("dj");
			session.setAttribute("dj", dj);

			// 查询购物车
			List<Cart> list = service.selectCartByUserId("1");
			for (Cart cart : list) {
				System.out.println(cart.getGoodsName());
			}
			session.setAttribute("dd", list);

			// 删除购物车数据

			System.out.println("---------进入删除");
			
			//

			response.sendRedirect("add.jsp");

		}

	}

}
