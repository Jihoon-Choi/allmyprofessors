<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"
 import="java.util.*"  errorPage="DBError.jsp"%>
<%@page import="java.sql.*"%>


<!DOCTYPE html>
<html lang="ko">


<head>
	<meta charset="utf-8">
	<title>All My Professors</title>
	<link href="./css/style.css" rel="stylesheet" type="text/css">	
		<link href="http://twitter.github.com/bootstrap/1.4.0/bootstrap.min.css"
					rel="stylesheet" >
 		<script src="http://code.jquery.com/jquery-latest.js"></script>
		<script src="js/bootstrap.min.js"></script>	
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
			//String keyword = new String(str.getBytes("8859_1"), "UTF-8");
			request.setAttribute("keyword", keyword);
		
		
	    Class.forName("com.mysql.jdbc.Driver");
	    
	    Connection conn = null;
	    Statement stmt = null;
	    ResultSet rs = null;
	    %>
		    

		    <div id="sch_1">
				<p>검색값 : 
					<span class="input-xlarge uneditable-input"><%= keyword %></span>
				</p>
				<p>교수를 등록하시려면 <a href="./add_prof.jsp">Click</a>해 주세요.</p>
			</div>
				
				
				<br/><br/>   
          <div id="searchData_2">
            <table class="table table-striped">
              <tr>
                <th>이름</th>
                <th>4/2년제</th>
                <th>학교</th>
                <th>전공</th>
                
              </tr>          
				
				
				<% 
			  
		    try{
		           
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amp","root","1234");        
        stmt = conn.createStatement();        
        rs = stmt.executeQuery("select * from reputation where name like '%"+keyword+"%'");
        
        
        while(rs.next()){	%>
			<tr>		

			<tr align="center">
			<%-- 
		        <td><a href="content.jsp?idx=<%=rs.getString("idx")%>"><%= rs.getString("id") %></a></td> --%>

			<tr>		
			<tr align="center">
			<%-- 
		        <td><a href="content.jsp?idx=<%=rs.getString("idx")%>"><%= rs.getString("id") %></a></td> --%>
		        <td><a href="./info_prof.jsp?keyword=<%=keyword %>" target="_blank"><%= rs.getString("name") %></a></td>
		        <td><%= rs.getString("year") %></td>	
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
	</div>

</body>

</html>

