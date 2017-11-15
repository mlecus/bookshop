<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error</title>
    <link href="<c:url value="/css/styles.css" />" type="text/css" rel="stylesheet">
</head>
<body class="body">
<jsp:include page="../headerWelcome.jsp"/>
<div class="scene" style="text-align:center">
    <h3>
        You should accept the usage terms.
    </h3>
    <form action="logout" method="get">
        <p class="logoutButton">
            <input type="submit" value="Back to the welcome page">
        </p>
    </form>
</div>
<jsp:include page="../footer.jsp"/>
</body>
</html>
