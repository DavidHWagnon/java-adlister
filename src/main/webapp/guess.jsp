<%@ page import="java.util.Random" %>

<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Guess a number!"/>
    </jsp:include>
</head>
<body>
<form method="post" action="guess">
    <input type="text" disabled hidden value="${param.ranNum}">
    <label for="guessNum">Guess which number I picked, from 1 2 or 3.</label>
    <input type="text" name="guessNum" id="guessNum">
    <button type="submit">SEND IT</button>

    <%--  <h2>Testing Correct: ${param.ranNum}</h2>--%>
</form>
</body>
</html>