<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    boolean ran = (boolean) request.getAttribute("random");
%>

<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Outcome Page"/>
    </jsp:include>
</head>
<body>
<c:choose>
    <%--  <c:when test="${param.guessNum} == ">--%>
    <c:when test="<%=ran%>">
        <h1>Good guess you did it.</h1>
    </c:when>
    <c:otherwise>
        <h1>Bad guess you missed it.</h1>
    </c:otherwise>
</c:choose>

<form method="post" action="guess">
    <label for="guessNum" hidden></label>
    <input type="text" id="guessNum" name="guessNum" hidden value="0">
    <button type="submit">Play Again.</button>
</form>

</body>
</html>