<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<html>
<head>
	<meta charset="utf-8">
	<title>로그인 후 테스트</title>
	<link href="./css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<h2>로그인 후 테스트</h2>
<%
request.setCharacterEncoding("euc-kr");
String email=request.getParameter("email");
String passwd=request.getParameter("passwd");

if(email!=null && passwd!=null){
	session.setAttribute("email",email);
	session.setAttribute("passwd",passwd);
}
%>
<h3><%=email %>님 환영합니다.</h3>

</body></html>


<%-- <%
String userid=request.getParameter("email");
String passwd=request.getParameter("passwd");
%>
 

<html>
<head>
<title>ȸ������</title>
<meta http-equiiv="Content-Type" content="text/html" charset="euc-kr">
<SCRIPT LANGUAGE="JavaScript">
function fail_login(){
        var email="<%=email%>";
        var passwd="<%=passwd%>";
        if(userid!="webmaster"){
           alert("�α��� ���̵� Ʋ���ϴ�.");
           history.go(-1);
        }
        else if(passwd!="manager"){
           alert("��й�ȣ�� Ʋ���ϴ�.");
           history.go(-1);
        }
}
</SCRIPT>
</head>
<body onload=fail_login();>

</body>
</html>
--%>
