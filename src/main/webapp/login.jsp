<%--
  Created by IntelliJ IDEA.
  User: davidwagnon
  Date: 7/1/21
  Time: 12:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="javax.servlet.annotation.WebServlet"%>
<%@ page import="javax.servlet.http.HttpServlet" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.io.*,java.util.*, javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    System.out.println("HTTP method:" + request.getMethod());
    if("POST".equals(request.getMethod())) {
        String user = request.getParameter("username");
        String pass = request.getParameter("password");
        if(user.equals("admin") && pass.equals("password")){
            response.sendRedirect("/profile.jsp");
        } else {
            response.sendRedirect("/login.jsp");
        }

}
%>


<html>
<head>
    <title>Login Page</title>
</head>
<body>
    <%@include file="partials/head.jsp"%>
    <%@ include file="partials/navbar.jsp"%>
    <form method="post" action="/login.jsp">
        <label for="username">Username:</label><br>
        <input type="text" id="username" name="username" value="username" placeholder="Username"><br>
        <label for="password">Password:</label><br>
        <input type="text" id="password" name="password" value="password" placeholder="Password"><br><br>
        <input type="submit" value="Submit">

    </form>
</body>
</html>

