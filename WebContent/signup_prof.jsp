<%@page contentType="text/html; charset=utf-8"%>



<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="utf-8">
	<title>All My Professors</title>
	<link href="./css/style.css" rel="stylesheet" type="text/css">	
		<link href="http://twitter.github.com/bootstrap/1.4.0/bootstrap.min.css"
					rel="stylesheet" >
 		<script src="http://code.jquery.com/jquery-latest.js"></script>
		<script src="js/bootstrap.min.js"></script>
	
</head>

	
<body>

	<!--회원가입_학생용-->
	<div id="siteWrap">
			<div id="header"><jsp:include page="header.jsp" flush="false"/></div>		
		<div id="nav"><jsp:include page="navbar.jsp" flush="false"/></div>
		
		<div id="contentsWrap">
			<form action="./signup_prof_db.jsp" method="post">
				<ul>
					<li>Email<input type="text" name="email">  </li>
					<li>Password<input type="text" name="passwd">  </li>
					<li>name<input type="text" name="name"></li>
					<li>School<input type="text" name="school"></li>
					<li>Major<input type="text" name="major"></li>
					<li>Phone<input type="text" name="phone"></li>
					<li> University / College
						<input type="radio" name="year" value="4"/>4년제
						<input type="radio" name="year" value="2"/>2년제
					</li>

				</ul>					
				<input type="submit" value="가입완료">
			</form>
			
		</div>

	
	<div id="footer">			
			<jsp:include page="footer.jsp" flush="false"/>
	</div>
	</div>
		

</body>

</html>
