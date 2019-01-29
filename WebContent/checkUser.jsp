<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="com.ybin.dao.*" %>
<%@ page import="com.ybin.service.*" %>
<%@ page import="com.ybin.bean.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/mouseClick.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>准备登录</title>
</head>
<body style="text-align:center;background-image:url('image/bg_bank.png');
	background-repeat:repeat-x;">
	
	<%
	//获取到登录表单里的用户名,密码
	request.setCharacterEncoding("utf-8");
	String user = URLDecoder.decode(request.getParameter("user"),"utf-8");
	String password = URLDecoder.decode(request.getParameter("password"),"utf-8");

	/* Cookie cookie = new Cookie("ybinCookies",user+"#"+password);
	cookie.setMaxAge(1);
	response.addCookie(cookie);*/
	session.setAttribute("user", user);

	
	if(user.equals("")||password.equals("")) {
		session.setAttribute("msg", "用户名或密码不能为空");
		response.setHeader("refresh", "1;URL=login.jsp"); 
	}else {
		
		UserAction action = new UserAction();	//2
		//UserDao userDao = new UserDao();
		//String dbPsd = userDao.findPsswordByAccount(user);
		//if(dbPsd.equals(password)) {
		if(action.login(user, password)) {
			User usr = action.getUserInfo(user);
			session.setAttribute("usertype", usr.getUsertype());
			String url = "1;URL=main.jsp?user="+user;
			response.setHeader("refresh", url); 
		} else {
			session.setAttribute("msg", "用户名或密码错误");
			response.setHeader("refresh", "1;URL=login.jsp"); 
		}
		
	}
	%>
	
</body>
</html>