<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html><!--<![endif]--><head>
    <title>猫眼电影 - 娱乐看猫眼</title>
    <!--










        这是首页












     -->
    <link rel="dns-prefetch" href="//p0.meituan.net">
    <link rel="dns-prefetch" href="//p1.meituan.net">
    <link rel="dns-prefetch" href="//ms0.meituan.net">
    <link rel="dns-prefetch" href="//ms1.meituan.net">
    <link rel="dns-prefetch" href="//lx.meituan.net">
    <link rel="dns-prefetch" href="//lx1.meituan.net">
    <link rel="dns-prefetch" href="//plx.meituan.com">
    <link rel="alternate" media="only screen and (max-width: 640px)" href="https://m.maoyan.com/">
    <link rel="canonical" href="https://www.maoyan.com/">


    <meta charset="utf-8">
    <meta name="keywords" content="电影,电影购票,电影选座,影院选票,影院购票,电影评分,猫眼电影">
    <meta name="description" content="猫眼电影是国内观众喜爱的观影平台，为您提供了在线购票服务。同时，猫眼电影还为您提供电影预告片、票房查询、电影排行榜、影视资讯等信息。">
    <meta http-equiv="cleartype" content="yes">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">

    <meta name="HandheldFriendly" content="true">
    <meta name="format-detection" content="email=no">
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <script async="" src="https://obj.pipi.cn/festatic/common/media/1662611002507-mta.min.js"></script><script src="https://hm.baidu.com/hm.js?703e94591e87be68cc8da0da7cbd0be2"></script><script>"use strict";!function(){var i=0<arguments.length&&void 0!==arguments[0]?arguments[0]:"_Owl_",n=window;n[i]||(n[i]={isRunning:!1,isReady:!1,preTasks:[],dataSet:[],use:function(i,t){this.isReady&&n.Owl&&n.Owl[i](t),this.preTasks.push({api:i,data:[t]})},add:function(i){this.dataSet.push(i)},run:function(){var t=this;if(!this.isRunning){this.isRunning=!0;var i=n.onerror;n.onerror=function(){this.isReady||this.add({type:"jsError",data:arguments}),i&&i.apply(n,arguments)}.bind(this),(n.addEventListener||n.attachEvent)("error",function(i){t.isReady||t.add({type:"resError",data:[i]})},!0)}}},n[i].run())}();</script>
    <script>
        cid = "c_6jadt9m";
        ci = 70;
        window.system = {};

        window.openPlatform = '';
        window.openPlatformSub = '';
        window.$mtsiFlag = '0';
        window.NODE_ENV = 'production';

    </script>
    <link rel="stylesheet" href="//s3.meituan.net/static-prod01/com.sankuai.movie.fe.mywww-files/common.118924d9.css">
    <link rel="stylesheet" href="//s3.meituan.net/static-prod01/com.sankuai.movie.fe.mywww-files/home-index.fce66dcb.css">
    <script crossorigin="anonymous" src="//s3.meituan.net/static-prod01/com.sankuai.movie.fe.mywww-files/stat.b4e55d45.js"></script>
    <script>if(window.devicePixelRatio >= 2) { document.write('<link rel="stylesheet" href="//s3.meituan.net/static-prod01/com.sankuai.movie.fe.mywww-files/image-2x.8ba7074d.css"/>') }</script>

    <meta name="msvalidate.01" content="F338006073F396CBBDA443AAB6A8BA47">
    <meta name="360-site-verification" content="6f1d12912a62a74ce2f1b3c2e75f6c23">
    <meta name="sogou_site_verification" content="uh9MkgvBm3">
    <!-- 专用于国家公祭日等需要将页面设置成黑白的配置项 -->
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
    <meta name="lx:autopv" from="v3api" content="off"><meta name="lx:appnm" from="v3api" content="movie"><meta name="lx:category" from="v3api" content="movie"></head>
<body>

<%--头部--%>
<div class="header">
    <div class="header-inner">
        <h1><a href="//www.maoyan.com" class="logo" data-act="icon-click">猫眼电影</a></h1>

        <div class="nav" style="padding-left: 25px;">
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
                            <li><a href="${pageContext.servletContext.contextPath}/login1">登录</a></li>
                        </ul>
            </c:if>
                <c:if test="${user!=null}">
                    <img src="https://img.meituan.net/avatar/838a39966ce4c8899652f1a60944668911421.jpg">
                    <span class="caret"></span>
                    <ul class="user-menu yes-login-menu">
                        <li class="text"><a href="#">我的订单</a></li>
                        <li class="text login-name" title="HLU499818037"><a href="center">基本信息</a></li>
                        <li class="text"><a href="statr" class="J-logout" data-act="logout-click">退出登录</a></li>
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

<div class="banner">
    <div class="slider single-item slider-banner slick-initialized slick-slider">
        <div aria-live="polite" class="slick-list draggable"><div class="slick-track" role="listbox" style="padding-left: 135px;"><a target="_blank" data-act="bannerNews-click" href="" data-cid="c_vwmiv52u" data-bid="b_z3wg6f7b" data-val="{positionId: 1119, ad_id: 267577, materialId: 228946}" class="slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false" tabindex="-1" role="option" aria-describedby="slick-slide00" style="width: 1200px; position: relative; left: 0px; top: 0px; z-index: 999; opacity: 1; background: url(&quot;https://p0.pipi.cn/adAdmin/fb73869211e7e1537c17899a1190521216b6e.png?imageMogr2/quality/85&quot;) center top no-repeat;"></a></div></div>
    </div>

</div>

