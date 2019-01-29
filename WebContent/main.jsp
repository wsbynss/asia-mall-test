<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">a {text-decoration: none}</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>asia-paint</title>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/mouseClick.js"></script>

</head>
<body style="background-image:url('image/bg_bank.png');
	background-repeat:repeat-x; ">
	<%@ include file="header.jsp" %>
	<%@ include file="navigator.jsp" %>
	
	<div style="text-align:center; margin-left:20%; margin-right:5%; ">
		welcome <%=session.getAttribute("user") %>!
		<%
		String usertype = (String)session.getAttribute("usertype");
		
		%>
		<div id="main">
			<div id="mainfield" style="margin-top: 0px; overflow: hidden; border: 0; padding: 0px; margin: 0px;height:100%;">
				<iframe id="myframe" style="left: 0px; top: 0px; position: relative;" 
					name="myframe" src="http://www.cuanon.com/"  frameborder="0"  scrolling="yes"  width="100%" height="1000px">
				</iframe>
			</div>
		</div>
	</div>
	
	
	<%@ include file="footer.jsp" %>

</body>
</html>