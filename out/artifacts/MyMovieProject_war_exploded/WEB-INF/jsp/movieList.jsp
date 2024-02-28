<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html><!--<![endif]--><head>


    <!--




        这是电影的即将上映







        -->

    <title>即将上映_电影票预售_影片关注_电影推荐-猫眼电影</title>

    <link rel="dns-prefetch" href="//p0.meituan.net">
    <link rel="dns-prefetch" href="//p1.meituan.net">
    <link rel="dns-prefetch" href="//ms0.meituan.net">
    <link rel="dns-prefetch" href="//ms1.meituan.net">
    <link rel="dns-prefetch" href="//lx.meituan.net">
    <link rel="dns-prefetch" href="//lx1.meituan.net">
    <link rel="dns-prefetch" href="//plx.meituan.com">


    <meta charset="utf-8">
    <meta name="keywords" content="即将上映,电影票预售,影片关注,在线电影推荐">
    <meta name="description" content="猫眼电影为您提供即将上映大片,影视大片关注,在线电影推荐的信息，以及电影票预售服务，让您提前选座购票。更多即将上映电影信息请关注猫眼电影官网。">
    <meta http-equiv="cleartype" content="yes">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">

    <meta name="HandheldFriendly" content="true">
    <meta name="format-detection" content="email=no">
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <script async="" src="https://obj.pipi.cn/festatic/common/media/1662611002507-mta.min.js"></script><script src="https://hm.baidu.com/hm.js?703e94591e87be68cc8da0da7cbd0be2"></script><script>"use strict";!function(){var i=0<arguments.length&&void 0!==arguments[0]?arguments[0]:"_Owl_",n=window;n[i]||(n[i]={isRunning:!1,isReady:!1,preTasks:[],dataSet:[],use:function(i,t){this.isReady&&n.Owl&&n.Owl[i](t),this.preTasks.push({api:i,data:[t]})},add:function(i){this.dataSet.push(i)},run:function(){var t=this;if(!this.isRunning){this.isRunning=!0;var i=n.onerror;n.onerror=function(){this.isReady||this.add({type:"jsError",data:arguments}),i&&i.apply(n,arguments)}.bind(this),(n.addEventListener||n.attachEvent)("error",function(i){t.isReady||t.add({type:"resError",data:[i]})},!0)}}},n[i].run())}();</script>
    <script>
        cid = "c_rhr5i1n";
        ci = 70;
        val = {"subnavId":2};    window.system = {};

        window.openPlatform = '';
        window.openPlatformSub = '';
        window.$mtsiFlag = '0';
        window.NODE_ENV = 'production';

    </script>
    <link rel="stylesheet" href="//s3.meituan.net/static-prod01/com.sankuai.movie.fe.mywww-files/common.118924d9.css">
    <link rel="stylesheet" href="//s3.meituan.net/static-prod01/com.sankuai.movie.fe.mywww-files/movie-list.79052e3e.css">
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
    <meta name="lx:autopv" from="v3api" content="off"><meta name="lx:appnm" from="v3api" content="movie"><meta name="lx:category" from="v3api" content="movie"></head>
<body>


<div class="header">
    <div class="header-inner">
        <a href="//www.maoyan.com" class="logo" data-act="icon-click">猫眼电影</a>

        <div class="nav" style="padding-left: 25px;">
            <div><a href="${pageContext.servletContext.contextPath}/mainPage" data-act="home-click">首页</a></div>
            <div><a href="${pageContext.servletContext.contextPath}/movieList" data-act="movies-click" class="active">电影</a></div>
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

<div class="subnav">
    <ul class="navbar">
        <li>
            <a data-act="subnav-click" data-val="{subnavClick:1}" href="${pageContext.servletContext.contextPath}/movieList1">正在热映</a>
        </li>
        <li>
            <a data-act="subnav-click" data-val="{subnavClick:2}" data-state-val="{subnavId:2}" class="active" href="javascript:void(0);">即将上映</a>
        </li>
        <li>
<%--            <a data-act="subnav-click" data-val="{subnavClick:3}" href="?showType=3">经典影片</a>--%>
        </li>
    </ul>
</div>


