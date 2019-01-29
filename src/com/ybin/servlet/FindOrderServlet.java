package com.ybin.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ybin.bean.Order;
import com.ybin.dao.OrderDao;

/**
 * Servlet implementation class FindOrderServlet
 */
@WebServlet("/FindOrderServlet")
public class FindOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindOrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int currPage = 1;
		if(request.getParameter("page")!=null) {
			currPage = Integer.parseInt(request.getParameter("page"));
		}
		OrderDao dao = new OrderDao();
		List<Order> list = dao.find(currPage);
		request.setAttribute("list", list);
		int pages;
		int count = dao.findCount();
		if(count%Order.PAGE_SIZE==0) {
			pages = count/Order.PAGE_SIZE;
		} else {
			pages = count/Order.PAGE_SIZE + 1;
		}
		StringBuffer sb = new StringBuffer();
		for(int i=1; i<=pages; i++) {
			if(i==currPage) {
				sb.append("["+i+"]");
			} else {
				sb.append("<a href='FindOrderServlet?page="+i+"'>"+i+"</a>");
			}
			sb.append("   ");
		}
		request.setAttribute("bar", sb.toString());
		request.getRequestDispatcher("orderList.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
