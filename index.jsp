<%@page contentType="text/html; charset=utf-8"%>


<!DOCTYPE html>
<html lang="ko">

<head>
	
	<meta charset="utf-8">
	<title>All My Professors</title>
	<link href="./css/style.css" rel="stylesheet" type="text/css">	
	<script type="text/JavaScript" src="./jquery-1.8.2.min.js"></script>
	
</head>
	
<body>
	<% 
		String path1=application.getRealPath("/amp/searchresult.jsp");
		String path2=application.getRealPath("/amp/searchresult.jsp");
		%>
	
		<div id="siteWrap">
			<div id="header">
				<a href="./login.html"><input type="button" value="Login" style="width:100px"></a>
	<<<<<<< HEAD
				<a href="./signup_student.html"><input type="button" value="Sign-up" style="width:100px"></a>		
	=======
				<a href="./signup.html"><input type="button" value="Sign-up" style="width:100px"></a>
	>>>>>>> 2fe0629ac6dab5e8f82962b5b501b2a09eea1e76
			</div>
			
			<div id="contents_main">
				<img src="./img/logo.png" style="width:300px"><br/>
					
				<FORM ACTION=/amp/searchresult.jsp METHOD=GET>
					It's JSP Page
					<input type=text name=keyword id="search_box" style="width:300px">	
						
					<select name=sel>
						<option value="1"> 교수 </option>
						<option value="2"> 학교 </option>
					</select>
					
					
					<input type=submit value="검색" style="width:100px"> </a>
				</form>
				
				<a href="./about.html"><input type="button" value="SKIP" style="width:100px"></a>
				</a>
			</div>
		

			
			<div id="footer">			
					<p> 
						사이트소개 | 이용약관 | 개인정보취급방침 | 고객센터
					</p>			
					<p> Copyright(c) All My Professors. All rights reserved.
					</p>
			</div>
			
		</div>
	
</body>

</html>