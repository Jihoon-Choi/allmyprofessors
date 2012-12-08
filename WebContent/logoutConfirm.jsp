<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
 <%@ page session="true" %>
 
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="utf-8">
	<title>LOGOUT 확인</title>
	<link href="./css/style.css" rel="stylesheet" type="text/css">		
</head>
 
<body>
 
  	<div id="siteWrap">		
		<div id="header"><jsp:include page="header.jsp" flush="false"/></div>		
		<div id="nav"><jsp:include page="navbar.jsp" flush="false"/></div>
		
		<div id="contentsWrap">
			<div class="wrapper">		
 
<%
  session.removeAttribute("email");
  response.sendRedirect("login2.jsp");
 %>
 
      			</div>
		</div>
	</div>

		<div id="footer">			
			<jsp:include page="footer.jsp" flush="false" />
		</div>
 
</body>
 </html>
