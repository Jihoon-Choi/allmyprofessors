<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%
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
 
