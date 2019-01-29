package com.ybin.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.catalina.core.ApplicationPart;

/**
 * Servlet implementation class UploadServlet
 */
@WebServlet("/UploadServlet")
@MultipartConfig(location="d:/temp")
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String path = this.getServletContext().getRealPath("/");		//获取服务器地址
		Part p = request.getPart("file");								//获取用户上传的文件
		if(p.getContentType().contains("image")) {						//仅处理上传的图片文件
			ApplicationPart ap = (ApplicationPart)p;
			@SuppressWarnings("deprecation")
			String fname1 = ap.getFilename();							//获取上传的文件名
			int path_idx = fname1.lastIndexOf("\\") + 1;				//对上传的文件名进行截取
			String fname2 = fname1.substring(path_idx,fname1.length());
			p.write(path+"/upload"+fname2);								//写入web项目根路径下的文件夹中
			out.write("文件上传成功!");
		} else {
			out.write("请选择要上传的图片...");
		}
		doGet(request, response);
	}

}
