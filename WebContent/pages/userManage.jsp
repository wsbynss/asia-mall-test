<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="com.ybin.dao.*" %>
<%@ page import="com.ybin.service.*" %>
<%@ page import="com.ybin.bean.*" %>
<%@ page import="java.util.*" %>
<style>
	a {
		width:100%;
		height: 10%;
		text-decoration: none;
		/* font-size: 60%; */
	}
	a:LINK {
		color: black;
	}
	a:HOVER {
		text-decoration: none;
		color: red;
	}
	a:ACTIVE {
		color: black;
	}
	a:AFTER {
		color: black;
	}
</style>
<div>
<div style="">

	<table align="left" width="95%" height="50%" border="1">
		<tr>
			<td align="center" colspan="11">
				<h2>所有用户信息</h2>
			</td>
		</tr>
		<tr align="center">
			<td><b>选择</b></td>
			<td><b>账号</b></td>
			<td><b>姓名</b></td>	
			<td><b>性别</b></td>
			<td><b>手机</b></td>
			<td><b>签名</b></td>
			<td><b>籍贯</b></td>
			<td><b>地址</b></td>
			<td><b>类别</b></td>
			<td><b>管理</b></td>
			<td><b>删除</b></td>
		</tr>
		<%
		//获取用户信息集合
		UserAction action = new UserAction();
		List<User> list = action.getUserList();
		if(list==null||list.size()<1) {
			out.print("没有用户...");
		} else {
			for(User user : list) {
		%>
				<tr align="center">
					<td><input type="checkbox" name="sel"></td>
					<td><%=user.getAccount() %></td>
					<td><%=user.getName() %></td>
					<td><%=user.getGender() %></td>
					<td><%=user.getTelephone() %></td>
					<td><%=user.getRemark() %></td>
					<td><%=user.getNativeplace() %></td>
					<td><%=user.getAddress() %></td>
					<td><%=user.getUsertype() %></td>
					<td><a href="changeUserServlet" style="color:blue;">修改</a></td>
					<td><a href="../DeleteUserServlet?account=<%=user.getAccount() %>" style="color:red;">删除</a></td>
				</tr>
		<%
			}
		}
		%>
	</table>
</div>
	<div>
		
	</div>
</div>
