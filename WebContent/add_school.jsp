<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.util.*" import="java.sql.*" %>


<!DOCTYPE html>
<html lang="ko">


<head>
	<meta charset="utf-8">
	<title>All My Professors</title>
	<link href="./css/style.css" rel="stylesheet" type="text/css">
			<link rel="stylesheet" href="http://twitter.github.com/bootstrap/1.4.0/bootstrap.min.css">	
	<script type="text/JavaScript" src="./jquery-1.8.2.min.js"></script>	
	
</head>

	
<body>
	<div id="siteWrap">		
		<div id="header"><jsp:include page="header.jsp" flush="false"/>	</div>
		<div id="nav"><jsp:include page="navbar.jsp" flush="false"/></div>
	
		<div id="contentsWrap_a_p">
		<div id="contentsWrap_addsch">
			<form action="./add_school_db.jsp" method="post">
				 <table>
				  <tr>
						<td>School</td>
						<td><input type="text" name="school"></td>	
					</tr>
					<tr>
						<td>University / College</td>
						<td><input type="radio" name="year" value="4"/>4년제
							<input type="radio" name="year" value="2"/>2년제</td>				
					</tr>
					<tr>
						<td>Homepage</td>
						<td><input type="text" name="homepage"></td>	
					</tr>
					<tr>					
						<td>Tell</td>
						<td><input type="text" name="tell"></td>
					</tr>	
				</table>
				<input type="submit" value="추가하기">								
			</form>
			</div>
		</div>
	
		<br/><br/><br/><br/><br/><br/><br/><br/>
		<div id="footer"><jsp:include page="footer.jsp" flush="false"/>	</div>
	</div>
</body>

</html>

