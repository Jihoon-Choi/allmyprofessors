<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" import="java.util.*" import="java.sql.*" %>

<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="utf-8">
	<title>All My Professors</title>
	<link href="./css/style.css" rel="stylesheet" type="text/css">	
	
</head>

<body>
	<div id="siteWrap">		
		<div id="header"><jsp:include page="header.jsp" flush="false"/></div>		
		<div id="nav"><jsp:include page="navbar.jsp" flush="false"/></div>	
		
		<div id="contentsWrap">
			<div class="wrapper">
			<%
				request.setCharacterEncoding("euc-kr");
			%>
				안녕하세요, <%= request.getParameter("keyword") %>으로 검색하셨군요!!!
				<div id="searchMap">
					<div id="proSearch">
						<input type="text">
						<input type="button" value="search">
						<p>학교를 등록하시려면 <a href="./add_school.jsp">Click</a>해 주세요.</p>
					</div>
				</div>
<div id="searchContents">			
					<div id="searchData">
						<table>
							<tr>
								<th>학교</th>
								<th>교수</th>
								<th>전공</th>
							</tr>
							
							
							<%				  
							try{
								   
								conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amp","root","2477");        
								stmt = conn.createStatement();        
								rs = stmt.executeQuery("select * from reputation where name like '%"+keyword+"%' or school like '%"+keyword+"%';");
					
					
							while(rs.next()){	%>
								<tr align="center">										
									<td><a href="./info_school.jsp?keyword=<%keyword%>" target="_blank"><%= rs.getString("school") %></a></td>
									<td><%= rs.getString("name") %></td>
									<td><%= rs.getString("major") %></td>					
								</tr>
							
							
										<%
											}
										}catch(SQLException e){
										}finally{
										if(rs != null){try{rs.close();}catch(SQLException e){}}
										if(stmt != null){try{stmt.close();}catch(SQLException e){}}
										if(conn != null){try{conn.close();}catch(SQLException e){}}}      
										%>				
						</table>					
					</div>		
					</div>
				</div>
			</div>
		</div>
		
		<div id="footer">			
			<jsp:include page="footer.jsp" flush="false"/>
		</div>

</body>

</html>

