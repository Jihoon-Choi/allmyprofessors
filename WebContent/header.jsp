<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>All My Professors</title>
	<link href="./css/style.css" rel="stylesheet" type="text/css">	
	<script type="text/JavaScript" src="./jquery-1.8.2.min.js"></script>
</head>

<body>

			<div id="header_top">			
					<%
					  session = request.getSession(true);
					  if( session.getAttribute("email") != null && ((String)session.getAttribute("email")).equals("true"))
					  {
					   // out.print("로그인 상태입니다. ");
					   %>
					   <input type="button" name="input" value="로그아웃" onClick="javascript:window.location.href('logoutConfirm.jsp')"/>
					   <%
					  }else{
					   %>
					   <%
					  }
					 %>
				<a href="./signup_prof.jsp"></a><input type="button" value="Sign-up" style="width:100px" ></a>
			</div>
			
			<div id="header_left">
				<a href="./index.jsp"><img src="./img/logo.png" width="170px" height="90px"></a>
			</div>					
				
			<div id="header_search">
				<FORM ACTION="./professor.jsp" METHOD="GET">
					<input type="text">
					<input type="button" value="Search" name="keyword">
				</FORM>			
			</div>

</body>
</html>