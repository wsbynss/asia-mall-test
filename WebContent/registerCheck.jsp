<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="com.ybin.service.*" %>
<%@ page import="com.ybin.dao.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/mouseClick.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>正在注册</title>
</head>
<body style="text-align:center;background-image:url('image/bg_bank.png');
	background-repeat:repeat-x;">
	
	<%
	//获取到登录表单里的用户名,密码
	request.setCharacterEncoding("utf-8");
	String account = URLDecoder.decode(request.getParameter("account"),"utf-8");
	String name = URLDecoder.decode(request.getParameter("name"),"utf-8");
	String password1 = URLDecoder.decode(request.getParameter("password1"),"utf-8");
	String password2 = URLDecoder.decode(request.getParameter("password2"),"utf-8");
	String gender = request.getParameter("gender");
	String telephone = URLDecoder.decode(request.getParameter("telephone"),"utf-8");
	String remark = URLDecoder.decode(request.getParameter("remark"),"utf-8");
	String nativeplace = URLDecoder.decode(request.getParameter("nativeplace"),"utf-8");
	String address = URLDecoder.decode(request.getParameter("address"),"utf-8");
	String usertype = URLDecoder.decode(request.getParameter("usertype"),"utf-8");
	
	out.println(account);
	out.println(password1);
	out.println(password2);
	
	String regMsg = "";
	
	//检查用户名是否存在
	UserAction action = new UserAction();
	boolean usefulAccount = action.accountCanUse(account);
	if(usefulAccount) {
		if(name.equals("")) {
			session.setAttribute("regMsg", "姓名不能为空");
			response.setHeader("refresh","0;URL=register.jsp");
		} else if(password1=="") {
			session.setAttribute("regMsg", "密码不能为空");
			response.setHeader("refresh","0;URL=register.jsp");
		} else if(password1.equals(password2)) {
			/* if(gender.equals(null)) {
				session.setAttribute("regMsg", "请选择您的性别");
				response.setHeader("refresh","0;URL=register.jsp");
			} else { */
			session.setAttribute("regMsg", "");
			session.setAttribute("msg", "注册成功!");
			//注册用户
			UserAction act = new UserAction();
			act.registerUser(account, name, password1, gender, telephone, remark, nativeplace, address, usertype);
			response.setHeader("refresh","0;login.jsp");
			
		} else {
			session.setAttribute("regMsg", "两次输入的密码不一致");
			response.setHeader("refresh","0;URL=register.jsp");
		}
	
	} else {
		session.setAttribute("regMsg", "用户名已存在");
		response.setHeader("refresh","0;URL=register.jsp");
	}
	
	
	/* 
	if(password1.equals(password2)) {
		session.setAttribute("msg", "用户名或密码不能为空");
		response.setHeader("refresh", "1;URL=login.jsp"); 
	}else {
		
		LoginCheck check = new LoginCheck();	//2
		//UserDao userDao = new UserDao();
		//String dbPsd = userDao.findPsswordByAccount(user);
		//if(dbPsd.equals(password)) {
		if(check.login(account, password1)) {
			String url = "1;URL=main.jsp?user="+account;
			response.setHeader("refresh", url); 
		} else {
			session.setAttribute("msg", "用户名或密码错误");
			response.setHeader("refresh", "1;URL=login.jsp"); 
		}
		
	} */
	%>
	
</body>
</html>