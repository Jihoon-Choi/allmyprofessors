<%@page contentType="text/html; charset=euc-kr" isErrorPage="true" %>
<% response.setStatus(200); %>
<HTML>
    <HEAD><TITLE>Login ����</TITLE></HEAD>
    <BODY>
        <H3>Login ����</H3>
        ���� �޽���: <%= exception.getMessage() %>
    </BODY>
</HTML>
