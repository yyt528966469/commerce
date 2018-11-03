<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">

    <title>后台管理系统</title>

    <meta name="keywords" content="">
    <meta name="description" content="">

    <!--link rel="shortcut icon" href="favicon.ico"-->
    <link href="activity/vendor/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="css/index/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="css/index/animate.css" rel="stylesheet">
    <link href="css/index/style.css?v=4.1.0" rel="stylesheet">
    <style>
        .top_left {
            width: 80%;
            float: left;
        }

        .user_login {
            width: 20%;
            height: 75px;
            display: inline-block;
            position: relative;
        }

        .user_img {
            width: 50px;
            height: 75px;
            float: left;
            line-height: 75px;
            text-decoration: none;
        }

        .user_img img {
            width: 50px;
            height: 50px;
            background: #fff;
            border-radius: 50%;
        }
        .user_name{
            display: inline-block;
            width: 50px;
            height: 75px;
            line-height: 75px;
            font-size: 14px;
            font-weight: 500;
            color: #fff;
            margin-left: 5px;
        }
        .tc_user {
            width: 100px;
            height: 76px;
            position: absolute;
            transform: translate3d(0px, 70px, 0px);
            top: 0px;
            left: 0px;
            will-change: transform;
            border-radius: .25rem;
            display: none;
        }
        .tc_user .dropdown-item{
            font-size: 14px;
            color: inherit;
            width: 100%;
            height: 36px;
            display: inline-block;
            line-height: 36px;
            text-align: center;
            background-color: #fff;

        }
        .dropdown-item:hover{
            background-color: #ccc;
            color: white;
        }

        .noti-title {
            border-radius: 0.25rem 0.25rem 0 0;
            background-color: #eff3f6;
            margin: -4px 0px 0px 0px;
            width: auto;
            padding: 12px 20px;
            border-bottom: 1px solid #ccc;
        }

        .noti-title h5 {
            margin: 0;
            font-size: 14px;
            font-weight: 500;
        }
    </style>

    <script type="text/javascript">
        window.onload=function(){
            var roundedCircle = document.getElementById("rounded-circle");
            var tcUser = document.getElementById("tc_user");
            roundedCircle.onclick=function(){
                if(tcUser.style.display=='block')
                {
                    tcUser.style.display='none';
                }else{
                    tcUser.style.display='block';
                }
            }

        }
    </script>
</head>

<body class="fixed-sidebar full-height-layout gray-bg" style="overflow:hidden">
<div id="header" style="padding-left:30px;height:75px;width:auto;background-color:#2f4050">
    <div class="top_left">

        <p style="padding-top:15px;font-size:25px;color:white;font-family:'黑体'">武汉薇明科技有限公司</p>
        <#--<p style="padding-top:5px;font-size:18px;color:white;font-family:'黑体';margin-top:-20px">City Comprehensive Information Management System</p>-->
    </div>

    <div class="user_login" id="user_login">
        <a class="user_img">
            <img src="images/person.png" class="rounded-circle" id="rounded-circle" />
        </a>
        <h5 class="user_name">${ACTIVITY_WEB_LAST_USERNAME}</h5>
        <div class="tc_user" id="tc_user">
            <div class="noti-title">
                <h5>欢迎</h5>
            </div>
            <a class="dropdown-item" href="###" onclick="userlogout()">退出登录</a>

        </div>
    </div>
</div>

<!--主体-->

