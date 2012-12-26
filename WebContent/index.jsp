<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.util.*" import="java.sql.*"
errorPage="DBError.jsp" %>


<!DOCTYPE html>
<html lang="ko">

<head>
	<%request.setCharacterEncoding("utf-8");%>	
	<meta charset="utf-8">	
	<title>All My Professors</title>
	<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
	
	
</head>
	
<body>

	<script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="js/bootstrap.min.js"></script>
    
		<div id="siteWrap">
			<div id="header">
				<a href="./login.jsp"><input type="button" class="btn btn-primary" name="input" value="Log-in" style="width:100px"></a>			  
				<a href="./signup_student.jsp"><input type="button" class="btn btn-success" value="Sign-up" style="width:100px"></a>			
			</div>
			
			<div id="contents_main">
				<img src="./img/logo.png" style="width:350px"><br/>
				
				<form ACTION="./index_stu_or_prof.jsp" METHOD="get">
						<input class="input-xlarge" name="keyword" type="text">
							
											
						<select name="sel" style="width:120px">
							<option value="1">Professor </option>
							<option value="2">School </option>
						</select>	
					<p>							
							<button class="btn btn-large" type="submit">Search</button>
					</p>
				
				</form>					
			</div>
			
			<div id="footer">			
				<jsp:include page="footer.jsp" flush="false" />
			</div>			
		</div>	
</body>
</html>