<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Order</title>
    <link href="<c:url value="/css/styles.css" />" type="text/css" rel="stylesheet">
</head>
<body class="body">
<jsp:include page="header.jsp"/>
<div class="scene">
    <div style="margin-left:100px">
        <h3>
            Hello ${user.name}!
        </h3>
    </div>

    <div style="margin-left:100px">

        <c:if test="${empty currentOrder}">
            <h4>Please make you order.</h4>
        </c:if>

        <c:if test="${!empty currentOrder}">
            <h4>You have already ordered:</h4>
            <c:set var="counter" value="0"/>
            <c:forEach items="${currentOrder}" var="currentOrderItem">
                <p>${counter = counter+1})${currentOrderItem.goods.name} ${currentOrderItem.goods.cost}$
                    x ${currentOrderItem.amount}</p>
            </c:forEach>
            <p>Total = $ ${total}.</p>
        </c:if>


    </div>
    <div style="margin-left:100px">
        <c:if test="${!empty currentOrder}">
            <h4>Anything else?</h4>
        </c:if>
        <form action="addItem" method="post">
            <select size="3" name="goods">
                <c:forEach items="${goodsList}" var="goods">
                    <option value=${goods.id}>${goods.name} (${goods.cost}$)</option>
                </c:forEach>
            </select>
            <p style="text-align: left; vertical-align: top">
                <input type="submit" value="Add">
                <c:if test="${!empty currentOrder}">
                    <button formmethod="get" formaction="submitOrder?"> Submit</button>
                </c:if>
            </p>
        </form>

    </div>
</div>
<jsp:include page="footer.jsp"/>

</body>
</html>
