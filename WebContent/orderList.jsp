<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.ybin.bean.Order" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">a {text-decoration: none}</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单管理</title>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/mouseClick.js"></script>

</head>
<body style="background-image:url('image/bg_bank.png');
	background-repeat:repeat-x; ">
	<%@ include file="header.jsp" %>
	<%@ include file="navigator.jsp" %>
	
	<div style="margin-left:13%;">
		<table align="center" width="80%" border="1">
			<tr>
				<td align="center" colspan="8"><h2>所有订单信息</h2></td>
			</tr>
			<tr align="center">
				<td><b>订单编号</b></td>
				<td><b>订单类型</b></td>
				<td><b>所属大区</b></td>
				<td><b>所属办事处</b></td>
				<td><b>一级部门</b></td>
				<td><b>二级部门</b></td>
				<td><b>项目编号</b></td>
				<td><b>项目名称</b></td>				
			</tr>
			<%
			List<Order> list = (List<Order>)request.getAttribute("list");
			for(Order order:list) {
			%>
			<tr align="center">
				<td><%=order.getVbeln() %></td>
				<td><%=order.getAuatt() %></td>
				<td><%=order.getVkbut() %></td>
				<td><%=order.getVkgrt() %></td>
				<td><%=order.getVtext() %></td>
				<td><%=order.getZebut() %></td>
				<td><%=order.getZxnum() %></td>
				<td><%=order.getZxnam() %></td>
			</tr>
			<%
			} 
			%>
			<tr><td align="center" colspan="8">.</td></tr>
			<tr><td align="center" colspan="8">.</td></tr>
			<tr align="center" >
				<td align="center" colspan="8">
					<%=request.getAttribute("bar") %>
				</td>
			</tr>
		</table>
	</div>
	<%@ include file="footer.jsp" %>

</body>
</html>