<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@ page  import="java.util.*" import="java.sql.*" %>


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
	
		<div id="contentsWrap_a_p">
			<form action="./add_prof_db.jsp" method="post">
			<br/><br/>
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
						<td>Name</td>
						<td><input type="text" name="name"></td>	
					</tr>
					<tr>					
						<td>Major</td>
						<td><input type="text" name="major"></td>
					</tr>
					<tr>
						<td>Comment</td>
						<td><input type="text" name="comment"></td>
					</tr>
					</table>
					<br/>
					
					<input type="submit" value="추가하기">
			</form>
			
		</div>
		<br/><br/><br/><br/><br/><br/><br/><br/>
		<div id="footer"><jsp:include page="footer.jsp" flush="false"/>	</div>
	</div>
</body>

</html>

