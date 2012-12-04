<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%
String userid=request.getParameter("email");
String passwd=request.getParameter("passwd");
%>
 

<html>
<head>
<title>회원인증</title>
<meta http-equiiv="Content-Type" content="text/html" charset="euc-kr">
<SCRIPT LANGUAGE="JavaScript">
function fail_login(){
        var email="<%=email%>";
        var passwd="<%=passwd%>";
        if(userid!="webmaster"){
           alert("로그인 아이디가 틀립니다.");
           history.go(-1);
        }
        else if(passwd!="manager"){
           alert("비밀번호가 틀립니다.");
           history.go(-1);
        }
}
</SCRIPT>
</head>
<body onload=fail_login();>

</body>
</html>
 
