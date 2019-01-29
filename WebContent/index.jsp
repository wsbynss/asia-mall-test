<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">a {text-decoration: none}</style>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/mouseClick.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>welcome asia-paint</title>
</head>
<body style="text-align:center;">
	<br><br><br><br>
	<img alt="loading" src="image/timg4.gif" style="heigth:20%;width:20%;">
	<%
	session.setAttribute("msg", "");
	Cookie[] cookies = request.getCookies();

	String user = "";
	String password = "";
	/* 
	if(cookies != null) {
		for(int i=0;i<cookies.length;i++) {
			if(cookies[i].getName().equals("ybinCookies")) {
				user = URLDecoder.decode(cookies[i].getValue().split("#")[0]);
				password = cookies[i].getValue().split("#")[1];
			}
		}
	} */
	if("".equals(user)&&"".equals(password)) {
		response.setHeader("refresh","1;URL=login.jsp");
	}else {
		/* String url = "1;URL=checkUser.jsp?user="+user+"&password="+password;
		response.setHeader("refresh",url); */
		response.setHeader("refresh","1;URL=checkUser.jsp"); 	
	}
%>
</body>
</html>