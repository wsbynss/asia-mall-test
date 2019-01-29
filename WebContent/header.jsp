<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div style="text-align:center;">
	<br>
	<img alt="亚士创能" src="image/logo.png" style="heigth:10%;width:40%;" onclick=mainFun()>
	<br>
	
	<div class="navigate" style="text-align:right;">
		<a href="main.jsp">首页</a>•
		<a href="myPage.jsp">我的主页</a>•
		<a href="changePassword.jsp">修改密码</a>•
		<a href="index.jsp">退出</a>
	</div>
	<hr>

	<p>一家公司,改变一个行业...</p>

</div>
<script>
	function mainFun() {
		// alert("跳转到图书列表");
	    //在原有窗口打开
	    window.location.href = "main.jsp";
	    //打开新的窗口
	    //window.open("http://www.baidu.com");
	}
</script>