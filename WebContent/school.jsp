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
						<p>학교를 등록하시려면 <a href="./add_school.jsp">Click</a>해 주세요.</p>
					</div>
				</div>
				
				
				<% 
				  
			    try{
			           
			        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amp","root","1234");        
			        stmt = conn.createStatement();        
			        rs = stmt.executeQuery("select * from reputation where name like '%"+keyword+"%' or school like '%"+keyword+"%';");
        
        

			        while(rs.next()){	%>
							<tr align="center">	
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

        while(rs.next()){	%>

			<tr>		

			<tr align="center">
			<%-- 
		        <td><a href="content.jsp?idx=<%=rs.getString("idx")%>"><%= rs.getString("id") %></a></td> --%>

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
			
		</div>
	</div>
		
	<div id="footer">			
		<jsp:include page="footer.jsp" flush="false" />
	</div>

	</div>

</body>

</html>

