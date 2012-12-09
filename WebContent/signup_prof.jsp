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
				<li>Email<input type="text" placeholder="ex)admin@mju.ac.kr" 
										class="input-xlarge" name="email"></li>
					<li>Password<input type="text" placeholder="최소 6자" 
											class="input-xlarge" name="passwd"></li>
					<li>name<input type="text" placeholder="한글입력" 
									class="input-xlarge" name="name"></li>
					<li>School<input type="text" placeholder="ex)명지대학교,송담대학" 
											class="input-xlarge" name="school"></li>
					<li>Major<input type="text" placeholder="ex)컴퓨터공학과" 
										class="input-xlarge" name="major"></li>
					<li>Phone<input type="text" placeholder="ex)01012345678" 
										class="input-xlarge" name="phone"></li>
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
