<%@ page language="java" contentType="text/html; charset=utf-8"
 	errorPage="loginerror.jsp" 
    pageEncoding="utf-8"%>


<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="utf-8">
	<title>All My Professors</title>
	<link href="./css/style.css" rel="stylesheet" type="text/css">
	<SCRIPT LANGUAGE="JavaScript">
	
	function go_login(){
	if(document.login.email.value.length<=0){
			alert("Email를 입력하세요");
			document.login.email.focus();
			return false;
	}
	if(document.login.userpw.value.length<=0){
			alert("password를 입력하세요");
			document.login.passwd.focus();
			return false;
	}
	document.login.submit();
	}
	function move_focus(){
	document.login.email.focus();
	return;
	}
	
	</SCRIPT>	
</head>

	
<body>
	<div id="siteWrap">
		<div id="header">
			<div id="header_left">
				<a href="./index.jsp"><img src="./img/logo.png" width="200px" height="100px"></a>
			</div>					
			
			<div id="header_right">			
				<input type="button" value="Login" style="width:100px" disabled="disabled">
				<input type="button" value="Sign-up" style="width:100px" >
			</div>
			
			<div id="header_search">
				<input type="text">
				<input type="button" value="Search">			
			</div>
			
		</div>
	
		<div id="contentsWrap">
		
			
			
			<!--로그인 박스-->
			
			<form action="/amp/login_after.jsp" method="get">
				<div id="login_windows">
					<!--로그인에서의 id입력-->
					<div id="enter_id">
						<p>E-Mail</p><input type="text" name="email">				
					</div>
					
					<!--로그인에서의 password입력-->
					<div id="enter_password">
						<p>Password</p><input type="password" name="passwd">
					</div>

					<a href="javascript:go_login()"><input type="submit" value="LOG-IN"></a>
				</div>
			</form>
		</div>
		
		
		<div id="footer">			
				<p> 
					사이트소개 | 이용약관 | 개인정보취급방침 | 고객센터
				</p>			
				<p> Copyright(c) Choi Jihoon. All rights reserved.
				</p>
		</div>
		
	</div>
	
</body>

</html>