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
		<div id="header"><jsp:include page="header.jsp" flush="false"/>	</div>
		<div id="nav"><jsp:include page="navbar.jsp" flush="false"/></div>
	
		<div id="contentsWrap">
			<form action="./add_school_db.jsp" method="post">
				<ul>
					<li>School name<input type="text" name="school"></li>
					<li>HomePage<input type="text" name="homepage"></li>
					<li>Tell<input type="text" name="tell"></li>
					
					<input type="submit" value="추가하기">
				</ul>		
			</form>
		</div>
		
		<div id="footer"><jsp:include page="footer.jsp" flush="false"/>	</div>
	</div>
</body>

</html>
