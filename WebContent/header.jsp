<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="euc-kr"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>All My Professors</title>
	<link href="./css/style.css" rel="stylesheet" type="text/css">	
	<script type="text/JavaScript" src="./jquery-1.8.2.min.js"></script>
</head>

<body>

			<div id="header_top">			
<%
  session = request.getSession(true);
  if( session.getAttribute("email") != null && ((String)session.getAttribute("email")).equals("true"))
  {

   %>
   <input type="button" name="input" value="�α׾ƿ�" onClick="javascript:window.location.href('logoutConfirm.jsp')"/>
   <%
  }else{
   %>
   <%
  }
 %>
				<a href="./signup_student.jsp"><input type="button" value="Sign-up" style="width:100px"></a>
			</div>
			
			<div id="header_left">
				<a href="./index.jsp"><img src="./img/logo.png" width="170px" height="90px"></a>
			</div>					
				
			<div id="header_search">
		<form ACTION="./index_stu_or_prof.jsp" METHOD="get">					
					<input type=text name="keyword" id="search_box">	
						
					<select name="sel">
						<option value="1">Professor </option>
						<option value="2">School </option>
					</select>	
								
					<input type=submit value="Search">
				</FORM>			
			</div>

</body>
</html>