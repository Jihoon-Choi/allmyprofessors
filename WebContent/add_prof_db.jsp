<%@page contentType="text/html; charset=utf-8" errorPage="DBError.jsp" %>
<%@page import="java.sql.*"%>
<%
    
	
	String school = request.getParameter("school");
	String name = request.getParameter("name");	
    String major = request.getParameter("major");	
	String comment = request.getParameter("comment");
	
    if (school == null || name == null) 
        throw new Exception("�����͸� �Է��Ͻʽÿ�.");
    
	Connection conn = null;
    Statement stmt = null;
    
	try {
        Class.forName("com.mysql.jdbc.Driver");
		
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amp","root","2477");
        if (conn == null)
            throw new Exception("�����ͺ��̽��� ������ �� ����ϴ�.");
			
        stmt = conn.createStatement();
        String command = String.format("insert into reputation" +
                  "(school, name, major,comment) values ('%s','%s','%s','%s');",
                  school, name, major, comment);
        int rowNum = stmt.executeUpdate(command);
		
        if (rowNum < 1)
            throw new Exception("�����͸� DB�� �Է��� �� ����ϴ�.");
    }
    finally {
        try { 
            stmt.close();
        } 
        catch (Exception ignored) {
        }
        try { 
            conn.close();
        } 
        catch (Exception ignored) {
        }
    }
    response.sendRedirect("add_prof_end.jsp");
%>
