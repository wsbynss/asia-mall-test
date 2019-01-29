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
<title>修改个人资料</title>

</head>
<body style="background-image:url('image/bg_bank.png');
	background-repeat:repeat-x; ">
	<%@ include file="header.jsp" %>
	
	<div style="text-align:center; margin-left:30%; margin-right:30%; border:solid white 1px; ">
	<br>修改个人资料<br><br>
		<%
		String account = (String)session.getAttribute("user");
		UserAction action = new UserAction();
		User user = action.getUserInfo(account);
		%>
		<div style="text-align:left; margin-left:25%;">
		<form action="changeInfoCheck.jsp" method="post">
			账&emsp;&emsp;号:&emsp;<input type="text" name="account" value="<%=user.getAccount() %>"  readonly="readonly"
			style="width:50%;height:30px;border-radius: 8px;background-image: url('image/bg_bank.png');border:solid white 1px;">
			<br><br>
			姓&emsp;&emsp;名:&emsp;<input type="text" name="name" placeholder="请输入姓名" 
			style="width:50%;height:30px;border-radius: 8px;background-image: url('image/bg_bank.png');border:solid white 1px;">
			<br><br>
			联系方式:&emsp;<input type="text" name="telephone" placeholder="请输入联系电话" 
			style="width:50%;height:30px;border-radius: 8px;background-image: url('image/bg_bank.png');border:solid white 1px;">
			<br><br>
			个性签名:&emsp;<input type="text" name="remark" placeholder="请输入签名" 
			style="width:50%;height:30px;border-radius: 8px;background-image: url('image/bg_bank.png');border:solid white 1px;">
			<br><br>
			籍&emsp;&emsp;贯:&emsp;<input type="text" name="nativeplace" placeholder="请输入籍贯" 
			style="width:50%;height:30px;border-radius: 8px;background-image: url('image/bg_bank.png');border:solid white 1px;">
			<br><br>
			联系地址:&emsp;<input type="text" name="address" placeholder="请输入地址" 
			style="width:50%;height:30px;border-radius: 8px;background-image: url('image/bg_bank.png');border:solid white 1px;">
			<br><br>
			性&emsp;&emsp;别:&emsp;&emsp;&emsp;&emsp;
			<input type="radio" name="gender" value="男">男&emsp;&emsp;&emsp;&emsp;
			<input type="radio" name="gender" value="女">女&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
			<br><br>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
			<input type="reset" value="重置" style="width:10%;height:30px;border-radius: 6px;
				background-color:#00FFFF;border:solid 1px #00BFFF;margin-left:1 0%;">&emsp;&emsp;
			<input type="submit" value="提交" style="width:10%;height:30px;border-radius: 6px;
				background-color:#00FFFF;border:solid 1px #00BFFF;">
		</form>
		<div style="text-align:right;margin-right:23%;">
			<br><br>
			<a href="myPage.jsp">取消</a>
		</div><br><br><br><br><br><br>
	</div>
	
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>