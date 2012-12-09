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
		    
<<<<<<< HEAD
		    <div id="sch_1">
				<p>안녕하세요, <%= keyword %>으로 검색하셨군요!!!</p>
				<p><%= keyword %>으로 검색한 결과는, </p><br/>
				<div id="searchMap">
					<div id="proSearch">
						<input type="text">
						<input type="button" value="search"><br/><br/>
						<p>학교를 등록하시려면 <a href="./add_school.jsp">Click</a>해 주세요.</p>
					</div>
				</div>
				</div>
				
				<br/><br/>   
          <div id="searchData_2">
            <table width="700"  height="300">
              <tr>
                <th>학교</th>
                <th>지역</th>
              </tr>
              <tr>
              <td>명지대학교</td>
              <td>용인</td>
              </tr>
              <tr>           
              <td>용인대학교</td>
              <td>용인</td>
              </tr>
              <tr>            
              <td>아주대학교</td>
              <td>수원</td>
              </tr>
              <tr>            
              <td>한국외국어대학교</td>
              <td>서울</td>
              </tr>
              <tr>       
              <td>명지대학교</td>
              <td>서울</td>
              </tr>
              <tr>            
              <td>한양대학교</td>
              <td>안산</td>
              </tr>
              <tr>             
              <td>경희대학교</td>
              <td>수원</td>
              </tr>
				
				
	<% 
	  
    try{
           
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amp","root","1234");        
        stmt = conn.createStatement();        
        rs = stmt.executeQuery("select * from reputation where name like '%"+keyword+"%' or school like '%"+keyword+"%';");
        
        
        while(rs.next()){	%>
<<<<<<< HEAD
			<tr>		
=======
			<tr align="center">
			<%-- 
		        <td><a href="content.jsp?idx=<%=rs.getString("idx")%>"><%= rs.getString("id") %></a></td> --%>
>>>>>>> 03e87e811fa4ca73d6516ae83c696d400fcaed94
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
			
			</table>
=======
		    
					<p>검색결과 : <%= keyword  %>	</p>
								
								
				<p>교수님을 등록하시려면 <a href="./add_school.jsp">Click</a>해 주세요.</p>
					
				
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

       <% while(rs.next()){	%>

		<table>

			<tr>		

			<tr align="center">
			<%-- 
		        <td><a href="content.jsp?idx=<%=rs.getString("idx")%>"><%= rs.getString("id") %></a></td> --%>

		        <td><%= rs.getString("name") %></td>
		        <td><%= rs.getString("email") %></td>				        
			</tr>
		</table>
	<%
		}
    }catch(SQLException e){
    }finally{
    if(rs != null){try{rs.close();}catch(SQLException e){}}
    if(stmt != null){try{stmt.close();}catch(SQLException e){}}
    if(conn != null){try{conn.close();}catch(SQLException e){}}}      
	%>
=======
				<div id="searchContents">			
					<div id="searchData">
						<table width="550" border="1">
							<tr>
								<th>학교</th>
								<th>교수</th>
								<th>전공</th>
							</tr>
							
							
							<%				  
							try{
								   
								conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amp","root","1234");        
								stmt = conn.createStatement();        
								rs = stmt.executeQuery("select * from reputation where school like '%"+keyword+"%';");
					
					
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
<<<<<<< HEAD

=======
>>>>>>> 980df8bb469cf3679292a49f46dc959897c4a996
			
>>>>>>> 1758228aa1a991c3aaa19523a5849ee0fb0d3a90
		</div>
	</div>
	<br/><br/><br/><br/><br/><br/><br/>	
	<div id="footer">			
		<jsp:include page="footer.jsp" flush="false" />
	</div>

	</div>

</body>

</html>

