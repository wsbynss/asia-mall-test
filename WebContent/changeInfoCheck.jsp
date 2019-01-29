<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="com.ybin.service.*" %>
<%@ page import="com.ybin.dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改个人资料</title>
</head>
<body>
	
	<%
	String account = request.getParameter("account");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String telephone = request.getParameter("telephone");
	String remark = request.getParameter("remark");
	String nativeplace = request.getParameter("nativeplace");
	String address = request.getParameter("address");
	if(name==""||gender==""||telephone==""||remark==""||nativeplace==""||address=="") {
	%>	
		<script>
		var r=confirm("信息不完善!");
		</script>
	<%
		UserAction action = new UserAction();
		action.changeInformation(account, name, gender, telephone, remark, nativeplace, address);
		response.sendRedirect("myPage.jsp");	
	} else {
		UserAction action = new UserAction();
		action.changeInformation(account, name, gender, telephone, remark, nativeplace, address);
		response.sendRedirect("myPage.jsp");	
	}%>
</body>
</html>