<div id="wrapper">
    <!--div class="dashbard-1" id="title">
        <img src="img/title.png">
    </div-->
    <!--左侧导航开始-->
    <nav class="navbar-default navbar-static-side" role="navigation" style="width: 171px;">
        <div class="nav-close"><i class="fa fa-times-circle"></i></div>
        <div class="sidebar-collapse">
            <ul class="nav" id="side-menu">
                <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                    <span class="ng-scope">&nbsp;</span>
                </li>
                <li>
                    <a href="#"><i class="fa fa-cloud-download"></i> <span class="nav-label">首页</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li class=""><a class="J_menuItem" href="echats"><i class="fa fa-cloud-download"></i>首页</a></li>
                    </ul>
                </li>
                <#--<li>-->
                <#list list as res>

		<li >
            <#--<span></span>-->
            <a href="#"><i class="${res.img}"></i> <span class="nav-label">${res.name}</span><span class="fa arrow"></span></a>
            <ul class="nav nav-second-level">
				<#list res.children as child>
				<#--<li >

                </li>-->
                <li url="${child.res_url}"><a class="J_menuItem" href="${child.res_url}"><i class="${child.img}"></i>${child.name}</a></li>
                </#list>
            <#--<li>
                机构分类

            </li>-->
            </ul>
        </li>
                </#list>


                <#--<li>
                    <a href="#"><i class="fa fa-cloud-download"></i> <span class="nav-label">基础数据管理</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li><a class="J_menuItem" href="Basic_data_road.html">道路数据</a></li>
                        <li><a class="J_menuItem" href="Basic_data_bridge.html">桥梁数据</a></li>
                        <li><a class="J_menuItem" href="Basic_data_pipe.html">地下管线数据</a></li>
                    </ul>
                </li>-->
                <#--<li>
                    <a href="#"><i class="fa fa-calendar"></i> <span class="nav-label">日常项目管理</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li><a class="J_menuItem" href="Daily_items.html">道路大中修</a></li>
                        <li><a class="J_menuItem" href="Daily_items1.html">排水管线改造</a></li>
                        <li><a class="J_menuItem" href="Daily_items2.html">慢行系统改造</a></li>
                        <li><a class="J_menuItem" href="">疏堵工程</a></li>
                        <li><a class="J_menuItem" href="">架空线入地</a></li>
                        <li><a class="J_menuItem" href="">微循环改造</a></li>
                        <li><a class="J_menuItem" href="daily_data.html">相关数据录入</a></li>
                    </ul>
                </li>
                <!--                     <li>
                                        <a href="#"><i class="fa fa-building-o"></i> <span class="nav-label">业务相关</span><span class="fa arrow"></span></a>
                                        <ul class="nav nav-second-level">
                                            <li><a class="J_menuItem" href="">占道审批</a></li>
                                            <li><a class="J_menuItem" href="">广告牌备案</a></li>
                                            <li><a class="J_menuItem" href="">各相关部门</a></li>
                                        </ul>
                                    </li> &ndash;&gt;
                <li>
                    <a href="#"><i class="fa fa-folder"></i> <span class="nav-label">状况备案管理</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li><a class="J_menuItem" href="">各部门协调</a></li>
                        <li><a class="J_menuItem" href="Status_record_create.html">事件记录创建</a></li>
                        <li><a class="J_menuItem" href="Status_record_query.html">事件记录查询</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-folder"></i> <span class="nav-label">数据更新管理</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li><a class="J_menuItem" href="">数据更新</a></li>
                        <li><a class="J_menuItem" href="Status_record_create.html">数据修改记录</a></li>
                    </ul>
                </li>-->
            </ul>
        </div>
    </nav>
    <!--左侧导航结束-->
    <!--右侧部分开始-->
    <div id="page-wrapper" class="gray-bg dashbard-1" style="margin-left: 173px;">
        <div class="row J_mainContent" id="content-main">
            <iframe id="J_iframe" src="echats"  width="100%" height="100%" frameborder="0" data-id=" seamless"></iframe>
        </div>
    </div>
    <!--右侧部分结束-->
    <!--内容
    <div1 id="content">

    </div1>-->
</div>

<!-- 全局js -->
<script src="js/jquery-3.1.1.min.js"></script>
<script src="activity/vendor/bootstrap.min.js"></script>
<script src="js/index/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="js/index/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="activity/vendor/layer/layer.min.js"></script>

<!-- 自定义js -->
<script src="js/index/hAdmin.js?v=4.1.0"></script>
<script type="text/javascript" src="js/index/index.js"></script>
<script>
    function userlogout() {
        layer.confirm("您确定退出登录",function () {
            window.location.href="logout";
        });

    }
</script>
</body>

</html>
