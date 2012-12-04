<%@page contentType="text/html; charset=euc-kr" errorPage="DBError.jsp" %>
<%@page import="java.sql.*"%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	
	<title>All My Professors</title>
	<link href="./css/style.css" rel="stylesheet" type="text/css">	
	<script type="text/JavaScript" src="./jquery-1.8.2.min.js"></script>
	
</head>
<body>
  <jsp:include page="header.jsp"></jsp:include>
 <div id="siteWrap">
	<%	if (request.getMethod() == "POST") { %>
		 <div class="well">
		     <ul>
				<li>E-mail : <%=request.getParameter("email")%></li>
				<li>비밀번호 : <%=request.getParameter("pwd")%></li>
				<li>이름 : <%=request.getParameter("name")%></li>
				<li>학교 : <%=request.getParameter("school")%></li>
				<li>전공 : <%=request.getParameter("major")%></li>		    
			</ul>
		 </div>
  <%} else { %>
    <div>
		  <h1>Form Handling Example</h1>

		  <form class="form-horizontal" method="post">
			<fieldset>
				<div id="legend">
					<legend>Sign up</legend>
				</div>
				
				<p> Creating an account will let you rate professors, leave comments, and more.</p>
			<div id="ifprof">당신이 교수면, 특별한 계정이 필요하다. <a href="./signup_prof.html">CLICK</a>이곳을 눌러서 교수용 계정으로 가입해라.</div>
			
				<div class="control-group">
						<label class="control-label" for="email">E-mail</label>
						<div class="controls">
							<input type="email" placeholder="ex)webmaster@mju.ac.kr" name="email">
						</div>
					</div>
					
					
					<div class="control-group">
						<label class="control-label" for="name">Name</label>
						<div class="controls">
							<input type="text" placeholder="홍길동" name="name">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="pwd">Password</label>
						<div class="controls">
							<input type="password" placeholder="최소 6자이상" name="pwd">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="school">School</label>
						<div class="controls">
							<input type="text" placeholder="ex)명지대학교,송담대학..."name="school">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="major">major</label>
						<div class="controls">
							<input type="text" placeholder="ex)컴퓨터공학과,정보통신학과.."name="major">
						</div>
					</div>				

				
				<div class="form-actions">
					<input type="submit" class="btn btn-primary">
				</div>
			</fieldset>
		  </form>
    </div>
	<% } %>
  </div>
  <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>

