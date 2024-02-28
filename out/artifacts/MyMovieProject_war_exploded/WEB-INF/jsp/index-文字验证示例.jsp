<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SpringMVC</title>
    <%--添加Bootstrap和fontawesome的样式--%>
    <link href="${pageContext.servletContext.contextPath}/static/css/fontawesome-all.css" rel="stylesheet"/>
    <link href="${pageContext.servletContext.contextPath}/static/css/bootstrap.css" rel="stylesheet"/>

    <%--使用图形验证步骤1：--%>
    <link href="${pageContext.servletContext.contextPath}/static/css/captcha-word-click.css" rel="stylesheet"/>

</head>
<body>
<div class="container">
    <h1>图片验证使用说明</h1>
    <div class="row">
        <div class="col">
            <ul class="list-group">
                <li class="list-group-item">1. 后端部分：参考captcha包中所有类 + controller + spring.xml配置 + resources目录图片</li>
                <li class="list-group-item">2. 导入css样式文件，比如：captcha-word-click.css</li>
                <li class="list-group-item">3. 编写表单和验证HTML代码，为了保障样式，表单form添加captcha类，其他复制粘贴</li>
                <li class="list-group-item">4. 导入外部js文件2个，第一个captcha-index.js以及对应验证类型的：captcha-word-click.js</li>
                <li class="list-group-item">5. 调用init方法，传递必要的参数：成功回调、生成验证码链接、校验链接即可</li>
            </ul>
        </div>
    </div>
    <div class="py-4"></div>

    <h2>测试图片验证</h2>
    <div class="text-center">
        <div class="btn-group">
            <button class="btn btn-primary" onclick="toggle('${pageContext.servletContext.contextPath}/captcha/slider')">滑块验证码</button>
            <button class="btn btn-primary" onclick="toggle('${pageContext.servletContext.contextPath}/captcha/rotate')">旋转验证码</button>
            <button class="btn btn-primary" onclick="toggle('${pageContext.servletContext.contextPath}/captcha/concat')">滑动还原验证码</button>
            <button class="btn btn-primary" onclick="toggle('${pageContext.servletContext.contextPath}/captcha/word-click')">点选验证码</button>
        </div>
        <div class="py-4 text-center">
            <iframe id="captcha-iframe" style="min-height: 400px;" class="captcha-iframe"
            src="${pageContext.servletContext.contextPath}/captcha/slider"></iframe>
        </div>
    </div>

    <h2>使用表单结合图形验证</h2>
    <form class="captcha row g-4" action="${pageContext.servletContext.contextPath}/login" method="post">
        <div class="col-6">
            <input class="form-control" name="username" placeholder="username"/>
        </div>
        <div class="col-6">
            <input class="form-control" type="password" name="password" placeholder="password"/>
        </div>
        <div class="col-12">
            <input id="submitBtn" class="btn btn-info" type="submit" value="验证并登录"/>
        </div>
        <%--使用图形验证步骤2：--%>
        <div class="col-6 offset-3">
            <div class="slider">
                <div class="slider-move">
                    <span class="slider-move-span">请依次点击:</span><img src="" class="tip-img">
                </div>
                <div class="content">
                    <div class="bg-img-div"><img id="bg-img" src="" alt/></div>
                    <div class="bg-click-div"></div>
                </div>
                <div class="bottom">
                    <div class="close-btn" id="slider-close-btn"></div>
                    <div class="refresh-btn" id="slider-refresh-btn"></div>
                </div>
            </div>
        </div>

    </form>
</div>

<%--添加boostrap和jquery的脚本--%>
<script src="${pageContext.servletContext.contextPath}/static/js/jquery-3.6.0.js"></script>
<script src="${pageContext.servletContext.contextPath}/static/js/bootstrap.bundle.js"></script>
<script src="${pageContext.servletContext.contextPath}/static/js/fontawesome.js"></script>

<%--使用图形验证步骤3：--%>
<script src="${pageContext.servletContext.contextPath}/static/js/captcha-index.js"></script>
<script src="${pageContext.servletContext.contextPath}/static/js/captcha-word-click.js"></script>

<%--自定义脚本--%>
<script>
    function toggle(url) {
        $("#captcha-iframe").attr("src", url);
    }

<%--使用图形验证步骤4：--%>
    /*
    参数：
    success 验证成功回调，一般是提交表单到后端
    fail 失败回调, 可以不传
    checkUrl 用于验证的URL链接
    generateUrl 用于生成验证图表的链接
    close 关闭图标的按钮，可以不传
     */
    init({
        generateUrl: '${pageContext.servletContext.contextPath}/captcha/gen?type=WORD_IMAGE_CLICK',
        checkUrl: '${pageContext.servletContext.contextPath}/captcha/check',
        success() {
            // 校验成功
            console.log("验证成功!!!");
            // 提交表单
            $('form').submit()
        },
        fail() {
            console.log('失败，重试！')
        },
        close() {
            $('.slider').hide()
            $('#submitBtn').show()
        },
    })

    $('#submitBtn').click(function () {
        // 表单验证，没通过则直接返回，写自己的逻辑
        if (false) {
            return false
        }
        // 表单验证通过后显示图形验证码
        $(this).hide()
        refreshCaptcha()
        return false
    })
</script>
</body>
</html>
