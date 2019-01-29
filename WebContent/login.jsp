<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">a {text-decoration: none}</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/mouseClick.js"></script>
<title>welcone asia-paint</title>
</head>
<body style="text-align:center;
	margin-left:30%;margin-right:30%;
	background-image:url('image/bg_bank.png');
	background-repeat:repeat-x; ">
	<br>
	<img alt="亚士创能" src="image/logo.png" style="heigth:20%;width:70%;">
	<br>
	<hr>
	<br>
	<p>一家公司,改变一个行业...</p>
	<div style="color: red;">
	<% 
	String msg = (String)session.getAttribute("msg");
	session.setAttribute("msg", "");
	session.setAttribute("regMsg", "");
	//System.out.println(msg);
	//System.out.println(msg.equals(""));
	if(msg.equals("")) {
		out.print("请登录...");
	} else {
		out.print(msg);
	}
	%>
	</div>
	<br>
	<br>
	<form action="checkUser.jsp" id="form_login" method="post">
		账&nbsp;&nbsp;号:<input type="text" name="user" 
		style="width:50%;height:30px;border-radius: 6px;"
		placeholder="请输入OA账号">
		<br><br>
		密&nbsp;&nbsp;码:<input type="password" name="password" 
			style="width:50%;height:30px;border-radius: 6px;" 
			placeholder="请输入您的密码">
		<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="submit" value="登&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;录"  
			style="width:50%;height:30px;
			border-radius: 6px;
			background-color:#00FFFF;
			border:solid 1px #00BFFF;">
	</form><br>
	<div style="text-align:right;padding-right:10%;">
	<a href="findPassword.jsp">忘记密码?</a>&emsp;<a href="register.jsp">立即注册</a>
	</div>
	
	
	<div id="footer" style="text-align:center;font-size: 5%;">
	<br><br><br><br><br><br>
	<%@ include file="footer.jsp" %>
	
	</div>

</body>
</html>