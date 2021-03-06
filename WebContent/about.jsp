﻿<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>

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
			<jsp:include page="header.jsp" flush="false"/>
		</div>
		
		<div id="nav">
			<jsp:include page="navbar.jsp" flush="false"/>
		</div>
	<!--교수랭킹-->
	
		
		<div id="contentsWrap">
    <div id=subject_about>What is AllMyProfessors ?</div><br/><br/>
    <div id="aligncontent">
    <div id="sidebar">
    <div class="wrapper"><img src="img/about_img.png" alt="소개사진"></div></div>
    <div id="aboutcontent">
    <div class="wrapper">
      'All my professors' 사이트는 학생들의 강의평가를 통해 교수에 대한 평가를 순위로 보여줍니다.
      사용자들에 의해 학교와 강의가 등록되며 학생들은 코멘트와 점수주기를 통해 평가를 할 수 있습니다.
     <p>이 사이트의 모든 기능은 무료로 제공되며 사용자들은 자율적으로 기능을 사용할 수 있습니다.
      사이트에서 다루는 대학들은 사용자의 의해 등록이된 전국에 있는 4년제 대학은 물론 2년제 대학까지 포함이 됩니다.
      <p>회원가입을 하면 더 많은 혜택을 누릴 수 있습니다 !
    	지금 우리 사이트를 이용하는 학생들은 각각의 항목에 대한 점수와 코멘트를 통해 평가를 하고 있습니다. <br/>
      이 평가를 바탕으로 'TOP List'메뉴를 통해 확인 할 수 있습니다.<br/>
      지금 바로 'AllMyProfessors'를 사용해 보세요. 당신은 더 많은 정보를 제공받게 될 것입니다! <br/> 
    </div>
    </div>
    </div>
    
			<ul>
				<li></li>
			</ul>
			
		
		</div>
		<div id="footer">			
				<jsp:include page="footer.jsp" flush="false"/>
		</div>
	</div>
			
</body>

</html>

