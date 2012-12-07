<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="DBError.jsp"%>
<%@page import="java.sql.*"%>
<%
	request.setCharacterEncoding("UTF-8"); %>
	<%=request.getCharacterEncoding()%><% 
	String str = request.getParameter("keyword");	
	String str2 = new String(str.getBytes("8859_1"), "UTF-8");
	
	String sel = request.getParameter("sel");
	
	%>
	
	한글 출력 테스트	KEYWORD:<%=str2 %>
	
	
	<%
	 if (sel.equals("1")) {
		/* request.setAttribute("keyword", str2); */
		RequestDispatcher dispatcher = request.getRequestDispatcher("professor.jsp");
		dispatcher.forward(request, response);

		//response.sendRedirect("professor.jsp");
	}

	else {
		/* request.setAttribute("keyword", str2);	 */	
		RequestDispatcher dispatcher = request.getRequestDispatcher("school.jsp");		
		dispatcher.forward(request, response);
		// response.sendRedirect("school.jsp");
	}
%>

