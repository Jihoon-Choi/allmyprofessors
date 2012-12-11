<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
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
		   <H1>교수 평가 페이지</H1>
		   <div id="searchContents">			
					<div id="searchData">
						<table border="1">
							<tr><th>교수</th>
									<th>E-mail</th>
									<th>학교</th>
									<th>전공</th>
									<th>연락처</th>
									<th>코멘트</th>
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
								conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amp","root","1234");        
								stmt = conn.createStatement();        
								rs = stmt.executeQuery("select * from reputation where name like '%"+keyword+"%';");		
							
					
							while(rs.next()){	%>
								<tr align="center">		
									<td><%= rs.getString("name") %></td>	
									<td><%= rs.getString("email") %></td>	
									<td><%= rs.getString("school") %></td>	
									<td><%= rs.getString("major") %></td>								
									<td><%= rs.getString("phone") %></td>	
								  <td><%= rs.getString("comment") %></td>	
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
						
						
							
				<H1>교수 평가하기</H1>
		<form action="./info_prof_db.jsp" method="post">
			<input type="hidden" name="keyword" value="<%= keyword%>">			
				<p>흥미도
					<input type="radio" name="heung" value="5"/>5점
					<input type="radio" name="heung" value="4"/>4점
					<input type="radio" name="heung" value="3"/>3점
					<input type="radio" name="heung" value="2"/>3점
					<input type="radio" name="heung" value="1"/>1점
				</p>
				<p>난이도
					<input type="radio" name="nan" value="5"/>5점
					<input type="radio" name="nan" value="4"/>4점
			  	<input type="radio" name="nan" value="3"/>3점
					<input type="radio" name="nan" value="2"/>2점
					<input type="radio" name="nan" value="1"/>1점
				</p>
				<p>명쾌함
					<input type="radio" name="myung" value="5"/>5점
					<input type="radio" name="myung" value="4"/>4점
			  	<input type="radio" name="myung" value="3"/>3점
					<input type="radio" name="myung" value="2"/>2점
					<input type="radio" name="myung" value="1"/>1점
				</p>
				
					<input type="text" name="comment">	
					
			<input type="submit" value="평가하기" style="width:100px">
		</form>		
		
			
				
			</div>
		<div id="footer"><jsp:include page="footer.jsp" flush="false"/>	</div>
	</div>
	</div>

</body>
</html>