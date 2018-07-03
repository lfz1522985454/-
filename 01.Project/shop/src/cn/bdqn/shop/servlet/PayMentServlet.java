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

import cn.bdqn.shop.entity.PayMent;
import cn.bdqn.shop.service.PayMentService;
import cn.bdqn.shop.service.impl.PayMentServiceImpl;
import cn.bdqn.shop.util.UploadHelper;

public class PayMentServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("--------------------进入支付方式");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String type = request.getParameter("type");
		PayMentService service = new PayMentServiceImpl();
		if (type == null) {

			List<PayMent> list = service.selectPayMentAll();
			session.setAttribute("list", list);
			for (PayMent payMent : list) {
				System.out.println(payMent.getPayName());
				System.out.println(payMent.getImg());

			}
			response.sendRedirect("admin/zhifulist.jsp");
		} else if (type.equals("add")) {
			// 增加
			UploadHelper helper = new UploadHelper();
			Map<String, String> map = helper.upload(request);
			// System.out.println(request.getParameter("payName"));
			System.out.println(map.get("payName"));
			System.out.println(map.get("img"));
			System.out.println(map.get("desctiption"));
			System.out.println(map.get("enabled"));
			PayMent p = new PayMent();
			p.setDesctiption(map.get("desctiption"));
			p.setEnabled(Integer.parseInt(map.get("enabled")));
			p.setImg(map.get("img"));
			p.setPayName(map.get("payName"));
			int row = service.insertPayMent(p);
			if (row > 0) {

				out.write("<script>alert('添加成功');location.href='PayMentServlet';</script>");
			} else {
				out.write("<script>alert('添加失败，请重试!');location.href='admin/zhifuadd.jsp';</script>");
			}
			

		}
	}

}
