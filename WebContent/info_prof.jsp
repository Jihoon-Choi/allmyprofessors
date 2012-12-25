<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
    <%@page import="java.sql.*"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>Insert title here</title>
		<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
	
</head>



								

<body>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="js/bootstrap.min.js"></script>
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
								while(rs.next()){
%>
	<div id="siteWrap">		
		
		<div id="contentsWrap">					
		  
		   <div id="searchContents">
		   <p>
		   		<form class="form-horizontal">
				  <div class="control-group">
				    <label class="control-label" for="inputEmail">Name</label>
				    <div class="controls">
				    	 <%= rs.getString("name") %>
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputEmail">School</label>
				    <div class="controls">
				   	  <%= rs.getString("school") %>
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputEmail">Major</label>
				    <div class="controls">
				    <%= rs.getString("major") %>
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputEmail">Tell</label>
				    <div class="controls">
				    <%= rs.getString("tell") %>
				    </div>
				  </div>
				  <div class="control-group">
				    <label class="control-label" for="inputEmail">Comment</label>
				    <div class="controls">
				    <%= rs.getString("comment") %>
				    </div>
				  </div>
			
				</form>
			</p>			
					
							
									
				
										<%
								}
										}catch(SQLException e){
										}finally{
										if(rs != null){try{rs.close();}catch(SQLException e){}}
										if(stmt != null){try{stmt.close();}catch(SQLException e){}}
										if(conn != null){try{conn.close();}catch(SQLException e){}}}      
										%>				
						
						
						
							
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
	</div>

</body>
</html>