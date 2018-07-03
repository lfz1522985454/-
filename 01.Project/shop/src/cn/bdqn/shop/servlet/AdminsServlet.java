package cn.bdqn.shop.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.bdqn.shop.entity.Admins;
import cn.bdqn.shop.service.AdminsService;
import cn.bdqn.shop.service.impl.AdminsServiceImpl;

public class AdminsServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		AdminsService service = new AdminsServiceImpl();
		String type =request.getParameter("type");
	String adminName=	request.getParameter("adminName");
		if(type.equals("zc")){
			//注册
			System.out.println("-------------------进入注册页面");	
			Admins  admins  = new Admins();
			admins.setAdminName(request.getParameter("adminName"));
			admins.setEmail(request.getParameter("email"));
			admins.setPassWord(request.getParameter("Password"));
			session.setAttribute("admin", admins);
			int count=service.selectAdminsByName(adminName);
			if(count>0){
				//用户名存在
				out.write("<script>alert('用户名已经存在!请重试!');location.href='admin/login.jsp';</script>");	
				
			}else{
				int row=	service.insertAdmins(admins);
	
				if (row > 0) {
			
					out.write("<script>alert('注册成功');location.href='admin/index.jsp';</script>");
			
				} else {
					out.write("<script>alert('注册失败');location.href='admin/login.jsp';</script>");
				}
			}
}else if(type.equals("log")){
	//登录
	Admins  admins  = new Admins();
	admins.setAdminName(request.getParameter("adminName"));
	
	session.setAttribute("admin", admins);
	String name=request.getParameter("adminName");
	
	String pwd=request.getParameter("Password");
	int row=service.selectAdminsByNameByPwd(name, pwd);

	if (row > 0) {

		out.write("<script>location.href='admin/index.jsp';</script>");

	} else {
		out.write("<script>alert('登录失败!');location.href='admin/login.jsp';</script>");
	}
	
}
		
	}

}
