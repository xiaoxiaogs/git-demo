<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="ch">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="左右结构项目，属于大人员的社交工具">
    <meta name="keywords" content="左右结构项目 社交 占座 ">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="format-detection" content="telephone=no">
    <title>猫眼电影后台管理</title>
    <script src="${pageContext.servletContext.contextPath}/static/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.servletContext.contextPath}/static/js/bootstrap.min.js"></script>
    <script>
        $(function() {
            $(".meun-item").click(function() {
                $(".meun-item").removeClass("meun-item-active");
                $(this).addClass("meun-item-active");
                var itmeObj = $(".meun-item").find("img");
                itmeObj.each(function() {
                    var items = $(this).attr("src");
                    items = items.replace("_grey.png", ".png");
                    items = items.replace(".png", "_grey.png")
                    $(this).attr("src", items);
                });
                var attrObj = $(this).find("img").attr("src");
                ;
                attrObj = attrObj.replace("_grey.png", ".png");
                $(this).find("img").attr("src", attrObj);
            });
            $("#topAD").click(function() {
                $("#topA").toggleClass(" glyphicon-triangle-right");
                $("#topA").toggleClass(" glyphicon-triangle-bottom");
            });
            $("#topBD").click(function() {
                $("#topB").toggleClass(" glyphicon-triangle-right");
                $("#topB").toggleClass(" glyphicon-triangle-bottom");
            });
            $("#topCD").click(function() {
                $("#topC").toggleClass(" glyphicon-triangle-right");
                $("#topC").toggleClass(" glyphicon-triangle-bottom");
            });
            $(".toggle-btn").click(function() {
                $("#leftMeun").toggleClass("show");
                $("#rightContent").toggleClass("pd0px");
            })
        })
    </script>
    <!--[if lt IE 9]>
    <script src="${pageContext.servletContext.contextPath}/static/js/html5.js"></script>
    <script src="${pageContext.servletContext.contextPath}/static/js/respond.min.js"></script>
    <![endif]-->
    <link href="${pageContext.servletContext.contextPath}/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.servletContext.contextPath}/static/js/jquery-3.6.0.js">
    <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/static/css/common.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/static/css/slide.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/static/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/static/css/flat-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/static/css/jquery.nouislider.css">
    <style>

        .a{
            line-height: 20px;
            color: #fff;
            font-size: 12px;
            background: red;
            border: none;
            border-radius: 3px;
        }
        .b{
            background: #2ecc71;
        }
        .clearfix{
            margin-top: 10px;
        }
        .clearfix li{
            display: inline-block;
        }
    </style>
</head>

