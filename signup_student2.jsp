<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>All My Professors</title>
	<link href="./css/style.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="js/bootstrap.min.js"></script>
</head>

<body>
	<div id="header">
		<div id="header_top">			
			<input type="button" value="Login" style="width:100px" disabled="disabled">
			<input type="button" value="Sign-up" style="width:100px" >
		</div>
		
		<div id="header_left">
			<a href="#"><img src="./img/logo.png" width="170px" height="90px"></a>
		</div>					
			
		<div id="header_search">
			<input type="text">
			<input type="button" value="Search">			
		</div>
			
	</div>
		
	<div id="nav">	
		<ul>
			<li id="navhome">
				<a href="#">HOME</a>
				</li>
			<li id="nav_about">
				<a href="./about.jsp">About</a>
				</li>
			<li id="nav_professor">
				<a href="./professor.jsp">Professor</a>
				</li>
			<li id="nav_school">
				<a href="./school.jsp">School</a>
				</li>
			<li id="nav_toplist">
				<a href="./toplist.jsp">Top List</a>
				</li>
			
		</ul>
	</div>
		
		
  <div id="contentsWrap">
	<%	if (request.getMethod() == "POST") { %>
		 <div class="well">
		  <ul>
		    <li>E-mail : <%=request.getParameter("Email")%></li>
		    <li>Mame : <%=request.getParameter("name")%></li>
		    <li>Password : <%=request.getParameter("passwd")%></li>
		    <li>School : <%=request.getParameter("school")%></li>
		    <li>Major : <%=request.getParameter("major")%></li>		    
			</ul>
		 </div>
	<%} else { %>
		<div>
			  <h1>회원가입</h1>

			  <form class="form-horizontal" method="post">
				<fieldset>
					<div id="legend">
						<legend>Sign up</legend>
					</div>
					
					<div class="control-group">
						<label class="control-label" for="email">E-mail</label>
						<div class="controls">
							<input type="email" placeholder="hong@abc.com" name="email">
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
							<input type="password" name="pwd">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="school">School</label>
						<div class="controls">
							<input type="text" name="school">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="major">major</label>
						<div class="controls">
							<input type="text" name="major">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label">Country</label>
						<div class="controls">
							<select name="country">
								<option value="KR">Korea</option>
								<option value="US">USA</option>
								<option value="JA">Japan</option>
								<option value="CN">China</option>
							</select>
						</div>
					</div>

					<div class="control-group">
						<label class="control-label">Gender</label>
						<div class="controls">
							<label class="radio"> 
							  <input type="radio" value="m" name="gender" checked="checked"> male
							</label> 
							<label class="radio"> 
							  <input type="radio" value="f"	name="gender"> female
							</label>
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
  
</body>
</html>

