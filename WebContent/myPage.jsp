<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="com.ybin.service.*" %>
<%@ page import="com.ybin.dao.*" %>
<%@ page import="com.ybin.bean.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style type="text/css">a {text-decoration: none}</style>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/mouseClick.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的主页</title>
</head>
<body style="background-image:url('image/bg_bank.png');
	background-repeat:repeat-x; ">
	<%@ include file="header.jsp" %>
	
	<div style="text-align:center; margin-left:30%; margin-right:30%; border:solid white 1px; ">
	<br>我的主页<br><br>
		<%
		String account = (String)session.getAttribute("user");
		UserAction action = new UserAction();
		User user = action.getUserInfo(account);
		%>
		<div style="text-align:left; margin-left:20%; margin-right:20%;">
		<br>
		账&emsp;&emsp;号:&emsp;<%=user.getAccount() %><br><br>
		姓&emsp;&emsp;名:&emsp;<%=user.getName() %><br><br>
		性&emsp;&emsp;别:&emsp;<%=user.getGender() %><br><br>
		联系方式:&emsp;<%=user.getTelephone() %><br><br>
		签&emsp;&emsp;名:&emsp;<%=user.getRemark() %><br><br>
		籍&emsp;&emsp;贯:&emsp;<%=user.getNativeplace() %><br><br>
		联系地址:&emsp;<%=user.getAddress() %><br><br>
		权限类别:&emsp;<%=user.getUsertype() %><br><br>
		</div>
	<br><a href="changeInformation.jsp">修改个人资料</a><br><br><br><br><br>
	
	
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>