<%@ page import="com.example.tp1.User" %><%--
  Created by IntelliJ IDEA.
  User: nassi
  Date: 11/21/2024
  Time: 2:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

  <%
    String login = request.getParameter("login");
    String password = request.getParameter("password");

    User user = new User(login , password);

    session = request.getSession();
    session.setAttribute("user", user);

    response.sendRedirect("affiche.jsp");
  %>

</body>
</html>
