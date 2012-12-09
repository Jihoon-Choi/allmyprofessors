<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="euc-kr" import="java.util.*" import="java.sql.*"
errorPage="DBError.jsp" %>


<!DOCTYPE html>
<html lang="ko">

<head>
	<%request.setCharacterEncoding("utf-8");%>	
	<meta charset="utf-8">	
	<title>All My Professors</title>
	<link href="./css/style.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="http://twitter.github.com/bootstrap/1.4.0/bootstrap.min.css">	
	<script type="text/JavaScript" src="./jquery-1.8.2.min.js"></script>	
</head>
	
<body>
	
		<div id="siteWrap">
			<div id="header">
				<a href="./login2.jsp"><input type="button" value="Login" style="width:100px"></a>
				<a href="./signup_student.jsp"><input type="button" value="Sign-up" style="width:100px"></a>						
			</div>
			
			<div id="contents_main">
				<img src="./img/logo.png" style="width:300px"><br/>
				
				<form ACTION="./index_stu_or_prof.jsp" METHOD="get">					
					<input type=text name="keyword" placeholder="공백으로 검색 시,전체목록을 볼 수 있습니다." id="search_box" style="width:200px">	
						
					<select name="sel">
						<option value="1">Professor </option>
						<option value="2">School </option>
					</select>	
								
					<input type=submit value="Search" style="width:100px">

					<a href="./about.jsp"><input type="button" value="SKIP" style="width:100px"></a>

				</form>					
			</div>
			
			<div id="footer">			
				<jsp:include page="footer.jsp" flush="false" />
			</div>			
		</div>	
</body>
</html>