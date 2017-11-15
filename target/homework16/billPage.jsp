<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Bill</title>
    <link href="<c:url value="/css/styles.css" />" type="text/css" rel="stylesheet">
</head>
<body class="body">
<jsp:include page="header.jsp"/>
<div class="scene">
    <div style="margin-left:100px">
        <h3>
            Dear ${user.name}, your order:
        </h3>
    </div>

    <div style="margin-left:100px">
        <c:set var="counter" value="0"/>
        <c:forEach items="${currentOrder}" var="currentOrderItem">
            <p>${counter = counter+1})${currentOrderItem.goods.name} ${currentOrderItem.goods.cost}$
                x ${currentOrderItem.amount}</p>
        </c:forEach>
        <p>Total = $ ${total}.</p>
        <p>Please, store you order Id: ${orderId}.</p>
    </div>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>
