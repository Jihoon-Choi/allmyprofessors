﻿<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>



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
			<div id="header_top">			
				<input type="button" value="Login" style="width:100px" disabled="disabled">
				<input type="button" value="Sign-up" style="width:100px" >
			</div>
			
			<div id="header_left">
				<a href="./index.jsp"><img src="./img/logo.png" width="170px" height="90px"></a>
			</div>					
				
			<div id="header_search">
				<input type="text">
				<input type="button" value="Search">			
			</div>
				
		</div>
		
		<div id="nav">
		
			<ul>
				<li id="navhome">
					<a href="./index.jsp">HOME</a>
					</li>
				<li id="nav_about">
					<a href="./about.html">About</a>
					</li>
				<li id="nav_professor">
					<a href="./professor.jsp">Professor</a>
					</li>
				<li id="nav_school">
					<a href="./school.html">School</a>
					</li>
				<li id="nav_toplist">
					<a href="./toplist.html">Top List</a>
					</li>
				
			</ul>
		</div>
	<!--교수랭킹-->
	
		
		<div id="contentsWrap">
			
			안녕하세요, <%= request.getParameter("email") %>님
			안녕하세요, <%= request.getParameter("passwd") %>님
			안녕하세요, <%= request.getParameter("school") %>님
			안녕하세요, <%= request.getParameter("major") %>님
	
			
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

