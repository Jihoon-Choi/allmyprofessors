<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"  errorPage="DBError.jsp" %>



<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8">
		<title>All My Professors</title>
		<link href="./css/style.css" rel="stylesheet" type="text/css">	
		  <script src="http://code.jquery.com/jquery-latest.js"></script>
			<script src="js/bootstrap.min.js"></script>		
	</head>	
	
	<body>
		<div id="siteWrap">		
			<div id="header"><jsp:include page="header.jsp" flush="false"/>	</div>
			<div id="nav"><jsp:include page="navbar.jsp" flush="false"/></div>
			
			<div id="contentsWrap">
				<p> 교수용 회원가입 바로가기  <a href="./signup_prof.jsp">CLICK</a></p>
								
												
								 
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
							<input type="text" placeholder="최소 6자" class="input-xlarge" name="passwd">
						
						  </div>
						</div>

					<div class="control-group">

						  <!-- Text input-->
						  <label class="control-label" for="input01">Name</label>
						  <div class="controls">
							<input type="text" placeholder="한글입력" class="input-xlarge" name="name">
						
						  </div>
						</div>

					<div class="control-group">

						  <!-- Text input-->
						  <label class="control-label" for="input01">School</label>
						  <div class="controls">
							<input type="text" placeholder="ex)명지대학교,송담대학" class="input-xlarge" name="school">
							<li>
									<input type="radio" name="year" value="4"/>4년제
									<input type="radio" name="year" value="2"/>2년제
							</li>			
						  </div>
						</div>

					<div class="control-group">

						  <!-- Text input-->
						  <label class="control-label" for="input01">Major</label>
						  <div class="controls">
							<input type="text" placeholder="ex)컴퓨터공학과" class="input-xlarge" name="major">
						
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


			
			</div>
			
			<div id="footer"><jsp:include page="footer.jsp" flush="false"/>	</div>
		</div>			
	</body>
</html>

