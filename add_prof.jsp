<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.util.*" import="java.sql.*" %>


<!DOCTYPE html>
<html lang="ko">


<head>
	<meta charset="utf-8">
	<title>All My Professors</title>
	<link href="./css/style.css" rel="stylesheet" type="text/css">	
	
</head>

	
<body>
	<div id="siteWrap">		
		<div id="header">
			<jsp:include page="header.jsp" flush="false"/>
		</div>
		
		<div id="nav">
			<jsp:include page="navbar.jsp" flush="false"/>
		</div>
	<!--교수랭킹-->
	
	
		<div id="contentsWrap">
			<form action="db_success.jsp" method="post">
				<ul>
					<li>Email<input type="text" name="email"></li>
					<li>Name<input type="text" name="name"></li>
					<li>School<input type="text" name="school"></li>
					<li>Phone<input type="text" name="phone"></li>
					<li>Major<input type="text" name="major"></li>
					<input type="submit" value="추가하기">
				</ul>		
			</form>
		</div>
		
		<div id="footer">			
			<p> 
				사이트소개 | 이용약관 | 개인정보취급방침 | 고객센터
			</p>			
			<p> Copyright(c) Choi Jihoon. All rights reserved.
			</p>
		</div>

		<div id="footerSearch">
			<input type="text">
			<input type="button" value="search">
		</div>
	
	</div>

		
	
		
		
	
</body>

</html>