<body>
<div id="wrap">
    <!-- 左侧菜单栏目块 -->
    <div class="leftMeun" id="leftMeun">
        <div id="logoDiv" style="height: 80px;">
            <a href="//www.maoyan.com" style="    -webkit-text-size-adjust: 100%;
                                                            font-family: Microsoft YaHei,Helvetica,Arial,sans-serif;
                                                            -webkit-font-smoothing: subpixel-antialiased;
                                                            font-size: 2em;
                                                            text-decoration: none;
                                                            background: url(data:image/png;base64,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) no-repeat 0;
                                                            background-size: contain;
                                                            overflow: hidden;
                                                            float: left;
                                                            width: 133px;
                                                            height: 80px;
                                                            line-height: 100em;
                                                            margin-top: -20px;" class="logo" data-act="icon-click">猫眼电影</a>
        </div>
        <div class="meun-item meun-item-active"  href="#sour" aria-controls="sour" role="tab" data-toggle="tab">用户管理</div>
        <div class="meun-item" href="#char" aria-controls="char" role="tab" data-toggle="tab" onclick="a()">电影管理</div>
        <div class="meun-item" href="#user" aria-controls="user" role="tab" data-toggle="tab" onclick="b()">订单管理</div>
        <div class="meun-item" href="#scho" aria-controls="scho" role="tab" data-toggle="tab" onclick="c()">场次管理</div>
        <div class="meun-item" href="#scho" aria-controls="scho" role="tab" data-toggle="tab" onclick="d()">回到前台</div>
    </div>
    <!-- 右侧具体内容栏目 -->
    <div id="rightContent">

        <!-- Tab panes -->
        <div class="tab-content">
            <!-- 用户管理模块 -->
            <div role="tabpanel" class="tab-pane active" id="sour">
                <div class="check-div form-inline" style="position: relative;">
                    <div style="position: absolute; left: 10px;">
                        <button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#addSource" >添加用户</button>
                    </div>
                    <div style="position: absolute; right: 0;">
                        <input type="text" class=" form-control input-sm" id="username" placeholder="输入用户名搜索">
                        <button class="btn btn-white btn-xs" name="userName" onclick="search()">查 询 </button>
                    </div>
                </div>
                <div class="data-div">
                    <div class="row tableHeader" style="margin-bottom: 10px;">
                        <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 ">
                            用户id
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-4 col-xs-4">
                            用户名
                        </div>
                        <div class="col-lg-4 col-md-5 col-sm-5 col-xs-5">
                            邮箱
                        </div>
                        <div class="col-lg-2     col-md-2 col-sm-2 col-xs-2">
                            角色
                        </div>
                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                            操作
                        </div>
                    </div>

                    <c:forEach items="${userList}" var="user">
                        <c:if test="${user.valid!=-1}">
                            <div style="margin-left: 10px; margin-bottom: 10px;">
                                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1 ">
                                        ${user.userId}
                                </div>
                                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-4">
                                        ${user.userName}
                                </div>
                                <div class="col-lg-4 col-md-5 col-sm-5 col-xs-5">
                                        ${user.userEmail}
                                </div>

                                <div class="col-lg-2 col-md-5 col-sm-5 col-xs-5">
                                    <c:if test="${user.userRole==0}">普通用户</c:if>
                                    <c:if test="${user.userRole==1}">管理员</c:if>
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                    <button class="a b" onclick="aa(${user.userId})">重置</button>
                                    <button class="a" onclick="aaa(${user.userId})">禁用</button>
                                </div>
                            </div>
                        </c:if>

                    </c:forEach>

                </div>
                <!--页码块-->
                <footer class="footer">
                    <ul class="clearfix">
                        <c:if test="${current!=1}">
                            <li><a href="user?pageNum=1
                                <c:if test="${uName!=null}">
                                    &uName=${uName}
                                  </c:if>
                            ">首页</a></li>


                            <li><a href="user?pageNum=${current-1}
                                <c:if test="${uName!=null}">
                                    &uName=${uName}
                                  </c:if>
                            ">上一页</a></li>
                        </c:if>


                        <li class="current">${current}/${pages}</li>


                        <c:if test="${current!=pages}">
                            <li><a href="user?pageNum=${current+1}
                                 <c:if test="${uName!=null}">
                                    &uName=${uName}
                                  </c:if>
                            ">下一页</a></li>


                            <li><a href="user?pageNum=${pages}
                                <c:if test="${uName!=null}">
                                    &uName=${uName}
                                  </c:if>
                            ">末页</a></li>
                        </c:if>
                    </ul>
                </footer>

                <!--弹出窗口 添加资源-->
                <div class="modal fade" id="addSource" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">添加用户</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    <form class="form-horizontal">
                                        <div class="form-group ">
                                            <label for="sName" class="col-xs-3 control-label" id="uname">用户名</label>
                                            <div class="col-xs-8 ">
                                                <input type="email" class="form-control input-sm duiqi" id="sName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sLink" class="col-xs-3 control-label" id="upwd">密码：</label>
                                            <div class="col-xs-8 ">
                                                <input type="" class="form-control input-sm duiqi" id="sLink" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sOrd" class="col-xs-3 control-label" id="email">邮箱：</label>
                                            <div class="col-xs-8">
                                                <input type="" class="form-control input-sm duiqi" id="sOrd" placeholder="">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-xs btn-green" onclick="add()">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->
                <!-- /.modal -->
                <!--弹出删除资源警告窗口-->
                <div class="modal fade" id="deleteSource" role="dialog" aria-labelledby="gridSystemModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
                            </div>
                            <div class="modal-body">
                                <div class="container-fluid">
                                    确定要删除该资源？删除后不可恢复！
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="button" class="btn btn-xs btn-danger">保 存</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->
            </div>
            <!-- 电影管理模块 -->

            <!--订单管理模块-->

            <!--场次管理模块-->


        </div>
    </div>
</div>
<script src="js/jquery.nouislider.js"></script>

<!-- this page specific inline scripts -->
<script>
    //min/max slider
    function huadong(my, unit, def, max) {
        $(my).noUiSlider({
            range: [0, max],
            start: [def],
            handles: 1,
            connect: 'upper',
            slide: function() {
                var val = Math.floor($(this).val());
                $(this).find(".noUi-handle").text(
                    val + unit
                );
                console.log($(this).find(".noUi-handle").parent().parent().html());
            },
            set: function() {
                var val = Math.floor($(this).val());
                $(this).find(".noUi-handle").text(
                    val + unit
                );
            }
        });
        $(my).val(def, true);
    }
    huadong('.slider-minmax1', "分钟", "5", 30);
    huadong('.slider-minmax2', "分钟", "6", 15);
    huadong('.slider-minmax3', "分钟", "10", 60);
    huadong('.slider-minmax4', "次", "2", 10);
    huadong('.slider-minmax5', "天", "3", 7);
    huadong('.slider-minmax6', "天", "8", 10);



    function search(){
        let aa= document.getElementById("userName");
        console("aa"+aa)
        window.location.href= '';
    }
</script>
</body>

</html>
<script href=""></script>
<script>
    function search(){
        var name = document.getElementById("username").value;
        location.href = "user?uName="+name+"&&"+"pageNum="+${current};
    }
    function a(){
        location.href = "movie";
    }
    function b(){
        location.href = "order";
    }
    function c(){
        location.href = "schedule";
    }
    function d(){
        location.href = "${pageContext.servletContext.contextPath}/mainPage";
    }
    function aa(a){
        if (confirm("确定重置密码吗？")){
            location.href = "user?a="+1+"&&pageNum=${current}&&userId="+a;
        }
    }
    function aaa(a){
        if (confirm("确定禁用该用户吗？")){
            location.href = "user?a="+2+"&&pageNum=${current}&&userId="+a;
        }
    }
    function add(){
        var name = document.getElementById("sName").value;
        var pwd = document.getElementById("sLink").value;
        var email = document.getElementById("sOrd").value;
        console.log("name"+name)
        console.log("pwd"+pwd)
        console.log("email"+email)
        location.href = "user?name="+name+"&pageNum=${current}"
            +"&uPwd="+pwd
            +"&email="+email;
    }


</script>