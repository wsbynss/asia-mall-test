<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
	a {
		width:100%;
		height: 10%;
		text-decoration: none;
		font-family: "隶书";
		font-size: 120%; 
	}
	a:LINK {
		color: black;
	}
	a:HOVER {
		text-decoration: none;
		color: white;
		/* background-image: url('image/timg3.gif'); */
		font-size: 130%;
		font-family: "隶书";
	}
	a:ACTIVE {
		color: purple;
	}
	a:AFTER {
		color: black;
	}
</style>
<script type="text/javascript" src="js/navigatorEvents.js"></script>
<div style="text-align:center; width:10%; height:60%; position: fixed; margin-left:5%; border:solid 1px;
	background-image:url('image/bg_bank.png');">
	<hr>
	<a onclick=mainPage()    >首页</a><br><hr>
	<a href="FindOrderServlet">订单管理</a><br><hr>
	<a onclick=userManage()  >用户管理</a><br><hr>
	<a onclick=myOA()	     >我的OA</a><br><hr>
	<a onclick=mylocation()  >我的位置</a><br><hr>
	<a onclick=uploadFile()  >上传资源</a><br><hr>
	<a onclick=""            >文件下载</a><br><hr>
	<a onclick=resFind()     >资源检索</a><br><hr>
	<a onclick=myCollection()>我的收藏</a><br><hr>
	<a onclick=myWork()      >工作日志</a><br><hr>
	<a onclick=myNote()      >我的笔记</a><br><hr>
	<a onclick=cloudMusic()  >我的音乐</a><br><hr>
	<a onclick=""            >我的资源</a>
	<br><hr>

</div>
