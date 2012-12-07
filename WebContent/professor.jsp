<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"
 import="java.util.*"  errorPage="DBError.jsp"%>
<%@page import="java.sql.*"%>


<!DOCTYPE html>
<html lang="ko">


<head>
	<meta charset="utf-8">
	<title>All My Professors</title>
	<link href="./css/style.css" rel="stylesheet" type="text/css">		
</head>
	
<body>

	<div id="siteWrap">		
		<div id="header"><jsp:include page="header.jsp" flush="false"/>	</div>		
		<div id="nav">	<jsp:include page="navbar.jsp" flush="false"/>	</div>
		
	
		<div id="contentsWrap">
			<div class="wrapper">
			<%
			
			
	
			%>
			
		<%
	    request.setCharacterEncoding("utf-8");		    
	    
	    String keyword = request.getParameter("keyword");
	    
	    Class.forName("com.mysql.jdbc.Driver");
	    
	    Connection conn = null;
	    Statement stmt = null;
	    ResultSet rs = null;
	    %>
		    
		    
				<p>안녕하세요, <%= keyword %>으로 검색하셨군요!!!</p>
				<p><%= keyword %>으로 검색한 결과는, </p>
				<div id="searchMap">
					<div id="proSearch">
						<input type="text">
						<input type="button" value="search">
						<p>교수님을 등록하시려면 <a href="./add_prof.jsp">Click</a>해 주세요.</p>
					</div>
				</div>
<<<<<<< HEAD
				
				
	<% 
	  
    try{
           
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amp","root","1234");        
        stmt = conn.createStatement();        
        rs = stmt.executeQuery("select * from reputation where name like '%"+keyword+"%' or school like '%"+keyword+"%';");
        
        
        while(rs.next()){	%>
			<tr align="center">
		        <td><a href="content.jsp?idx=<%=rs.getString("idx")%>"><%= rs.getString("id") %></a></td>
		        <td><%= rs.getString("name") %></td>
		        <td><%= rs.getString("email") %></td>				        
			</tr>
	<%
		}
    }catch(SQLException e){
    }finally{
    if(rs != null){try{rs.close();}catch(SQLException e){}}
    if(stmt != null){try{stmt.close();}catch(SQLException e){}}
    if(conn != null){try{conn.close();}catch(SQLException e){}}}      
	%>
			
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
=======
				<div id="searchContents">
					<div id="searchData">
						<table>
							<tr>
							<th>교수</th>
							<th>학교</th>
							</tr>
							<tr>
							<td><%= request.getParameter("keyword") %></td>
							<td>명지대학교</td>
							</tr>
						</table>					
					</div>
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

