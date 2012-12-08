<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.util.*" import="java.sql.*" %>


<!DOCTYPE html>
<html lang="ko">

<head>
	
	<meta charset="utf-8">
	
	<title>All My Professors</title>
	<link href="./css/style.css" rel="stylesheet" type="text/css">	
	<script type="text/JavaScript" src="./jquery-1.8.2.min.js"></script>
	
</head>
	
<body>
	
		<div id="siteWrap">
			<div id="header">
				<a href="./login_stu.jsp"><input type="button" value="Login" style="width:100px"></a>
				<a href="./signup_student.jsp"><input type="button" value="Sign-up" style="width:100px"></a>						
			</div>
			
			<div id="contents_main">
				<img src="./img/logo.png" style="width:300px"><br/>
					
				<form ACTION="./index_stu_or_prof.jsp" METHOD="get">
					
					<input type=text name="keyword" id="search_box" style="width:300px">	
						
					<select name="sel">
						<option value="1"> 교수 </option>
						<option value="2"> 학교 </option>
					</select>
					
					
					<input type=submit value="검색" style="width:100px">
				</form>					
			</div>
		

			
			<div id="footer">			
				<jsp:include page="footer.jsp" flush="false" />
			</div>
			
		</div>
	
</body>

</html>