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
    <h2>付款（样式改成自己的）</h2>
    <%--<form action="${pageContext.servletContext.contextPath}/alipay/alipay.trade.page.pay.jsp" method="post">--%>
    <form action="${pageContext.servletContext.contextPath}/pay/trade" method="post">
        <div class="row">
            <div class="input-group mb-3">
                <span class="input-group-text bg-warning">商户订单号</span>
                <input type="text" class="form-control" name="WIDout_trade_no" value="${tradeId}" readonly>
            </div>
            <div class="input-group mb-3">
                <span class="input-group-text">订单名称</span>
                <input type="text" class="form-control" name="WIDsubject" value="${tradeName}" readonly>
            </div>
            <div class="input-group mb-3">
                <span class="input-group-text">付款金额</span>
                <input type="number" class="form-control" name="WIDtotal_amount" value="${tradeMoney}" readonly>
            </div>
            <div class="input-group mb-3">
                <span class="input-group-text">商品描述</span>
                <input type="text" class="form-control" name="WIDbody" value="${tradeDesc}" readonly>
            </div>
            <div class="mb-3">
                <button class="btn btn-info" type="submit">付款</button>
                <span class="form-text">如果您点击“付款”按钮，即表示您同意该次的执行操作。</span>
            </div>
        </div>

        <h2>说明：</h2>
        <div class="show" name="divcontent">
            <dl class="content">
                <dt>商户订单号<span class="em">（你自己的订单ID，需要设置参数：tradeId）</span></dt>
                <dt>订单名称<span class="em">（你自己的订单名，需要设置参数：tradeName）</span></dt>
                <dt>付款金额<span class="em">（客户订单金额，需要设置参数：tradeMoney）</span></dt>
                <dt>商品描述<span class="em">（订单说明，需要设置参数：tradeDesc）</span></dt>
            </dl>
        </div>
    </form>
</div>
</body>
</html>
