<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html><!--<![endif]--><head>
    <!--









        电影选座














     -->
    <title>选座 - 猫眼电影 - 一网打尽好电影</title>

    <link rel="dns-prefetch" href="//p0.meituan.net">
    <link rel="dns-prefetch" href="//p1.meituan.net">
    <link rel="dns-prefetch" href="//ms0.meituan.net">
    <link rel="dns-prefetch" href="//ms1.meituan.net">
    <link rel="dns-prefetch" href="//lx.meituan.net">
    <link rel="dns-prefetch" href="//lx1.meituan.net">
    <link rel="dns-prefetch" href="//plx.meituan.com">


    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta http-equiv="cleartype" content="yes">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">

    <meta name="HandheldFriendly" content="true">
    <meta name="format-detection" content="email=no">
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <script async="" src="https://obj.pipi.cn/festatic/common/media/1662611002507-mta.min.js"></script><script src="https://hm.baidu.com/hm.js?703e94591e87be68cc8da0da7cbd0be2"></script><script>"use strict";!function(){var i=0<arguments.length&&void 0!==arguments[0]?arguments[0]:"_Owl_",n=window;n[i]||(n[i]={isRunning:!1,isReady:!1,preTasks:[],dataSet:[],use:function(i,t){this.isReady&&n.Owl&&n.Owl[i](t),this.preTasks.push({api:i,data:[t]})},add:function(i){this.dataSet.push(i)},run:function(){var t=this;if(!this.isRunning){this.isRunning=!0;var i=n.onerror;n.onerror=function(){this.isReady||this.add({type:"jsError",data:arguments}),i&&i.apply(n,arguments)}.bind(this),(n.addEventListener||n.attachEvent)("error",function(i){t.isReady||t.add({type:"resError",data:[i]})},!0)}}},n[i].run())}();</script>
    <script>
        cid = "c_2yzd0xp5";
        ci = 70;
        window.system = {"user":{"id":2286688208,"token":"AgEnIZoE3cPdsh0gTvEGc_hlezudypT0ruhHo5mNxPFhmEzY1DqN_gXHZrHPbZLOMJagPacVDcHP_gAAAAC6HAAA3jN0WQdAw298-pWU5QrQVimgMgeECiQ9Dym7dD-1bf0lvByz2xlEZAYJhJP-iaDy","username":"HLU499818037","profile":{"age":"25","authInfo":"","avatarType":255,"avatarurl":"https://img.meituan.net/avatar/838a39966ce4c8899652f1a60944668911421.jpg","birthday":-2240553957000,"cancelStatus":null,"celebrityId":null,"certificateIcon":"","certificateName":"","certificateRedirectUrl":"","city":null,"currentExp":402,"gender":0,"id":2286688208,"interest":"","juryLevel":0,"maoyanAge":"5","marriage":"","mobile":"87480fa0979827c2c32185ea5a4c5024","nextTitle":"","nickName":"HLU499818037","nickNameStatus":0,"occupation":"","registerTime":1543377666000,"roleInfo":"","roleType":0,"signature":"","signatureStatus":0,"ticketCount":9,"title":"Lv2 会员","tmpNickName":"","tmpSignature":"","topicCount":0,"totalExp":850,"uid":1875996408,"userLevel":2,"userNextLevel":3,"username":"HLU499818037","vipInfo":"","vipType":0,"visitorCount":0}},"uid":2286688208,"seatsPrice":{"1":{"expression":"41X1","price":"${schedule.schedulePrice}"},"2":{"expression":"41X2","price":"${schedule.schedulePrice*2}"},"3":{"expression":"41X3","price":"${schedule.schedulePrice*3}"},"4":{"expression":"41X4","price":"${schedule.schedulePrice*4}"},"5":{"expression":"41X5","price":"${schedule.schedulePrice*5}"},"6":{"expression":"41X6","price":"${schedule.schedulePrice*6}"}},"remind":"","uuid":"859123809A6511EEA569032999F424BE6B99E8D6F1964DC0B1D4D1DA997B227B","cinemaId":5841};

        window.openPlatform = '';
        window.openPlatformSub = '';
        window.$mtsiFlag = '0';
        window.NODE_ENV = 'production';

    </script>
    <link rel="stylesheet" href="//s3.meituan.net/static-prod01/com.sankuai.movie.fe.mywww-files/common.118924d9.css">
    <link rel="stylesheet" href="//s3.meituan.net/static-prod01/com.sankuai.movie.fe.mywww-files/cinemas-seat.b8adee6e.css">
    <script crossorigin="anonymous" src="//s3.meituan.net/static-prod01/com.sankuai.movie.fe.mywww-files/stat.b4e55d45.js"></script>
    <script>if(window.devicePixelRatio >= 2) { document.write('<link rel="stylesheet" href="//s3.meituan.net/static-prod01/com.sankuai.movie.fe.mywww-files/image-2x.8ba7074d.css"/>') }</script>
    <style>
        @font-face{font-family: "mtsi-font";src:url("//s3plus.meituan.net/v1/mss_73a511b8f91f43d0bdae92584ea6330b/font/432017e7.eot");src:url("//s3plus.meituan.net/v1/mss_73a511b8f91f43d0bdae92584ea6330b/font/432017e7.eot?#iefix") format("embedded-opentype"),url("//s3plus.meituan.net/v1/mss_73a511b8f91f43d0bdae92584ea6330b/font/432017e7.woff");}
        .stonefont {
            font-family: mtsi-font;
        }
    </style>
    <script>
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?703e94591e87be68cc8da0da7cbd0be2";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>
    <style type="text/css">@media only screen and (min-width:320px){.fontSize{font-size:16px}}@media only screen and (min-width:480px){.fontSize{font-size:24px}}@media only screen and (min-width:560px){.fontSize{font-size:30px}}.mtfe-tip-mtfe-wrapper{display:none;position:absolute;width:70%;left:50%;-webkit-transform:translateX(-50%);transform:translateX(-50%);top:9em;padding:.5em 1em;border-radius:.25em;background:rgba(0,0,0,.7);color:#fff;z-index:3;text-align:center}@media only screen and (min-width:320px){.mtfe-tip-mtfe-wrapper{font-size:16px}}@media only screen and (min-width:480px){.mtfe-tip-mtfe-wrapper{font-size:24px}}@media only screen and (min-width:560px){.mtfe-tip-mtfe-wrapper{font-size:30px}}.mtfe-model-mtfe-wrapper{display:none;position:absolute;width:80%;left:50%;-webkit-transform:translateX(-50%);transform:translateX(-50%);top:9em;padding:.5em 0;border-radius:.25em;background:#fff;color:#fff;z-index:3;text-align:center}@media only screen and (min-width:320px){.mtfe-model-mtfe-wrapper{font-size:16px}}@media only screen and (min-width:480px){.mtfe-model-mtfe-wrapper{font-size:24px}}@media only screen and (min-width:560px){.mtfe-model-mtfe-wrapper{font-size:30px}}.mtfe-smscodeyoda-mtfe-wrapper{display:none;width:80%;left:50%;-webkit-transform:translateX(-50%);transform:translateX(-50%);top:40%;position:absolute;z-index:2}.mtfe-mask-mtfe-wrapper{margin:0;padding:0;position:absolute;top:0;left:0;display:none;background:rgba(0,0,0,.6);width:100%;height:100%;z-index:1}.iLoginComp-wrapper{width:100%;padding:1.2em;-webkit-box-sizing:border-box;box-sizing:border-box}@media only screen and (min-width:320px){.iLoginComp-wrapper{font-size:16px}}@media only screen and (min-width:480px){.iLoginComp-wrapper{font-size:24px}}@media only screen and (min-width:560px){.iLoginComp-wrapper{font-size:30px}}.iLoginComp-phone-num-wrapper{display:-webkit-box;display:-ms-flexbox;display:flex;-ms-flex-pack:distribute;justify-content:space-around;border-bottom:1px solid #e5e5e5;padding-bottom:.6em}.iLoginComp-phone-num-input{-webkit-box-flex:1;-ms-flex:1;flex:1;border:0;min-width:0;-webkit-tap-highlight-color:rgba(0,0,0,0);font-size:1em}.iLoginComp-phone-num-input,.iLoginComp-phone-num-input:focus{outline:none;background-color:inherit}.iLoginComp-phone-num-input::-webkit-input-placeholder{color:#ccc}.iLoginComp-phone-num-input:-ms-input-placeholder,.iLoginComp-phone-num-input::-ms-input-placeholder{color:#ccc}.iLoginComp-phone-num-input::placeholder{color:#ccc}.iLoginComp-verify-code-wrapper{display:-webkit-box;display:-ms-flexbox;display:flex;-ms-flex-pack:distribute;justify-content:space-around;margin-top:1em;padding-bottom:.6em;border-bottom:1px solid #e5e5e5;width:100%;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none}.iLoginComp-code-input{-webkit-box-flex:1;-ms-flex:1;flex:1;width:100%;border:0;min-width:0;-webkit-tap-highlight-color:rgba(0,0,0,0);font-size:1em}.iLoginComp-code-input,.iLoginComp-code-input:focus{outline:none;background-color:inherit}.iLoginComp-code-input::-webkit-input-placeholder{color:#ccc}.iLoginComp-code-input:-ms-input-placeholder,.iLoginComp-code-input::-ms-input-placeholder{color:#ccc}.iLoginComp-code-input::placeholder{color:#ccc}.iLogincomp-opbtn-wrapper{margin-top:2em}.iLoginComp-cancel-btn-wrapper,.iLoginComp-login-btn-wrapper{text-align:center;color:#999;background:#e5e5e5;height:2.8em;line-height:2.8em;border-radius:.3em;width:100%;display:block;border:none;cursor:pointer;font-size:1em;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;-webkit-tap-highlight-color:rgba(0,0,0,0)}.iLoginComp-cancel-btn-wrapper:focus,.iLoginComp-login-btn-wrapper:focus{outline:0}.iLoginComp-login-btn-wrapper.iLogincomp-active{color:#fff;background:#06c1ae}.iLoginComp-send-verify-code-text{font-size:.8em;color:#999;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center;background-color:#dcdcdc;border:1px solid #dcdcdc;padding:.2em .5em;border-radius:.2em;-webkit-box-sizing:border-box;box-sizing:border-box;cursor:pointer;-webkit-tap-highlight-color:rgba(0,0,0,0)}.iLoginComp-send-verify-code-text.iLogincomp-active{color:#06c1ae;border:1px solid #06c1ae;background:0}.iLogincomp-count-down{color:#999;background-color:#dcdcdc;-webkit-box-sizing:border-box;box-sizing:border-box;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center;width:2em}</style><meta name="lx:autopv" from="v3api" content="off"><meta name="lx:appnm" from="v3api" content="movie"><meta name="lx:category" from="v3api" content="movie"></head>
<body>


<div class="header">
    <div class="header-inner">
        <a href="//www.maoyan.com" class="logo" data-act="icon-click">猫眼电影</a>
        <div class="city-container" data-val="{currentcityid:70 }">
            <div class="city-selected">
                <div class="city-name">
                    长沙
                    <span class="caret"></span>
                </div>
            </div>
            <div class="city-list" data-val="{ localcityid: 70 }">
                <div class="city-list-header">定位城市：<a class="js-geo-city" data-ci="70">长沙</a></div>
            </div>
        </div>


        <div class="nav">
            <div><a href="${pageContext.servletContext.contextPath}/mainPage" data-act="home-click" class="active">首页</a></div>
            <div><a href="${pageContext.servletContext.contextPath}/movieList" data-act="movies-click">电影</a></div>
            <div><a href="${pageContext.servletContext.contextPath}/list" data-act="cinemas-click">影院</a></div>
            <c:if test="${user.userId==2}">
                <div><a href="${pageContext.servletContext.contextPath}/admin/user" data-act="cinemas-click">后台</a></div>
            </c:if>
            <div><a href="http://www.gewara.com">演出</a></div>
            <!-- <div><a href="/dramas" data-act="TVdramas-click" >电视剧</a></div> -->
            <!-- <div><a href="/board" data-act="board-click" >榜单</a></div> -->
            <!--             <div><a href="/news" data-act="hotNews-click" >热点</a></div>
 -->
            <!-- <div><a href="/edimall"  >商城</a></div> -->
        </div>

        <div class="user-info">
            <div class="user-avatar J-login">
                <c:if test="${user==null}">
                    <img src="https://p0.meituan.net/movie/7dd82a16316ab32c8359debdb04396ef2897.png">
                    <span class="caret"></span>
                    <ul class="user-menu no-login-menu">
                        <li><a href="login">登录</a></li>
                    </ul>
                </c:if>
                <c:if test="${user!=null}">
                    <img src="https://img.meituan.net/avatar/838a39966ce4c8899652f1a60944668911421.jpg">
                    <span class="caret"></span>
                    <ul class="user-menu yes-login-menu">
                        <li class="text"><a href="#">我的订单</a></li>
                        <li class="text login-name" title="HLU499818037"><a href="center">基本信息</a></li>
                        <li class="text"><a href="statr?start=0" class="J-logout" data-act="logout-click">退出登录</a></li>
                    </ul>
                </c:if>
            </div>
        </div>

        <form style="display: none;" action="/query" target="_blank" class="search-form" data-actform="search-click">
            <input name="kw" class="search" type="search" maxlength="32" placeholder="找影视剧、影人、影院" autocomplete="off">
            <input class="submit" type="submit" value="">
        </form>

        <div class="app-download">
            <a href="/app" target="_blank">
                <span class="iphone-icon"></span>
                <span class="apptext">APP下载</span>
                <span class="caret"></span>
                <div class="download-icon">
                    <p class="down-title">扫码下载APP</p>
                    <p class="down-content">选座更优惠</p>
                </div>
            </a>
        </div>

    </div>
</div>
<div class="header-placeholder"></div>


<div class="container" id="app">
    <div class="order-progress-bar">
        <div class="step first done">
            <span class="step-num">1</span>
            <div class="bar"></div>
            <span class="step-text">选择影片场次</span>
        </div>
        <div class="step done">
            <span class="step-num">2</span>
            <div class="bar"></div>
            <span class="step-text">选择座位</span>
        </div>
        <div class="step ">
            <span class="step-num">3</span>
            <div class="bar"></div>
            <span class="step-text">14分钟内付款</span>
        </div>
        <div class="step last ">
            <span class="step-num">4</span>
            <div class="bar"></div>
            <span class="step-text">影院取票观影</span>
        </div>
    </div>


    <div class="main clearfix">
        <div class="hall">
            <div class="seat-example">
                <div class="selectable-example example">
                    <span>可选座位</span>
                </div>
                <div class="sold-example example">
                    <span>已售座位</span>
                </div>
                <div class="selected-example example">
                    <span>已选座位</span>
                </div>
                <div class="couple-example example">
                    <span>情侣座位</span>
                </div>
            </div>


            <div class="seats-block" data-cols="20" data-section-id="01" data-section-name="普通座" data-seq-no="202312150441316">
                <div class="row-id-container">
                    <span class="row-id">1</span>
                    <span class="row-id">2</span>
                    <span class="row-id">3</span>
                    <span class="row-id">4</span>
                    <span class="row-id">5</span>
                    <span class="row-id">6</span>
                    <span class="row-id">7</span>
                    <span class="row-id">8</span>
                    <span class="row-id">9</span>
                    <span class="row-id">10</span>
                </div>
                <div class="seats-container">
                    <div class="screen-container" style="left: 125px;">
                        <div class="screen">银幕中央</div>
                        <div class="c-screen-line"></div>
                    </div>

                    <div class="seats-wrapper">
<%--                        <c:forEach begin="1" end="10" var="rows">--%>
<%--                            <div class="row">--%>
<%--                                <c:forEach begin="${10*(rows-1)+1}" end="${rows*10}" var="column">--%>
<%--                                    <span class="seat selectable" data-column-id="${column}" data-row-id="${rows}" data-no="4301360105#01#01" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>--%>
<%--&lt;%&ndash;                                    <c:forEach items="${list}" var="a">&ndash;%&gt;--%>

<%--&lt;%&ndash;                                        <c:if test="${a==column}">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <span class="seat sold" data-column-id="${column}" data-row-id="${rows}" data-no="4301360105#01#01" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>&ndash;%&gt;--%>

<%--&lt;%&ndash;                                        </c:if>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <c:if test="${a!=column}">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            <span class="seat selectable" data-column-id="${column}" data-row-id="${rows}" data-no="4301360105#01#01" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        </c:if>&ndash;%&gt;--%>


<%--&lt;%&ndash;                                    </c:forEach>&ndash;%&gt;--%>
<%--                                </c:forEach>--%>
<%--                            </div>--%>
<%--                        </c:forEach>--%>

                        <div class="row" id="row">
                            <span class="seat selectable"  data-column-id="1" data-row-id="1" data-no="4301360105#01#01" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="2" data-row-id="1" data-no="4301360105#01#02" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="3" data-row-id="1" data-no="4301360105#01#03" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="4" data-row-id="1" data-no="4301360105#01#04" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="5" data-row-id="1" data-no="4301360105#01#04" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="6" data-row-id="1" data-no="4301360105#01#06" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="7" data-row-id="1" data-no="4301360105#01#07" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="8" data-row-id="1" data-no="4301360105#01#08" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="9" data-row-id="1" data-no="4301360105#01#09" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="10" data-row-id="1" data-no="4301360105#01#10" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat empty" data-column-id="" data-row-id="1" data-no="" data-st="E" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                        </div>
                        <div class="row">
                            <span class="seat selectable"  data-column-id="1" data-row-id="2" data-no="4301360105#02#01" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="2" data-row-id="2" data-no="4301360105#02#02" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="3" data-row-id="2" data-no="4301360105#02#03" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="4" data-row-id="2" data-no="4301360105#02#04" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="5" data-row-id="2" data-no="4301360105#02#05" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="6" data-row-id="2" data-no="4301360105#02#06" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="7" data-row-id="2" data-no="4301360105#02#07" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="8" data-row-id="2" data-no="4301360105#02#08" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="9" data-row-id="2" data-no="4301360105#02#09" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="10" data-row-id="2" data-no="4301360105#02#10" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat empty" data-column-id="" data-row-id="2" data-no="" data-st="E" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                        </div>

                        <div class="row">
                            <span class="seat selectable" data-column-id="1" data-row-id="3" data-no="4301360105#03#01" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="2" data-row-id="3" data-no="4301360105#03#02" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="3" data-row-id="3" data-no="4301360105#03#03" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="4" data-row-id="3" data-no="4301360105#03#04" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="5" data-row-id="3" data-no="4301360105#03#05" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="6" data-row-id="3" data-no="4301360105#03#06" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="7" data-row-id="3" data-no="4301360105#03#07" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="8" data-row-id="3" data-no="4301360105#03#08" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="9" data-row-id="3" data-no="4301360105#03#09" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="10" data-row-id="3" data-no="4301360105#03#10" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat empty" data-column-id="" data-row-id="3" data-no="" data-st="E" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                        </div>
                        <div class="row">
                            <span class="seat selectable" data-column-id="1" data-row-id="4" data-no="4301360105#04#01" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="2" data-row-id="4" data-no="4301360105#04#02" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="3" data-row-id="4" data-no="4301360105#04#03" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="4" data-row-id="4" data-no="4301360105#04#04" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="5" data-row-id="4" data-no="4301360105#04#05" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="6" data-row-id="4" data-no="4301360105#04#06" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="7" data-row-id="4" data-no="4301360105#04#07" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="8" data-row-id="4" data-no="4301360105#04#08" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="9" data-row-id="4" data-no="4301360105#04#09" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="10" data-row-id="4" data-no="4301360105#04#10" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat empty" data-column-id="" data-row-id="4" data-no="" data-st="E" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                        </div>
                        <div class="row">
                            <span class="seat selectable" data-column-id="1" data-row-id="5" data-no="4301360105#05#01" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="2" data-row-id="5" data-no="4301360105#05#02" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="3" data-row-id="5" data-no="4301360105#05#03" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="4" data-row-id="5" data-no="4301360105#05#04" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="5" data-row-id="5" data-no="4301360105#05#05" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="6" data-row-id="5" data-no="4301360105#05#06" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="7" data-row-id="5" data-no="4301360105#05#07" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="8" data-row-id="5" data-no="4301360105#05#08" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="9" data-row-id="5" data-no="4301360105#05#09" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="10" data-row-id="5" data-no="4301360105#05#10" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat empty" data-column-id="" data-row-id="5" data-no="" data-st="E" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                        </div>
                        <div class="row">
                            <span class="seat selectable" data-column-id="1" data-row-id="6" data-no="4301360105#06#01" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="2" data-row-id="6" data-no="4301360105#06#02" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="3" data-row-id="6" data-no="4301360105#06#03" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="4" data-row-id="6" data-no="4301360105#06#04" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="5" data-row-id="6" data-no="4301360105#06#05" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="6" data-row-id="6" data-no="4301360105#06#06" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="7" data-row-id="6" data-no="4301360105#06#07" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="8" data-row-id="6" data-no="4301360105#06#08" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="9" data-row-id="6" data-no="4301360105#06#09" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="10" data-row-id="6" data-no="4301360105#06#10" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat empty" data-column-id="" data-row-id="6" data-no="" data-st="E" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                        </div>
                        <div class="row">
                            <span class="seat selectable" data-column-id="1" data-row-id="7" data-no="4301360105#07#01" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="2" data-row-id="7" data-no="4301360105#07#02" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="3" data-row-id="7" data-no="4301360105#07#03" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="4" data-row-id="7" data-no="4301360105#07#04" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="5" data-row-id="7" data-no="4301360105#07#05" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="6" data-row-id="7" data-no="4301360105#07#06" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="7" data-row-id="7" data-no="4301360105#07#07" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="8" data-row-id="7" data-no="4301360105#07#08" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="9" data-row-id="7" data-no="4301360105#07#09" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="10" data-row-id="7" data-no="4301360105#07#10" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat empty" data-column-id="" data-row-id="7" data-no="" data-st="E" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                        </div>
                        <div class="row">
                            <span class="seat selectable" data-column-id="1" data-row-id="8" data-no="4301360105#08#01" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="2" data-row-id="8" data-no="4301360105#08#02" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="3" data-row-id="8" data-no="4301360105#08#03" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="4" data-row-id="8" data-no="4301360105#08#04" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="5" data-row-id="8" data-no="4301360105#08#05" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="6" data-row-id="8" data-no="4301360105#08#06" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="7" data-row-id="8" data-no="4301360105#08#07" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="8" data-row-id="8" data-no="4301360105#08#08" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="9" data-row-id="8" data-no="4301360105#08#09" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="10" data-row-id="8" data-no="4301360105#08#10" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat empty" data-column-id="" data-row-id="8" data-no="" data-st="E" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                        </div>
                        <div class="row">
                            <span class="seat selectable" data-column-id="1" data-row-id="9" data-no="4301360105#09#01" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="2" data-row-id="9" data-no="4301360105#09#02" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="3" data-row-id="9" data-no="4301360105#09#03" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="4" data-row-id="9" data-no="4301360105#09#04" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="5" data-row-id="9" data-no="4301360105#09#05" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="6" data-row-id="9" data-no="4301360105#09#06" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="7" data-row-id="9" data-no="4301360105#09#07" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="8" data-row-id="9" data-no="4301360105#09#08" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="9" data-row-id="9" data-no="4301360105#09#09" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="10" data-row-id="9" data-no="4301360105#09#10" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat empty" data-column-id="" data-row-id="9" data-no="" data-st="E" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                        </div>
                        <div class="row">
                            <span class="seat selectable" data-column-id="1" data-row-id="10" data-no="4301360105#10#04" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="2" data-row-id="10" data-no="4301360105#10#04" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="3" data-row-id="10" data-no="4301360105#10#04" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="4" data-row-id="10" data-no="4301360105#10#04" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="5" data-row-id="10" data-no="4301360105#10#05" data-st="N" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="6" data-row-id="10" data-no="4301360105#10#06" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="7" data-row-id="10" data-no="4301360105#10#07" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="8" data-row-id="10" data-no="4301360105#10#08" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="9" data-row-id="10" data-no="4301360105#10#09" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat selectable" data-column-id="10" data-row-id="10" data-no="4301360105#10#10" data-st="LK" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                            <span class="seat empty" data-column-id="" data-row-id="10" data-no="" data-st="E" data-act="seat-click" data-bid="b_s7eiiijf"></span>
                        </div>
                    </div>
                </div>

            </div>

        </div>

        <div class="side">
            <div class="movie-info clearfix">
                <div class="poster">
                    <img src="${pageContext.servletContext.contextPath}/static/images/show/${movie.moviePicture}">
                </div>
                <div class="content">
                    <p class="name text-ellipsis">${movie.movieCnName}</p>
                    <div class="info-item">
                        <span>类型 :</span>
                        <span class="value">犯罪,动作</span>
                    </div>
                    <div class="info-item">
                        <span>时长 :</span>
                        <span class="value">${movie.movieDuration}</span>
                    </div>
                </div>
            </div>

            <div class="show-info">
                <div class="info-item">
                    <span>影院 :</span>
                    <span class="value text-ellipsis">${cinema.cinemaName}</span>
                </div>
                <div class="info-item">
                    <span>影厅 :</span>
                    <span class="value text-ellipsis">${schedule.hallName}</span>
                </div>
                <div class="info-item">
                    <span>版本 :</span>
                    <span class="value text-ellipsis">中文2D</span>
                </div>
                <div class="info-item">
                    <span>场次 :</span>
                    <span class="value text-ellipsis screen">今天 ${schedule.scheduleStartTime}</span>
                </div>
                <div class="info-item">
                    <span>票价 :</span>
                    <span class="value text-ellipsis">￥${schedule.schedulePrice}/张</span>
                </div>
            </div>

            <div class="ticket-info">
                <div class="no-ticket">
                    <p class="buy-limit">座位：一次最多选6个座位</p>
                    <p class="no-selected">请<span>点击左侧</span>座位图选择座位</p>
                </div>
                <div class="has-ticket" style="display:none">
                    <span class="text">座位：</span>
                    <div class="ticket-container" data-limit="6"></div>
                </div>

                <div class="total-price">
                    <span>总价 :</span>
                    <span id="price" class="price">0</span>
                </div>
            </div>

            <div class="confirm-order">
                <div class="cellphone">
                    <span>手机号 :</span>
                    <span class="phone-num">138****7642</span>
                </div>
                <div class="confirm-btn disable" onclick="a()" data-act="confirm-click" data-bid="b_0a0ep6pp">确认选座</div>

            </div>
        </div>
    </div>
    <div class="modal-container" style="display:none">
        <div class="modal">
            <span class="icon"></span>

            <p class="tip"></p>

            <div class="ok-btn btn">我知道了</div>
        </div>
    </div>

    <script src="https://passport.meituan.com/mt-login-component/v1.0.12/index.min.js"></script>
</div>

<div class="footer" style="visibility: visible;">
    <p class="friendly-links">
        关于猫眼 :
        <a href="https://ir.maoyan.com/Company-Information">关于我们</a>
        <span></span>
        <a href="https://ir.maoyan.com/Board-Members">董事会成员</a>
        <span></span>
        <a href="https://ir.maoyan.com">投资者关系</a>
        &nbsp;&nbsp;&nbsp;&nbsp;
        友情链接 :
        <a href="http://www.meituan.com" data-query="utm_source=wwwmaoyan">美团网</a>
        <span></span>
        <a href="http://www.gewara.com" data-query="utm_source=wwwmaoyan">格瓦拉</a>
        <span></span>
        <a href="http://i.meituan.com/client" data-query="utm_source=wwwmaoyan">美团下载</a>
        <span></span>
        <a href="https://www.huanxi.com" data-query="utm_source=maoyan_pc">欢喜首映</a>
    </p>
    <p class="friendly-links">
        商务合作邮箱：v@maoyan.com
        客服电话：10105335
        违法和不良信息/涉未成年人有害信息举报电话：4006018900
    </p>
    <p class="friendly-links">
        用户举报/涉未成年人有害信息举报邮箱：tousujubao@meituan.com
        舞弊线索举报邮箱：wubijubao@maoyan.com
    </p>
    <p class="friendly-links  credentials">
        <a href="/about/licence/1" target="_blank">中华人民共和国增值电信业务经营许可证 京B2-20190350</a>
        <span></span>
        <a href="/about/licence/4" target="_blank">营业性演出许可证 京演（机构）（2019）4094号</a>
    </p>
    <p class="friendly-links  credentials">
        <a href="/about/licence/3" target="_blank">广播电视节目制作经营许可证 （京）字第08478号</a>
        <span></span>
        <a href="/about/licence/2" target="_blank">网络文化经营许可证 京网文（2022）1334-041号 </a>
    </p>
    <p class="friendly-links  credentials">
        <a href="/about/licence/6" target="_blank">艺术品经营单位备案证明  京东艺（2022）0095号 </a>
    </p>
    <p class="friendly-links  credentials">
        <a href="/rules/agreement" target="_blank">猫眼用户服务协议 </a>
        <span></span>
        <a href="/rules/rule" target="_blank">猫眼平台交易规则总则 </a>
        <span></span>
        <a href="/rules/privacy" target="_blank">隐私政策 </a>
    </p>
    <p class="friendly-links  credentials">
        <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010102003232">京公网安备
            11010102003232号</a>
        <span></span>
        <a href="http://beian.miit.gov.cn/">京ICP备16022489号-1</a>
    </p>
    <p>北京猫眼文化传媒有限公司</p>
    <p>
        ©<span class="my-footer-year">2023</span>
        猫眼电影 www.maoyan.com</p>
    <div class="certificate">
        <a href="http://sq.ccm.gov.cn:80/ccnt/sczr/service/business/emark/toDetail/350CF8BCA8416C4FE0530140A8C0957E">
            <img src="https://p0.meituan.net/moviemachine/e54374ccf134d1f7b2c5b075a74fca525326.png">
        </a>
        <a href="/about/licence/5" target="_blank">
            <img src="https://obj.pipi.cn/festatic/common/media/1701341380270-license.png">
        </a>
        <a href="https://www.12377.cn">
            <img src="https://p0.meituan.net/scarlett/3cd2a9b7dc179531d20d27a5fd686e783787.png">
        </a>
    </div>
</div>

<script crossorigin="anonymous" src="//www.dpfile.com/app/owl/static/owl_1.7.11.js"></script>
<script>
    Owl.start({
        project: 'com.sankuai.myfe.mywww.media',
        pageUrl: location.href.split('?')[0].replace(/\/\d+/g, '/:id'),
        devMode: false
    })
</script>
<!--[if IE 8]><script crossorigin="anonymous" src="//s3.meituan.net/static-prod01/com.sankuai.movie.fe.mywww-files/es5-shim.bbad933f.js"></script><![endif]-->
<!--[if IE 8]><script crossorigin="anonymous" src="//s3.meituan.net/static-prod01/com.sankuai.movie.fe.mywww-files/es5-sham.221f40f5.js"></script><![endif]-->
<script crossorigin="anonymous" src="//s3.meituan.net/static-prod01/com.sankuai.movie.fe.mywww-files/common.fe488f9f.js"></script>
<script crossorigin="anonymous" src="//s3.meituan.net/static-prod01/com.sankuai.movie.fe.mywww-files/cinemas-seat.a5089398.js"></script>
<script src="//lx.meituan.net/lx.js" type="text/javascript" charset="utf-8" async=""></script>



</body></html>

<script>
    window.onload=abc
    function abc(){
        <c:forEach items="${list}" var="p">
        var name = document.getElementsByClassName("seat");
        var b = Math.floor(${p/10})+1;
        var c = ${p}%10;
        for (let i = 0; i < name.length; i++) {
            console.log(name[i].dataset)
            if (name[i].dataset.rowId==b && name[i].dataset.columnId==c){
                name[i].className = "seat sold";
            }
        }
        </c:forEach>




    }
    // seatsPrice
    function a(){
        var name = document.getElementsByClassName("selected");
        var price =document.getElementById("price").innerText;
        var arr="";
        for (let i = 0; i < name.length; i++) {
            var b = name[i].dataset.rowId-1;
            var c = name[i].dataset.columnId%10;
            if (c==0){
                b++;
            }
            var d = b + "" +c;
            if (b==0){
               d = c;
            }
            if (i!=name.length-1){
                arr += d + ",";
            }else {
                arr +=d;
            }

        }
    location.href="pay?movieName=${movie.movieCnName}&prices="+price+"&position="+arr+"&price=${schedule.schedulePrice}&schduleId=${schedule.scheduleId}";
    }
</script>