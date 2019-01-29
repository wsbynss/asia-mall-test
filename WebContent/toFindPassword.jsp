<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="com.ybin.service.*" %>
<%@ page import="com.ybin.dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">a {text-decoration: none}</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码</title>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/mouseClick.js"></script>
<script type="text/javascript" src="js/jquery.lgymove.js"></script>
<link rel="stylesheet" href="css/lgymove.css" type="text/css">
</head>
<body style="text-align:center;
	margin-left:30%;margin-right:30%;
	background-image:url('image/bg_bank.png');
	background-repeat:repeat-x; ">
	<br>
	<img alt="亚士创能" src="image/logo.png" style="heigth:20%;width:70%;">
	<br><hr><br>
	<div id="imgscode"></div>
	<script>
	$("#imgscode").imgcode();
	</script>
	<%
	String account = URLDecoder.decode(request.getParameter("account"),"utf-8");
	String password1 = URLDecoder.decode(request.getParameter("password1"),"utf-8");
	String password2 = URLDecoder.decode(request.getParameter("password2"),"utf-8");
	UserAction action = new UserAction();
	if(account=="") {
		session.setAttribute("msg", "用户名不能为空!");
		response.setHeader("refresh", "0;URL=findPassword.jsp");
	} else if(password1=="") {
		session.setAttribute("msg", "新密码不能为空!");
		response.setHeader("refresh", "0;URL=findPassword.jsp");
	} else if(password1.equals(password2)) {
		action.changePassword(account, password1);
		session.setAttribute("msg", "密码修改成功!");
		response.setHeader("refresh", "1;URL=login.jsp");
	} else {
		session.setAttribute("msg", "两次密码输入不一致!");
		response.setHeader("refresh", "0;URL=findPassword.jsp");
	}
	%>
	
	<%@ include file="footer.jsp" %>
</body>
</html>