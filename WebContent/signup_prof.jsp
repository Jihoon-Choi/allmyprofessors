﻿<%@page contentType="text/html; charset=utf-8"%>



<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="utf-8">
	<title>All My Professors</title>
	<link href="./css/style.css" rel="stylesheet" type="text/css">	
	<script type="text/JavaScript" src="./jquery-1.8.2.min.js"></script>
	
</head>

	
<body>

	<!--회원가입_학생용-->
	<div id="siteWrap">
		<div id="header">
			<div id="header_left">
				<a href="./index.jsp"><img src="./img/logo.png" width="200px" height="100px"></a>
			</div>					
			
			<div id="header_right">			
				<input type="button" value="Login" style="width:100px" disabled="disabled">
				<input type="button" value="Sign-up" style="width:100px" >
			</div>
			
			<div id="header_search">
				<input type="text">
				<input type="button" value="Search">			
			</div>
			
		</div>
	
		
		<div id="contentsWrap">
			<form action="./signup_prof_db.jsp" method="post">
				<ul>
					<li>Email<input type="text" name="email">  </li>
					<li>Password<input type="text" name="passwd">  </li>
					<li>name<input type="text" name="name"></li>
					<li>School<input type="text" name="school"></li>
					<li>Major<input type="text" name="major"></li>
					<li>Phone<input type="text" name="phone"></li>
					
					 <input type="checkbox">동의합니다			
				</ul>					
				<input type="submit" value="가입완료">
			</form>
			
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














<!DOCTYPE html>
<html lang="ko">


<head>
	<meta charset="utf-8">
	<title>All My Professors</title>
	<link href="./css/style.css" rel="stylesheet" type="text/css">	
	
</head>

	
<body>

	<!--회원가입_교수용-->
	<div id="siteWrap">
		<div id="contents">
			
			
		
		</div>
	
	</div>

		
	<div id="footer">			
			<p> 
				사이트소개 | 이용약관 | 개인정보취급방침 | 고객센터
			</p>			
			<p> Copyright(c) Choi Jihoon. All rights reserved.
			</p>
	</div>
		
		
	
</body>

</html>