<div class="container" id="app">
    <div class="movies-channel">
        <div class="tags-panel">
            <ul class="tags-lines">
                <li class="tags-line">
                    <div class="tags-title">类型 :</div>
                    <ul class="tags">

                        <li class="active">
                            <a href="movieList" style="cursor: default">全部</a>
                        </li>
                        <c:forEach items="${allType}" var="aa">
                            <li>
                                <a href="movieList?typeId=${aa.movieTypeId}">${aa.movieTypeName}</a>
                            </li>
                        </c:forEach>
                    </ul>
                </li>

                <li class="tags-line tags-line-border" data-val="{tagTypeName:'source'}">
                    <div class="tags-title">区域 :</div>
                    <ul class="tags">
                        <li class="${address=="" ? "active" : ""}" data-state-val="{ sourceTagName:'全部'}">
                            <a data-act="tag-click" data-val="{TagName:'全部'}" href="movieList" style="cursor: default">全部</a>
                        </li>
                        <c:forEach items="${all}" var="list">
                            <li>
                                <a href="movieList?address=${list.movieCountry}">${list.movieCountry}</a>
                            </li>
                        </c:forEach>
                    </ul>
                </li>
            </ul>
        </div>


        <div class="movies-panel">
            <div class="movies-sorter">
                <div class="cat-sorter">
                    <ul>
                        <li>
              <span class="sort-control-group" data-act="sort-click" data-val="{tagId: 1 }" style="cursor: default">
                <span class="sort-control sort-radio sort-radio-checked"></span>
                <span class="sort-control-label">按热门排序</span>
              </span>
                        </li>
                        <li>
              <span class="sort-control-group" data-act="sort-click" data-val="{tagId: 2 }" data-href="?showType=2&amp;sortId=2" onclick="location.href=this.getAttribute('data-href')">
                <span class="sort-control sort-radio"></span>
                <span class="sort-control-label">按时间排序</span>
              </span>
                        </li>
                    </ul>
                </div>
                <div class="play-sorter">
          <span class="sort-control-group" data-act="isplay-click" data-val="{isplay:1}" data-href="?showType=2&amp;isPlay=1" onclick="location.href=this.getAttribute('data-href')">
            <span class="sort-control sort-checkbox"></span>
            <span class="sort-control-label">可播放</span>
          </span>
                </div>
            </div>
            <div class="movies-list">
                <dl class="movie-list">
                    <c:forEach items="${movielist}" var="a">
                        <dd>
                            <div class="movie-item film-channel">
                                    <%--                            点击跳转电影详情    --%>
                                <a href="movieDetail?movieId=${a.movieId}" target="_blank" data-act="movie-click" >
                                    <div class="movie-poster">
                                        <img style="width: 100%; height:100%"  src="${pageContext.servletContext.contextPath}/static/images/show/${a.moviePicture}">
                                    </div>
                                </a>
                                <div class="channel-action channel-action-pre">
                                    <a>预售</a>
                                </div>

                                <div class="movie-ver"><i class="imax2d"></i></div>
                                <div class="movie-item-hover">
                                    <a href="movieDetail?movieId=${a.movieId}" target="_blank">
                                        <img class="movie-hover-img" src="${pageContext.servletContext.contextPath}/static/images/show/${a.moviePicture}">
                                        <div class="movie-hover-info">
                                            <div class="movie-hover-title">
                                                <span class="name noscore">${a.movieCnName}</span>
                                            </div>
                                            <div class="movie-hover-title" title="${a.movieCnName}">
                                                <span class="hover-tag">类型:</span>
<%--                                                <c:forEach items="${allType}" var="aa">--%>
<%--                                                    ${aa.movieTypeName}--%>
<%--                                                </c:forEach>--%>
                                                戏剧
                                            </div>
                                            <div class="movie-hover-title">
                                                <span class="hover-tag">主演:</span>
                                                ${a.movieActor}
                                            </div>
                                            <div class="movie-hover-title movie-hover-brief" >
                                                <span class="hover-tag">上映时间:</span>
                                                ${a.movieReleaseDate}
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>

                            <div class="channel-detail movie-item-title" title="${a.movieCnName}">
                                <a href="#" target="_blank" data-act="movies-click" data-val="{movieId:1461561}">${a.movieCnName}</a>
                            </div>
                            <div class="channel-detail channel-detail-orange"><span class="stonefont"></span>人想看</div>
                        </dd>
                    </c:forEach>
                </dl>
            </div>
            <div class="movies-pager">

                <ul class="list-pager">

                    <c:if test="${current!=1}">
                        <li>
                            <a class="page_2" href="movieList?pageNum=${current-1}
                                <c:if test="${address!=null}">
                                      &address=${address}
                                </c:if>
                            ">上一页</a>
                        </li>
                    </c:if>
                    <li class="active">
                        <a class="page_1" href="javascript:void(0);" style="cursor: default">${current}/${pages}</a>
                    </li>
                    <c:if test="${current!=pages}">
                        <li>
                            <a class="page_2" href="movieList?pageNum=${current+1}
                                <c:if test="${address!=null}">
                                       &address=${address}
                                 </c:if>
                            ">下一页</a>
                        </li>
                    </c:if>
                </ul>


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
<script crossorigin="anonymous" src="//s3.meituan.net/static-prod01/com.sankuai.movie.fe.mywww-files/movie-list.4536c981.js"></script>
<script src="//lx.meituan.net/lx.js" type="text/javascript" charset="utf-8" async=""></script>
<%--<script type="text/javascript">--%>
<%--    $.ajax({--%>
<%--        type:"get",--%>
<%--        url:"selectPage?id=1",--%>
<%--        success:function (data){--%>
<%--            return true;--%>
<%--        }--%>
<%--    })--%>
<%--</script>--%>
</body></html>