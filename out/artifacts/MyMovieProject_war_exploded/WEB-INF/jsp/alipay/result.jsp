<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="${pageContext.servletContext.contextPath}/static/css/fontawesome-all.css" rel="stylesheet"/>
    <link href="${pageContext.servletContext.contextPath}/static/css/bootstrap.css" rel="stylesheet"/>
    <script src="${pageContext.servletContext.contextPath}/static/js/jquery-3.6.0.js"></script>
    <script src="${pageContext.servletContext.contextPath}/static/js/bootstrap.bundle.js"></script>
</head>
<body>
<div class="container">
    <h1>支付结果</h1>
    <c:if test="${success}">
        <div>支付成功（自己写样式，返回主页之类）</div>
        <div>
            <span>订单ID：${tradeId}</span><br/>
            <span>支付宝订单编号：${tradeNo}</span><br/>
            <span>支付金额：${tradeMoney}</span><br/>
        </div>
    </c:if>
    <c:if test="${not success}">
        <div>支付失败！</div>
    </c:if>
</div>
</body>
</html>
