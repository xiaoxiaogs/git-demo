<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SpringMVC</title>
    <%--添加Bootstrap和fontawesome的样式--%>
    <link href="${pageContext.servletContext.contextPath}/static/css/fontawesome-all.css" rel="stylesheet"/>
    <link href="${pageContext.servletContext.contextPath}/static/css/bootstrap.css" rel="stylesheet"/>

    <link href="${pageContext.servletContext.contextPath}/static/css/captcha-word-click.css" rel="stylesheet"/>
</head>

<body>
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

<%--添加boostrap和jquery的脚本--%>
<script src="${pageContext.servletContext.contextPath}/static/js/jquery-3.6.0.js"></script>
<script src="${pageContext.servletContext.contextPath}/static/js/bootstrap.bundle.js"></script>
<script src="${pageContext.servletContext.contextPath}/static/js/fontawesome.js"></script>

<script src="${pageContext.servletContext.contextPath}/static/js/captcha-index.js"></script>

<%--自定义脚本--%>
<script>
    let start = 0;
    let startY = 0;
    let currentCaptchaId = null;
    let movePercent = 0;
    const bgImgWidth = $(".bg-img-div").width();
    let end = 206;
    let startSlidingTime;
    let entSlidingTime;
    const trackArr = [];
    let clickCount = 0;
    $(function () {
        refreshCaptcha();
    })
    $(".content").click(function (event) {
        console.log(event);
        clickCount++;
        if (clickCount === 1) {
            startSlidingTime = new Date();
            // move 轨迹
            window.addEventListener("mousemove", move);
        }
        trackArr.push({
            x: event.offsetX,
            y: event.offsetY,
            type: "click",
            t: (new Date().getTime() - startSlidingTime.getTime())
        });
        const left = event.offsetX - 10;
        const top = event.offsetY - 10;
        $(".bg-click-div").append("<span class='click-span' style='left:" + left + "px;top: " + top + "px'>" + clickCount + "</span>")
        if (clickCount === 4) {
            // 校验
            entSlidingTime = new Date();
            window.removeEventListener("mousemove", move);
            valid();
        }
    });

    function move(event) {
        if (event instanceof TouchEvent) {
            event = event.touches[0];
        }
        console.log("x:", event.offsetX, "y:", event.offsetY, "time:" ,new Date().getTime() - startSlidingTime.getTime());
        trackArr.push({x: event.offsetX, y:event.offsetY, t: (new Date().getTime() - startSlidingTime.getTime()), type: "move"});
    }


    $("#slider-close-btn").click(() => {

    });

    $("#slider-refresh-btn").click(() => {
        refreshCaptcha();
    });

    function valid() {
        console.log("=======================")
        console.log("aaa",trackArr);
        console.log("startTime", startSlidingTime);
        console.log("endTime", entSlidingTime);
        console.log("track", JSON.stringify(trackArr));
        let data = {
            bgImageWidth: bgImgWidth,
            bgImageHeight: $(".content").height(),
            sliderImageWidth: -1,
            sliderImageHeight: -1,
            startSlidingTime: startSlidingTime,
            entSlidingTime: entSlidingTime,
            trackList: trackArr
        };
        console.log(data);


        $.ajax({
            type:"POST",
            url:"${pageContext.servletContext.contextPath}/captcha/check?id=" + currentCaptchaId,
            contentType: "application/json", //必须这样写
            dataType:"json",
            data:JSON.stringify(data),//schoolList是你要提交是json字符串
            success:function (res) {
                console.log(res);
                if (res) {
                    alert("验证成功!!!");
                }
                refreshCaptcha();
            }

        })
    }

    function refreshCaptcha() {
        $.get("${pageContext.servletContext.contextPath}/captcha/gen?type=WORD_IMAGE_CLICK", function (data) {
            reset();
            currentCaptchaId = data.id;
            $("#bg-img").attr("src", data.captcha.backgroundImage);
            $("#slider-img").attr("src", data.captcha.sliderImage);
            $(".tip-img").attr("src", data.captcha.sliderImage);
        })
    }

    function reset() {
        $("#slider-move-btn").css("background-position", "-5px 11.79625%")
        $("#slider-move-btn").css("transform", "translate(0px, 0px)")
        $("#slider-img-div").css("transform", "translate(0px, 0px)")
        start = 0;
        startSlidingTime = null;
        entSlidingTime = null;
        trackArr.length = 0;
        $(".bg-click-div span").remove();
        clickCount = 0;
        movePercent = 0;
        currentCaptchaId = null;
        startY = 0;
        window.removeEventListener("mousemove", move);
    }
</script>

</body>
</html>
