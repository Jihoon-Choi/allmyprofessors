<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="euc-kr" import="java.util.*" import="java.sql.*"
errorPage="DBError.jsp" %>


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
		<div id="siteWrap">		
			<div id="header"><jsp:include page="header.jsp" flush="false"/>	</div>
			<div id="nav"><jsp:include page="navbar.jsp" flush="false"/></div>
			
			<div id="contentsWrap">
				<p> 교수용 회원가입 바로가기  <a href="./signup_prof.jsp">CLICK</a></p>
								
												
								 
<<<<<<< HEAD
	<form class="form-horizontal" action="./signup_student_db.jsp" method="post">
				  
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
					
					 <li><input type="checkbox">동의합니다</li>			
				</ul>					
				<input type="submit" value="가입완료">
	</form>
		
=======
				  <form class="form-horizontal" action="./signup_student_db.jsp" method="post">
					<fieldset>
					  <div id="legend" class="">
						<legend class="">Sign Up</legend>
					  </div>
					<div class="control-group">

						  <!-- Text input-->
						  <label class="control-label" for="input01">E-mail</label>
						  <div class="controls">
							<input type="text" placeholder="ex)admin@mju.ac.kr" class="input-xlarge" name="email">
				
						  </div>
						</div>

					<div class="control-group">

						  <!-- Text input-->
						  <label class="control-label" for="input01">Password</label>
						  <div class="controls">
							<input type="text" placeholder="理쒖냼 6�옄" class="input-xlarge" name="passwd">
						
						  </div>
						</div>

					<div class="control-group">

						  <!-- Text input-->
						  <label class="control-label" for="input01">Name</label>
						  <div class="controls">
							<input type="text" placeholder="�븳湲��엯�젰" class="input-xlarge" name="name">
						
						  </div>
						</div>

					<div class="control-group">

						  <!-- Text input-->
						  <label class="control-label" for="input01">School</label>
						  <div class="controls">
							<input type="text" placeholder="ex)紐낆������븰援�,�넚�떞����븰" class="input-xlarge" name="school">
							<li>
									<input type="radio" name="year" value="4"/>4�뀈�젣
									<input type="radio" name="year" value="2"/>2�뀈�젣
							</li>			
						  </div>
						</div>

					<div class="control-group">

						  <!-- Text input-->
						  <label class="control-label" for="input01">Major</label>
						  <div class="controls">
							<input type="text" placeholder="ex)而댄벂�꽣怨듯븰怨�" class="input-xlarge" name="major">
						
						  </div>
						</div>

				 <div class="control-group">
						  <label class="control-label">Submit</label>

						  <!-- Button -->
						  <div class="controls">
							<button class="btn btn-success">Sign-Up</button>
						  </div>
						</div>

					</fieldset>
				  </form>


			
>>>>>>> a73d8a29ce36e0319906b0490c7084fe7e1b5240
			</div>
			
			<div id="footer"><jsp:include page="footer.jsp" flush="false"/>	</div>
		</div>			
	</body>
</html>

