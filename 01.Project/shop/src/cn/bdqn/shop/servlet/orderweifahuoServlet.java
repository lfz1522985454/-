package cn.bdqn.shop.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.bdqn.shop.dto.OrderDTO;
import cn.bdqn.shop.entity.Order;
import cn.bdqn.shop.service.orderweifahuolistService;
import cn.bdqn.shop.service.impl.orderweifahuolistServiceImpl;
import cn.bdqn.shop.util.Page;

public class orderweifahuoServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("--------------------进入未发货");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String type = request.getParameter("type");
		orderweifahuolistService service = new orderweifahuolistServiceImpl();
		if (type == null) {
			// 查询
			OrderDTO dto = (OrderDTO) session.getAttribute("orwfcxtj");
			String orderSN = request.getParameter("orderSN");
			System.out.println("SN:\t" + orderSN);
			if (dto == null) {
				dto = new OrderDTO();
				dto.setOrderSN(orderSN);
			} else {
				if (orderSN != null) {

					dto.setOrderSN(orderSN);
				}
			}
			session.setAttribute("orwfcxtj", dto);
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
			List<Order> list = service.selectOrderAll(page, dto);
			for (Order order : list) {
				System.out.println(order.getPayMent());
			}
			// 数据
			session.setAttribute("xpxx", list);
			// 分页查询 -- end
			session.setAttribute("list", list);
			response.sendRedirect("admin/orderweifahuo.jsp");

		}
	}

}
