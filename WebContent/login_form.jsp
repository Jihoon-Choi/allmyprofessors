<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.util.*" import="java.sql.*" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 폼</title>
</head>

<body>
	<div id="siteWrap">
		<div id="header">
			<jsp:include page="header.jsp" flush="false"/>
		</div>		
		<div id="nav">
			<jsp:include page="navbar.jsp" flush="false"/>
		</div>
	
		<div id="contentsWrap">
		
			<!--로그인 박스-->
			
			<form action="login.jsp" method="post">
				<div id="login_windows">					
						<p>E-Mail</p><input type="text" name="email">					
						<p>Password</p><input type="password" name="passwd">
						<input type="submit" value="LOG-IN">
				</div>
			</form>
		</div>
		
		
		<div id="footer">			
				<jsp:include page="footer.jsp" flush="false"/>
		</div>
		
	</div>

</body>
</html>