<div class="container" id="app">
    <div class="content">
        <div class="aside">
            <div class="ranking-box-wrapper">
                <div class="panel">
                    <div class="panel-header">
        <span class="panel-title">
          <span class="textcolor_red"><h2>今日票房</h2></span>
        </span>
                    </div>
                    <div class="panel-content">
                        <ul class="ranking-wrapper ranking-box">
                            <c:forEach items="${sortList}" var="sort">
                                    <li class="ranking-item ranking-top ranking-index-1">
                                        <a href="movieDetail?movieId=${sort.movieId}" target="_blank">
                                            <div class="ranking-top-left">
                                                <i class="ranking-top-icon"></i>
                                                <img class="ranking-img  default-img" src="${pageContext.servletContext.contextPath}/static/images/show/${sort.moviePicture}">
                                            </div>
                                            <div class="ranking-top-right">
                                                <div class="ranking-top-right-main">
                                                    <span class="ranking-top-moive-name">${sort.movieCnName}</span>
                                                    <p class="ranking-top-wish">
                                                        <span class="stonefont">${sort.movieBoxOffice}</span>万
                                                    </p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="box-total-wrapper clearfix">

            </div>

            <div class="most-expect-wrapper">
                <div class="panel">
                    <div class="panel-header">
        <span class="panel-more">
          <a href="${pageContext.servletContext.contextPath}/movieList" class="textcolor_orange" data-act="all-mostExpect-click">
            <span>查看完整榜单</span>
          </a>
          <span class="panel-arrow panel-arrow-orange"></span>
        </span>
                        <span class="panel-title">
          <span class="textcolor_orange"><h2>最受期待</h2></span>
        </span>
                    </div>
                    <div class="panel-content">
                        <ul class="ranking-wrapper ranking-mostExpect">
                            <c:forEach items="${sortList1}" var="sortmovie">
                                <li class="ranking-item ranking-index-2">
                                    <a href="movieDetail?movieId=${sortmovie.movieId}" target="_blank">
                                        <i class="ranking-index">${sortmovie.movieId}</i>
                                        <span class="img-link"><img class="ranking-img default-img" src="${pageContext.servletContext.contextPath}/static/images/show/${sortmovie.moviePicture}"></span>
                                        <div class="name-link ranking-movie-name">${sortmovie.movieCnName}</div>
                                        <span class="ranking-num-info"><span class="stonefont"></span>人想看</span>
                                    </a>
                                </li>
                            </c:forEach>
                        </ul>


                    </div>
                </div>
            </div>








        </div>
        <div class="main">
            <div class="movie-grid">
                <div class="panel">
                    <div class="panel-header">
        <span class="panel-more">
          <a href="${pageContext.servletContext.contextPath}/movieList1" class="textcolor_red">
            <span>全部</span>
          </a>
          <span class="panel-arrow panel-arrow-red"></span>
        </span>
                        <span class="panel-title">
          <span class="textcolor_red"><h2>正在热映（${total}部）</h2></span>
        </span>
                    </div>
                    <div class="panel-content">
                        <dl class="movie-list">
                            <c:forEach var="movie" items="${movie}">
                                <dd>
                                    <a href="movieDetail?movieId=${movie.movieId}" target="_blank" >
                                        <div class="movie-poster">
                                            <img style="width: 100%; height: 100% " alt="${movie.movieCnName}" src="${pageContext.servletContext.contextPath}/static/images/show/${movie.moviePicture}">
                                            <div class="movie-overlay movie-overlay-bg">
                                                <div class="movie-info">
                                                    <div class="movie-title">${movie.movieCnName}</div>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                    <div class="movie-detail movie-detail-strong movie-sale">
                                        <a href="list?movieId=${movie.movieId}" class="active" target="_blank">购 票</a>
                                    </div>
                                    <div class="movie-ver"></div>
                                </dd>
                            </c:forEach>
                    </div>
                </div>
                <div class="panel">
                          <a href="${pageContext.servletContext.contextPath}/movieList" class="textcolor_blue">
            <span>全部</span>
          </a>
          <span class="panel-arrow panel-arrow-blue"></span>
        </span>
                        <span class="panel-title">
          <span class="textcolor_blue"><h2>即将上映（${total1}部）</h2></span>
        </span>
                    </div>
                    <div class="panel-content">
                        <dl class="movie-list">
                            <c:forEach items="${movie1}" var="mov">
                                <dd>
                                    <div class="movie-item">
                                        <a href="movieDetail?movieId=${mov.movieId}" target="_blank" data-act="upcomingMovie-click" data-val="{movieid:1385865}">
                                            <div class="movie-poster">
                                                <img style="width: 100%; height: 100% " src="${pageContext.servletContext.contextPath}/static/images/show/${mov.moviePicture}" alt="${mov.movieCnName}">
                                                <div class="movie-overlay movie-overlay-bg">
                                                    <div class="movie-info">
                                                        <div class="movie-title movie-title-padding">${mov.movieCnName}</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                        <div class="movie-detail movie-wish"><span class="stonefont"></span>人想看</div>
                                        <div class="movie-detail movie-detail-strong movie-presale">
                                            <a class="movie-presale-sep">预告片
                                            </a><a href="movieDetail?movieId=${mov.movieId}" class="active" target="_blank" data-act="presaleUpcomingMovie-click" data-val="{movieid:1385865}">预 售</a>
                                        </div>
                                        <div class="movie-ver"><i class="imax2d"></i></div>
                                    </div>
                                    <div class="movie-detail movie-rt">${mov.movieReleaseDate}</div>

                                </dd>
                            </c:forEach>
                        </dl>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
<script crossorigin="anonymous" src="//s3.meituan.net/static-prod01/com.sankuai.movie.fe.mywww-files/home-index.64d19554.js"></script>
<script src="//lx.meituan.net/lx.js" type="text/javascript" charset="utf-8" async=""></script>


</body></html>