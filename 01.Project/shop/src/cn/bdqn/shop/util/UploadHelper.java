package cn.bdqn.shop.util;

import java.io.File;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class UploadHelper {
	
	/**
	 * 处理文件上传
	 * @param request
	 * @return  key: jsp页面中控件的名字      value: jsp页面中控件的value属性值
	 */
	public HashMap<String, String> upload(HttpServletRequest request) {
		HashMap<String, String> map = new HashMap<String, String>();
		try {
			// 得到上传文件夹upload在服务器上的真实路径
			String uploadFilePath = request.getSession().getServletContext()
					.getRealPath("/upload");
			// 验证表单是否设置enctype="multipart/form-data"
			boolean isMultipart = ServletFileUpload.isMultipartContent(request);
			if (isMultipart == true) {
				DiskFileItemFactory factory = new DiskFileItemFactory();
				// 设置缓冲区大小4kb
				factory.setSizeThreshold(4096);
				// 创建临时文件目录路径
				File tempPatchFile = new File(uploadFilePath);
				// 设置上传文件用到临时文件存放路径
				factory.setRepository(tempPatchFile);
				ServletFileUpload upload = new ServletFileUpload(factory);
				List<FileItem> items = upload.parseRequest(request);
				for (FileItem item : items) {
					if (item.isFormField()) {
						// 如果是普通文本 直接处理
						map.put(item.getFieldName(), item.getString("utf-8"));
					} else {
						// 如果是文件则上传
						String fileName = item.getName();// 得到上传文件的文件名称
						// 此处给文件起一个不重复的新名字
						String newName = CommonHelper.getStringName()
								+ fileName.substring(fileName.lastIndexOf("."));
						if (fileName != null && !fileName.equals("")) {
							File saveFile = new File(uploadFilePath, newName);
							item.write(saveFile);
						}
						map.put(item.getFieldName(), newName);
					}
				}
			}
		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return map;
	}
}
