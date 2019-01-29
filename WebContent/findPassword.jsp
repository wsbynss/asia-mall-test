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
	<div style="text-align:left;padding-left:10%;">
		<p>找回密码:</p>
		<div style="text-align:center; color:red;">
		<%
		String msg = (String)session.getAttribute("msg");
		if(msg.equals("")) {
			out.print("");
		} else {
			out.print(msg);
		}
		%>
		</div>
	</div>
	<div>
		<form action="toFindPassword.jsp" method="post">
			您的账号:<input type="text" name="account" placeholder="账号" style="width:50%;height:30px;border-radius: 8px;">
			<br><br>
			
			
			
			
			输入密码:<input type="password" name="password1" placeholder="请输入密码" style="width:50%;height:30px;border-radius: 8px;">
			<br><br>
			确认密码:<input type="password" name="password2" placeholder="请再次输入密码" style="width:50%;height:30px;border-radius: 8px;">
			<br><br>
			<input type="reset" value="重置" style="width:10%;height:30px;border-radius: 6px;
				background-color:#00FFFF;border:solid 1px #00BFFF;margin-left:1 0%;">&emsp;&emsp;
			<input type="submit" value="提交" style="width:10%;height:30px;border-radius: 6px;
				background-color:#00FFFF;border:solid 1px #00BFFF;">
		</form>
		<div style="text-align:right;">
			<a href="index.jsp">返回登录</a>
		</div>
		
	</div>
	

	
	<%@ include file="footer.jsp" %>
</body>
</html>