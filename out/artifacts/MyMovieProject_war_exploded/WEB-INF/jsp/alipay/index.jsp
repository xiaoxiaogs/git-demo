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
<%--bootstrap都需要一个最外层的div包裹--%>
<div class="container">
    <h1>模板</h1>

    <h2>支付宝支付测试</h2>
    <div>订单信息：一个女装xxx</div>
    <div>订单ID：123（实际中可以是字符串，后端修改类型即可）</div>
    <a class="btn btn-link" href="${pageContext.servletContext.contextPath}/pay?id=123" title="去支付页面支付">支付该订单</a>

</div>
</body>
</html>