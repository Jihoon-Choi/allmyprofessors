<%@page contentType="text/html; charset=euc-kr" isErrorPage="true" %>
<% response.setStatus(200); %>
<HTML>
    <HEAD><TITLE>�����ͺ��̽� ����</TITLE></HEAD>
    <BODY>
        <H3>�����ͺ��̽� ����</H3>
        ���� �޽���: <%= exception.getMessage() %>
    </BODY>
</HTML>