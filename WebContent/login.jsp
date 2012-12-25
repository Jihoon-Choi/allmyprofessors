<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="utf-8">
	<title>Login</title>
	<link href="./css/style.css" rel="stylesheet" type="text/css">		
</head>
 
<body>
 
	<div id="siteWrap">		
		<div id="header"><jsp:include page="header.jsp" flush="false"/></div>		
		<div id="nav"><jsp:include page="navbar.jsp" flush="false"/></div>
		
		<div id="contentsWrap">
			<div class="wrapper">
				<form class="form-horizontal" action="loginConfirm.jsp" method="post">
				  <div class="control-group">
				    <label class="control-label" for="inputEmail">Email</label>
				    <div class="controls">
				      <input type="text" id="inputEmail"  name="email" placeholder="Email">
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputPassword">Password</label>
				    <div class="controls">
				      <input type="password" id="inputPassword" name="password" placeholder="Password">
				    </div>
				  </div>
				  <div class="control-group">
				    <div class="controls">
				      <label class="checkbox">
				        <input type="checkbox"> Remember me
				      </label>
				      <button type="submit" name="login" class="btn">Log-in</button>
				    </div>
				  </div>
				   <p>계정이 없으세요? 그렇다면 가입해주세요!</p>
					<a href="./signup_student.jsp"><input type="button" value="Sign-up" style="width:100px"></a>
				</form>
				</div>											
											 
											   
										
											    		
		</div>
	</div>

		<div id="footer">			
			<jsp:include page="footer.jsp" flush="false" />
		</div>
         
 </body>
 </html>
 
