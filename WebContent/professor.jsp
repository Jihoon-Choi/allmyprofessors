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
				<div id="pro_1">
				<p>검색결과 : <%= keyword  %>	</p><br/>		
				<p>교수님을 등록하시려면 <a href="./add_prof.jsp">Click</a>해 주세요.</p>
					
				</div>
				<br/><br/>
				<div id="searchContents">			
					<div id="searchData">
						<table width="700"  height="300">
							<tr>
								<th>교수</th>
								<th>학교</th>
								<th>전공</th>
							</tr>
							<tr>
							<td>권동섭</td>
							<td>명지대학교</td>
							<td>컴퓨터공학과</td>
							</tr>
							<tr>
              <td>김미나</td>
              <td>용인대학교</td>
              <td>식품영양학과</td>
              </tr>
              <tr>
              <td>홍길동</td>
              <td>아주대학교</td>
              <td>경영학과</td>
              </tr>
              <tr>
              <td>김철수</td>
              <td>한국외국어대학교</td>
              <td>영어영문학과</td>
              </tr>
              <tr>
              <td>이지은</td>
              <td>명지대학교</td>
              <td>미술사학과</td>
              </tr>
              <tr>
              <td>유홍준</td>
              <td>명지대학교</td>
              <td>미술사학과</td>
              </tr>
              <tr>
              <td>박명성</td>
              <td>명지대학교</td>
              <td>영화뮤지컬학과</td>
              </tr>
							
							<%				  
							try{
								   
								conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amp","root","1234");        
								stmt = conn.createStatement();        
								rs = stmt.executeQuery("select * from reputation where name like '%"+keyword+"%' or school like '%"+keyword+"%';");
					
					
							while(rs.next()){	%>
								<tr align="center">										
									<td><a href="./info_prof.jsp?keyword=<%=keyword %>" target="_blank"><%= rs.getString("name") %></a></td>
									<td><%= rs.getString("school") %></td>
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
		<br/><br/><br/><br/><br/><br/><br/>
		<div id="footer">			
			<jsp:include page="footer.jsp" flush="false" />
		</div>

</body>

</html>

