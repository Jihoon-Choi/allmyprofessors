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
				request.setCharacterEncoding("utf-8");		    
				
				String keyword = request.getParameter("keyword");
				
				Class.forName("com.mysql.jdbc.Driver");
				
				Connection conn = null;
				Statement stmt = null;
				ResultSet rs = null;
				%>				
				<p>검색결과 : <%= keyword  %>	</p>
								
								
				<p>교수님을 등록하시려면 <a href="./add_prof.jsp">Click</a>해 주세요.</p>
					
				
<<<<<<< HEAD
				
				<div id="searchContents">			
					<div id="searchData">
						<table>
							<tr>
								<th>교수</th>
								<th>학교</th>
								<th>전공</th>
							</tr>
							
							
							<%				  
							try{
								   
								conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amp","root","1234");        
								stmt = conn.createStatement();        
								rs = stmt.executeQuery("select * from reputation where name like '%"+keyword+"%' or school like '%"+keyword+"%';");
					
					
							while(rs.next()){	%>
								<tr align="center">										
									<td><a href="./info_prof.jsp?name=<%=keyword %>"><%= rs.getString("name") %></a></td>
									<td><a href="./info_school.jsp?school=<%=keyword%>"><%= rs.getString("school") %></a></td>
									<td><%= rs.getString("major") %></td>					
								</tr>	<br/>
							
							
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
>>>>>>> f93afb0ce8b6749c79c426492329a895205bbc71
				</div>
			</div>
		</div>
	</div>
		
		<div id="footer">			
			<jsp:include page="footer.jsp" flush="false" />
		</div>
	
	</div>

</body>

</html>

