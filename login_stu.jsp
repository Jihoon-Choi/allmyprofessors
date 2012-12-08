<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"
 import="java.util.*"  errorPage="DBError.jsp"%>
<%@page import="java.sql.*"%>



<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="utf-8">
	<title>All My Professors</title>
	<link href="./css/style.css" rel="stylesheet" type="text/css">	
	
</head>

	
<body>
	<div id="siteWrap">
		<div id="header"><jsp:include page="header.jsp" flush="false"/>	</div>		
		<div id="nav">	<jsp:include page="navbar.jsp" flush="false"/>	</div>
	
		<div id="contentsWrap">
		
			
			<!--로그인 박스-->
			
			<form action="./login_db.jsp" method="get">
				<div id="login_windows">
					<!--로그인에서의 id입력-->
					<div id="enter_id">
						<p>E-Mail</p><input type="text" name="email">				
					</div>
					
					<!--로그인에서의 password입력-->
					<div id="enter_password">
						<p>Password</p><input type="password" name="passwd">
					</div>

					<input type="submit" value="LOG-IN"></a>
				</div>
			</form>
			<p><a href="">교수 전용 로그인</a></p>
		</div>
		
		
		<div id="footer">			
			<jsp:include page="footer.jsp" flush="false" />
		</div>
		
	</div>
	
</body>

</html>