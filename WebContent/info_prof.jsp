<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.sql.*"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<div id="siteWrap">		
		
		
		<div id="contentsWrap">					
		   <H1>It's Professor's personal Page!!!</H1>
		   <div id="searchContents">			
					<div id="searchData">
						<table border="1">
							<tr><th>교수</th>
									<th>E-mail</th>
									<th>학교</th>
									<th>전공</th>
							</tr>	
							
							<%
				request.setCharacterEncoding("utf-8");		    
				
				String keyword = request.getParameter("keyword");
				
				Class.forName("com.mysql.jdbc.Driver");
				
				Connection conn = null;
				Statement stmt = null;
				ResultSet rs = null;
				%>											
							<%				  
							try{								   
								conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amp","root","2477");        
								stmt = conn.createStatement();        
								rs = stmt.executeQuery("select * from reputation where name like '%"+keyword+"%';");		
					
							while(rs.next()){	%>
								<tr align="center">		
									<td><a href="./info_school.jsp?school=<%=keyword%>"><%= rs.getString("name") %></a></td>	
									<td><a href="./info_school.jsp?school=<%=keyword%>"><%= rs.getString("email") %></a></td>	
									<td><a href="./info_school.jsp?school=<%=keyword%>"><%= rs.getString("school") %></a></td>	
									<td><a href="./info_school.jsp?school=<%=keyword%>"><%= rs.getString("major") %></a></td>								
									<td><a href="./info_prof.jsp?name=<%=keyword %>"><%= rs.getString("phone") %></a></td>							
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
	</div>
			
			
		</div>		
		<div id="footer"><jsp:include page="footer.jsp" flush="false"/>	</div>
	</div>




					




</body>
</html>