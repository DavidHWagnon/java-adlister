<%--
  Created by IntelliJ IDEA.
  User: davidwagnon
  Date: 6/30/21
  Time: 9:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--This comment will NOT be seen in the dev tools--%>
<%--<%@ include file = ""%>--%>

<%--Directive Tags are symbolized with a <%@ directive attributes%>--%>
<% int instanceCount = 0; %>

<%
    int localCount =1;
    localCount +=1;
    instanceCount +=1;
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>Hello there!</h1>
    <%--This comment will be seen in the dev tools--%>
    <h2>The local count is <%=localCount%></h2>
    <h2>The instance count is <%=instanceCount%></h2>
    <%@include file="partials/national-parks.jsp"%>


</body>
</html>
