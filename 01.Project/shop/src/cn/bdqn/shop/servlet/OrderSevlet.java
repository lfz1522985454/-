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
import cn.bdqn.shop.dto.OrderDTO;
import cn.bdqn.shop.entity.Goods;
import cn.bdqn.shop.entity.Order;
import cn.bdqn.shop.entity.PayMent;
import cn.bdqn.shop.entity.Shipping;
import cn.bdqn.shop.service.CartService;
import cn.bdqn.shop.service.OrderService;
import cn.bdqn.shop.service.PayMentService;
import cn.bdqn.shop.service.ShippingService;
import cn.bdqn.shop.service.impl.CartServiceImpl;
import cn.bdqn.shop.service.impl.OrderServiceImpl;
import cn.bdqn.shop.service.impl.PayMentServiceImpl;
import cn.bdqn.shop.service.impl.ShippingServiceImpl;
import cn.bdqn.shop.util.Page;

public class OrderSevlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("--------------------进入订单列表");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String type = request.getParameter("type");
		OrderService service = new OrderServiceImpl();

		// 支付方式
		PayMentService service1 = new PayMentServiceImpl();
		List<PayMent> zf = service1.selectPayMentAll();
		session.setAttribute("zf", zf);

		// 配送方式
		ShippingService service2 = new ShippingServiceImpl();
		List<Shipping> ps = service2.selectShippingAll();
		session.setAttribute("ps", ps);

		if (type == null) {

			// 查询
			// 条件 --begin
			OrderDTO dto = (OrderDTO) session.getAttribute("orcxtj");

			String orderSN = request.getParameter("orderSN");
			String orderStetus = request.getParameter("orderStetus");
			String shippingStatus = request.getParameter("shippingStatus");
			String payStatus = request.getParameter("payStatus");
			String shippingMethod = request.getParameter("shippingMethod");
			String payID = request.getParameter("payID");
			String beginTime = request.getParameter("beginTime");
			String endTime = request.getParameter("endTime");
			String userName = request.getParameter("userName");

			System.out.println("SN:\t" + orderSN);
			System.out.println("orderStetus:\t" + orderStetus);
			System.out.println("shippingStatus:\t" + shippingStatus);
			System.out.println("payStatus:\t" + payStatus);
			System.out.println("shippingMethod:\t" + shippingMethod);
			System.out.println("payID:\t" + payID);
			System.out.println("beginTime:\t" + beginTime);
			System.out.println("endTime:\t" + endTime);
			System.out.println("userName:\t" + userName);

			Date bt = null;
			if (beginTime == null || beginTime.equals("")) {

			} else {
				bt = Date.valueOf(beginTime);
			}
			Date et = null;
			if (endTime == null || endTime.equals("")) {

			} else {
				et = Date.valueOf(endTime);
			}

			if (dto == null) {
				dto = new OrderDTO();
				dto.setBeginTime(bt);
				dto.setEndTime(et);
				dto.setOrderSN(orderSN);
				dto.setOrderStetus(orderStetus);
				dto.setPayID(payID);
				dto.setPayStatus(payStatus);
				dto.setShippingMethod(shippingMethod);
				dto.setShippingStatus(shippingStatus);
				dto.setUserName(userName);
			} else {

				if (orderSN != null) {

					dto.setOrderSN(orderSN);
				}
				if (orderStetus != null) {
					dto.setOrderStetus(orderStetus);
				}
				if (shippingStatus != null) {
					dto.setShippingStatus(shippingStatus);
				}
				if (payStatus != null) {
					dto.setPayStatus(payStatus);
				}

				if (shippingMethod != null) {
					dto.setShippingMethod(shippingMethod);
				}
				if (payID != null) {
					dto.setPayID(payID);
				}
				if (beginTime != null) {
					dto.setBeginTime(bt);
				}
				if (endTime != null) {
					dto.setEndTime(et);
				}

				if (userName != null) {
					dto.setUserName(userName);
				}

			}
			session.setAttribute("orcxtj", dto);
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
			List<Order> list = service.selectOrderAll(page, dto);
			for (Order order : list) {
				System.out.println(order.getPayMent());
			}
			// 数据
			session.setAttribute("xpxx", list);
			// 分页查询 -- end
			session.setAttribute("list", list);
			response.sendRedirect("admin/orderlist.jsp");

		} else if (type.equals("add")) {
			//
			System.out.println("----------增加订单");
			String zj = request.getParameter("zje");
			System.out.println("---------------" + zj);
			double zje = Integer.parseInt(zj);
			Order obj = new Order();
			obj.setAddress(request.getParameter("address"));
			obj.setOrderMsg(request.getParameter("orderMsg"));

			obj.setGoodsAmout(zje);
			int row = service.insertOrder(obj);
			if (row > 0) {
				CartService s = new CartServiceImpl();
				s.deleteCartByuserId("1");

				out
						.write("<script>alert('订单生成成功!');location.href='qt_GoodsServlet';</script>");
			} else {
				out
						.write("<script>alert('订单生成失败，请重试!');location.href='add.jsp';</script>");
			}
		} else if (type.equals("qtdd")) {
			List<Order> list = service.selectOrderByuserId("1");
			session.setAttribute("qtdd", list);
			response.sendRedirect("order.jsp");
			

		}
	}
}
