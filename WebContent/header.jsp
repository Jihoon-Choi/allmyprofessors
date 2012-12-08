<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="euc-kr"%>
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

   %>
   <input type="button" name="input" value="·Î±×¾Æ¿ô" onClick="javascript:window.location.href('logoutConfirm.jsp')"/>
   <%
  }else{
   %>
   <%
  }
 %>
				<input type="button" value="Sign-up" style="width:100px" >
			</div>
			
			<div id="header_left">
				<a href="./index.jsp"><img src="./img/logo.png" width="170px" height="90px"></a>
			</div>					
				
			<div id="header_search">
				<FORM ACTION="./amp/professor.jsp" METHOD="GET">
				<input type="text">
				<input type="button" value="Search">
				</FORM>			
			</div>

</body>
</html>