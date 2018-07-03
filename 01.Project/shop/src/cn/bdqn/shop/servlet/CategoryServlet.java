package cn.bdqn.shop.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.bdqn.shop.dto.CategoryDTO;
import cn.bdqn.shop.entity.Category;
import cn.bdqn.shop.service.CategoryService;
import cn.bdqn.shop.service.impl.CategoryServiceImpl;
import cn.bdqn.shop.util.Page;

public class CategoryServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("进入商品分类");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String type = request.getParameter("type");
		System.out.println(type);
		CategoryService service = new CategoryServiceImpl();
		if (type == null) {

			String catName = request.getParameter("catName");
			String isShow = request.getParameter("isShow");
			CategoryDTO dto = new CategoryDTO();
			dto.setCatName(catName);
			dto.setIsShow(isShow);
			// 分页查询 -- begin
			int count = service.selectCategoryCount(dto);
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

			List<Category> list = service.selectCategoryByPage(page, dto);
			for (Category category : list) {
				System.out.println(category.getCatName());
			}
			session.setAttribute("list", list);

			response.sendRedirect("admin/goodssort.jsp");
		} else if (type.equals("add")) {
			// 增加分类
			
			String catName = request.getParameter("catName");
			System.out.println(catName);
			String keywords = request.getParameter("keyWords");
			String description = request.getParameter("description");
			String isShow = request.getParameter("isShow");
			System.out.println(isShow);
			Category category = new Category();
			category.setCatName(catName);
			category.setDescription(description);
			category.setIsShow(Integer.parseInt(isShow));
			category.setKeywords(keywords);
			int row = service.insertCategory(category);
			
			if (row > 0) {

				out.write("<script>alert('添加成功!');location.href='CategoryServlet';</script>");

			} else {
				out.write("<script>alert('添加失败!');location.href='admin/goodsstockadd.jsp';</script>");
			}
			
			
			
		}

	}

}
