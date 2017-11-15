<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Welcome</title>
    <link href="<c:url value="/css/styles.css" />" type="text/css" rel="stylesheet">
</head>

<body class="body">
<div>
    <jsp:include page="headerWelcome.jsp"/>
    <div class="scene" style="text-align:center">
        <h3>
            Welcome to online Shop
        </h3>
        <form action="login" method="post">
            <c:if test="${notValidNameNotification==true}">
                <p>You should enter your name</p>
            </c:if>
            <p>
                <input type="text" name="userName" placeholder="Enter your name">
            </p>
            <p><input type="checkbox" name="termAgreed" value="agree"> I agree with the term of service</p>
            <p>
                <input type="submit" value="Enter">
            </p>
        </form>
    </div>
    <jsp:include page="footerWelcome.jsp"/>
</div>
</body>
</html>
