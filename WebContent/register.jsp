<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">a {text-decoration: none}</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册账号</title>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/mouseClick.js"></script>
</head>
<body style="text-align:center;
	margin-left:30%;margin-right:30%;
	background-image:url('image/bg_bank.png');
	background-repeat:repeat-x; ">
	<br>
	<img alt="亚士创能" src="image/logo.png" style="heigth:20%;width:70%;">
	<br><hr><br>
	
	<div style="text-align:left;padding-left:10%;">
		<p>账号注册:</p>
		<div style="color: red; text-align:center;">
			<% 
			String regMsg = (String)session.getAttribute("regMsg"); 
			out.print(regMsg);
			session.setAttribute("regMsg", "");
			%>
		</div>
	</div>
	<div>
		<form action="registerCheck.jsp" method="post">
			您的账号:<input type="text" name="account" placeholder="请输入账号" style="width:50%;height:30px;border-radius: 8px;">
			<br><br>
			您的姓名:<input type="text" name="name" placeholder="请输入姓名" style="width:50%;height:30px;border-radius: 8px;">
			<br><br>
			输入密码:<input type="password" name="password1" placeholder="请输入密码" style="width:50%;height:30px;border-radius: 8px;">
			<br><br>
			确认密码:<input type="password" name="password2" placeholder="请再次输入密码" style="width:50%;height:30px;border-radius: 8px;">
			<br><br>
			性&emsp;&emsp;别:&emsp;&emsp;&emsp;&emsp;&emsp;
			<input type="radio" name="gender" value="男">男&emsp;&emsp;&emsp;&emsp;
			<input type="radio" name="gender" value="女">女&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
			<br><br>
			手&emsp;&emsp;机:<input type="text" name="telephone" placeholder="请输入手机号码" style="width:50%;height:30px;border-radius: 8px;">
			<br><br>
			签&emsp;&emsp;名:<input type="text" name="remark" placeholder="请输入签名" style="width:50%;height:30px;border-radius: 8px;">
			<br><br>
			籍&emsp;&emsp;贯:<input type="text" name="nativeplace" placeholder="请输入籍贯" style="width:50%;height:30px;border-radius: 8px;">
			<br><br>
			联系地址:<input type="text" name="address" placeholder="请输入联系地址" style="width:50%;height:30px;border-radius: 8px;">
			<br><br>
			用户类型:<input type="text" name="usertype" value="user" readonly="readonly" style="width:50%;height:30px;border-radius: 8px;">
			<br><br>
			<input type="reset" value="重置" style="width:10%;height:30px;border-radius: 6px;
				background-color:#00FFFF;border:solid 1px #00BFFF;margin-left:1 0%;">&emsp;&emsp;
			<input type="submit" value="提交" style="width:10%;height:30px;border-radius: 6px;
				background-color:#00FFFF;border:solid 1px #00BFFF;">
		</form>
		<div style="text-align:right;margin-right:23%;">
			<a href="index.jsp">返回登录</a>
		</div>
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>