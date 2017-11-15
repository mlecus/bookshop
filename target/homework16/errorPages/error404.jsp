<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Error 404</title>
    <link href="<c:url value="/css/styles.css" />" type="text/css" rel="stylesheet">
</head>

<body class="body">
<div>
    <jsp:include page="../headerWelcome.jsp"/>
    <div class="scene" style="text-align:center">
        <h3>
            Houston, we have the 404 problem.
        </h3>
        <form action="logout" method="get">
            <p>
                <input type="submit" value="Back to home">
            </p>
        </form>
    </div>
    <jsp:include page="../footerWelcome.jsp"/>
</div>
</body>
</html>

