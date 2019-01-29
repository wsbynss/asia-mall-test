<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<div style="text-align:left; margin-left:25%;">
	
	<form action="../UploadServlet" enctype="multipart/form-data" method="post">
		<br><br>
		选择文件:&emsp;
		<input type="file" name="file" style="width:35%;border-radius: 8px;border:solid black 1px;">
		<!-- 
		性别:
		<input type="radio" name="gender" value="男">男;
		<input type="radio" name="gender" value="女">女
		 -->
		<input type="submit" value="上传" style="width:10%;height:30px;border-radius: 6px;
			background-color:#00FFFF;border:solid 1px #00BFFF;">
	</form>
</div>