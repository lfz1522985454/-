package cn.bdqn.shop.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.text.Caret;

import cn.bdqn.shop.dto.UsersDTO;
import cn.bdqn.shop.entity.Cart;
import cn.bdqn.shop.entity.Users;
import cn.bdqn.shop.service.CartService;
import cn.bdqn.shop.service.UsersService;
import cn.bdqn.shop.service.impl.CartServiceImpl;
import cn.bdqn.shop.service.impl.UsersServiceImpl;
import cn.bdqn.shop.util.Page;

public class UsersServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("--------------------进入huiyuan");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String type = request.getParameter("type");
		UsersService service = new UsersServiceImpl();

		if (type == null) {
			UsersDTO dto = new UsersDTO();

			// 分页查询 -- begin
			int count = service.selectUsersCount(dto);
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
			List<Users> list = service.selectUsersAll(page, dto);
			for (Users users : list) {
				System.out.println(users.getUserName());
			}

			// 数据
			session.setAttribute("xpxx", list);
			// 分页查询 -- end

			response.sendRedirect("admin/UsersList.jsp");

		} else if (type.equals("upd")) {

			// // 修改个人信息
			// System.out.println("---------------------进入填写地址");
			// String email = request.getParameter("email");
			// String address = request.getParameter("address");
			// String phone = request.getParameter("phone");
			// Users u = new Users();
			// u.setAddress(address);
			// u.setPhone(phone);
			// u.setEmail(email);
			// int row = service.updateusers(u);
			// 查询

			// 增加订单信息
			// 删除购物车

		}

	}

}
