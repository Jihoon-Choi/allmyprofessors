<%@page contentType="text/html; charset=euc-kr" errorPage="DBError.jsp" %>
<%@page import="java.sql.*"%>
<%
    
  
  String email = request.getParameter("email");  
  String password = request.getParameter("passwd");
  String pwd_confirm = request.getParameter("pwd_confirm");
  String name = request.getParameter("name");
  String school = request.getParameter("school");
  String major = request.getParameter("major"); 
  
  if (email == null || email.trim().length() == 0)
    throw new Exception("email�� �ݵ�� �Է����ּ���.");
    
  if (password == null ||password.length() < 8)
      throw new Exception("��й�ȣ�� 8�� �̻� �Է����ּ���.");
  
  if (!password.equals(pwd_confirm)) 
    throw new Exception("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
    
  if (name == null || name.trim().length() == 0)
    throw new Exception("�̸��� �ݵ�� �Է����ּ���.");
    
    
  if (school == null || school.trim().length() == 0) 
      throw new Exception("�б��� �ݵ�� �Է����ּ���.");
    
    
  if (major == null || major.trim().length() == 0)
      throw new Exception("������ �ݵ�� �Է����ּ���.");
  

    
  Connection conn = null;
  Statement stmt = null;
    
  try {
        Class.forName("com.mysql.jdbc.Driver");
    
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/amp","root","1234");
        if (conn == null)
            throw new Exception("�����ͺ��̽��� ������ �� �����ϴ�.");
      
        stmt = conn.createStatement();
        String command = String.format("insert into student " +
                  "(student_email, password, name, major_name, school_name) values ('%s', '%s', '%s', '%s', '%s');",
                  email, password, name, major, school);
        int rowNum = stmt.executeUpdate(command);
    
        if (rowNum < 1)
            throw new Exception("�����͸� DB�� �Է��� �� �����ϴ�.");
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
    response.sendRedirect("signup_student_after.jsp");
%>
