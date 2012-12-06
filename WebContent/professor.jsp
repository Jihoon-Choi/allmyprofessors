﻿<%@ page language="java" contentType="text/html; charset=utf-8"
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
			<div class="wrapper">
				안녕하세요, <%= request.getParameter("keyword") %>으로 검색하셨군요!!!
				<div id="searchMap">
					<div id="proSearch">
						<input type="text">
						<input type="button" value="search">
						<p>교수님을 등록하시려면 <a href="./add_prof.jsp">Click</a>해 주세요.</p>
					</div>
				</div>
				<div id="searchContents">
					<div class="pagination">
						<a href="#" class="direction"><span>&lsaquo;</span>이전</a>
						<a href="#">1</a>
						<a href="#">2</a>
						<a href="#">3</a>
						<a href="#">4</a>
						<a href="#">5</a>
						<a href="#">6</a>
						<a href="#">7</a>
						<a href="#">8</a>
						<a href="#">9</a>
						<a href="#">10</a>
						<a href="#" class="direction"><span>&rsaquo;</span>다음</a>
					</div>
				</div>
			</div>
		</div>
		
		<div id="footer">			
			<jsp:include page="footer.jsp" flush="false" />
		</div>
	
	</div>

</body>

</html>
