package cn.bdqn.shop.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.bdqn.shop.entity.Shipping;
import cn.bdqn.shop.service.ShippingService;
import cn.bdqn.shop.service.impl.ShippingServiceImpl;
import cn.bdqn.shop.util.UploadHelper;

public class ShippingServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("--------------------进入配送方式");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String type = request.getParameter("type");
		ShippingService service = new ShippingServiceImpl();
		if (type == null) {
			// 查询

			List<Shipping> list = service.selectShippingAll();
			session.setAttribute("list", list);
			for (Shipping shipping : list) {
				System.out.println(shipping.getShippingName());
			}
			response.sendRedirect("admin/peisonglist.jsp");
		} else if (type.equals("add")) {
			// 增加
			UploadHelper helper = new UploadHelper();
			Map<String, String> map = helper.upload(request);
			System.out.println("---图片"+map.get("img"));
			Shipping s = new Shipping();
			s.setDescription(map.get("description"));
			s.setEnabled(Integer.parseInt(map.get("enabled")));
			s.setImg(map.get("img"));
			s.setShippingName(map.get("shippingName"));
			int row = service.insertShipping(s);
			if (row > 0) {

				out.write("<script>alert('添加成功');location.href='ShippingServlet';</script>");
			} else {
				out.write("<script>alert('添加失败，请重试!');location.href='admin/peisongadd.jsp';</script>");
			}
			System.out.println("--------------" + row);
		}
	}

}
