<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/24 0024
  Time: 10:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>result.jsp</title>
</head>
<body>
<%
    Cookie[] cookies = request.getCookies();
    for(Cookie c:cookies){
        out.print(c.getName()+"---"+c.getValue()+"<br/>");
    }
%>
</body>
</html>
