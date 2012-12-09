<%@ page language="java" contentType="text/html; charset=utf-8"
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
		<div id="contentsWrap_addsch">
			<form action="./add_school_db.jsp" method="post">
<<<<<<< HEAD
				<ul>
					<li>School name<input type="text" name="school"></li>
					<li>University / College
						<input type="radio" name="year" value="4"/>4년제
						<input type="radio" name="year" value="2"/>2년제
					</li>			
					<li>HomePage<input type="text" name="homepage"></li>
					<li>Tell<input type="text" name="tell"></li>
					
=======
		<br/><br/>
			<table>
			    <tr>
					<td>&nbsp&nbspSchool name</td>
					<td><input type="text" name="school"></td>
					</tr>
					<tr>
					<td>&nbsp&nbspHomePage</td>
					<td><input type="text" name="homepage"></td>
					</tr>
					<tr>
					<td>&nbsp&nbspTell</td>
					<td><input type="text" name="tell"></td>
					</tr>
					</table>
					</div>
					<br/>
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
>>>>>>> 8052876b3945fe0e277f33a624e7bfa32065c438
					<input type="submit" value="추가하기">
					
					
			</form>
			</div>
		</div>
	
		<br/><br/><br/><br/><br/><br/><br/><br/>
		<div id="footer"><jsp:include page="footer.jsp" flush="false"/>	</div>
	</div>
</body>

</html>

