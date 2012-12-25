<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"  errorPage="DBError.jsp" %>

<!DOCTYPE html>
<html lang="ko">


<head>
	<meta charset="utf-8">
	<title>All My Professors ; 회원 가입 결과</title>
	<link href="./css/style.css" rel="stylesheet" type="text/css">	
	
</head>

	
<body>
	<div id="siteWrap">		
		<div id="header">
			<div id="header_top">			
				<input type="button" value="Login" style="width:100px" disabled="disabled">
				<input type="button" value="Sign-up" style="width:100px" >
			</div>
			
			<div id="header_left">
				<a href="#"><img src="./img/logo.png" width="170px" height="90px"></a>
			</div>					
				
			<div id="header_search">
				<input type="text">
				<input type="button" value="Search">			
			</div>
				
		</div>
		
		<div id="nav">
		
			<ul>
				<li id="navhome">
					<a href="#">HOME</a>
					</li>
				<li id="nav_about">
					<a href="./about.jsp">About</a>
					</li>
				<li id="nav_professor">
					<a href="./professor.jsp">Professor</a>
					</li>
				<li id="nav_school">
					<a href="./school.jsp">School</a>
					</li>
				<li id="nav_toplist">
					<a href="./toplist.jsp">Top List</a>
					</li>
				
			</ul>
		</div>
	<!--교수랭킹-->
	
		
		<div id="contentsWrap">
			<H3>회원 가입 결과</H3>
				가입되었습니다.
				<a href="./index.jsp">홈으로</a>
				
		</div>
		
		<div id="footer">			
			<p> 
				사이트소개 | 이용약관 | 개인정보취급방침 | 고객센터
			</p>			
			<p> Copyright(c) Choi Jihoon. All rights reserved.
			</p>
		</div>
		
	</div>

		
	
		
		
	
</body>

</html>
