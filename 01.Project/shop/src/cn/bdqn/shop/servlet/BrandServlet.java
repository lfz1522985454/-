package cn.bdqn.shop.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.interfaces.RSAKey;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.bdqn.shop.dto.BrandDTO;
import cn.bdqn.shop.entity.Brand;
import cn.bdqn.shop.service.BrandService;
import cn.bdqn.shop.service.impl.BrandServiceImpl;
import cn.bdqn.shop.util.Page;
import cn.bdqn.shop.util.UploadHelper;

public class BrandServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
System.out.println("进入品牌");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String type = request.getParameter("type");
		BrandService service =new BrandServiceImpl();
		if(type==null){
			
			BrandDTO dto =new BrandDTO();
			dto.setBrandName(request.getParameter("brandName"));
			dto.setIsShow(request.getParameter("isShow"));
			
			
			List<Brand> list=service.selectBrandByPage(null, dto);
			for (Brand brand : list) {
				
				System.out.println(brand.getBrandName());
			}
			session.setAttribute("list", list);
			response.sendRedirect("admin/brandlist.jsp");
			
		}else if(type.equals("add")){
			//增加
			System.out.println("进入增加");
			UploadHelper helper = new UploadHelper();
			Map<String, String> map = helper.upload(request);
			System.out.println(map.get("brandName"));
			System.out.println(map.get("brandLogo"));
			System.out.println(map.get("url"));
			System.out.println(map.get("isShow"));
			Brand brand =new Brand();
			brand.setBrandLogo(map.get("brandLogo"));
			brand.setBrandName(map.get("brandName"));
			
			brand.setIsShow(Integer.parseInt(map.get("isShow")));
			brand.setUrl(map.get("url"));
			int row=service.insertBrand(brand);
			if (row > 0) {

				out.write("<script>alert('添加成功');location.href='BrandServlet';</script>");
			} else {
				out.write("<script>alert('添加失败，请重试!');location.href='admin/brandadd.jsp';</script>");
			}
		
			
		}
		
	}

}
