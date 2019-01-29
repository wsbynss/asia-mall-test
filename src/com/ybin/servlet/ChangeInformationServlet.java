package com.ybin.servlet;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ybin.service.UserAction;

/**
 * Servlet implementation class ChangeInformationServlet
 */
@WebServlet("/ChangeInformationServlet")
public class ChangeInformationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangeInformationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String account = request.getParameter("account");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String telephone = request.getParameter("telephone");
		String remark = request.getParameter("remark");
		String nativeplace = request.getParameter("nativeplace");
		String address = request.getParameter("address");
		UserAction action = new UserAction();
		action.changeInformation(account, name, gender, telephone, remark, nativeplace, address);
		response.sendRedirect("myPage.jsp");		
				
				
				
		doGet(request, response);
	}

}
