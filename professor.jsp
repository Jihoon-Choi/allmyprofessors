<%@page contentType="text/html; charset=utf-8"%>



<!DOCTYPE html>
<html lang="ko">


<head>
	<meta charset="utf-8">
	<title>All My Professors</title>
	<link href="./css/style.css" rel="stylesheet" type="text/css">	
	
</head>

	
<body>
	<div id="siteWrap">		
		<div id="header">
			<div id="header_top">			
				<input type="button" value="Login" style="width:100px" disabled="disabled">
				<input type="button" value="Sign-up" style="width:100px" >
			</div>
			
			<div id="header_left">
				<a href="./index.jsp"><img src="./img/logo.png" width="170px" height="90px"></a>
			</div>					
				
			<div id="header_search">
				<input type="text">
				<input type="button" value="Search">			
			</div>
				
		</div>
		
		<div id="nav">
		
			<ul>
				<li id="navhome">
					<a href="./index.jsp">HOME</a>
					</li>
				<li id="nav_about">
					<a href="./about.html">About</a>
					</li>
				<li id="nav_professor">
					<a href="./professor.jsp">Professor</a>
					</li>
				<li id="nav_school">
					<a href="./school.html">School</a>
					</li>
				<li id="nav_toplist">
					<a href="./toplist.html">Top List</a>
					</li>
				
			</ul>
		</div>
	<!--교수랭킹-->
	
		
		<div id="contentsWrap">
			<div class="wrapper">
				안녕하세요, <%= request.getParameter("keyword") %>으로 검색하셨군요!!!
				<div id="searchMap">
					<div id="proSearch">
						<input type="text">
						<input type="button" value="search">
						<p>교수님을 등록하시려면 <a href="./ref_add_prof.html">Click</a>해 주세요.</p>
					</div>
				</div>
				<div id="searchContents">
					<div class="pagination">
						<a href="#" class="direction"><span>&lsaquo;</span>이전</a>
						<a href="#">1</a>
						<a href="#">2</a>
						<a href="#">3</a>
						<a href="#">4</a>
						<a href="#">5</a>
						<a href="#">6</a>
						<a href="#">7</a>
						<a href="#">8</a>
						<a href="#">9</a>
						<a href="#">10</a>
						<a href="#" class="direction"><span>&rsaquo;</span>다음</a>
					</div>
				</div>
			</div>
		</div>
		
		<div id="footer">			
			<p> 
				사이트소개 | 이용약관 | 개인정보취급방침 | 고객센터
			</p>			
			<p> Copyright(c) Choi Jihoon. All rights reserved.
			</p>
		</div>

		<div id="footerSearch">
			<input type="text">
			<input type="button" value="search">
		</div>
	
	</div>

		
	
		
		
	
</body>

</html>

