<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Philo.Web.Index" %>

<!DOCTYPE html>
<html lang="cn">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>首 页</title>

    <!-- Bootstrap framework -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="bootstrap/css/bootstrap-responsive.min.css" />
    <!-- tooltips-->
    <link rel="stylesheet" href="lib/qtip2/jquery.qtip.min.css" />

    <!-- gebo color theme-->
    <link href="Content/Style/green.css" rel="stylesheet" />
    <!-- main styles -->
    <link rel="stylesheet" href="Content/Style/style.css" />

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico" />

    <!--[if lte IE 8]>
            <link rel="stylesheet" href="Content/ie/ie.css" />
            <script src="Content/ie/html5.js"></script>
            <script src="Content/ie/respond.min.js"></script>
        <![endif]-->

    <script>
        //* hide all elements & show preloader
        document.documentElement.className += 'js';
    </script>
</head>
<body>
    <div id="loading_layer" style="display: none">
        <img src="img/ajax_loader.gif" alt="" />
    </div>
    <div id="maincontainer" class="clearfix">
        <!-- header -->
        <header>
            <div class="navbar navbar-fixed-top">
                <div class="navbar-inner">
                    <div class="container-fluid">
                        <a class="brand" href="#"><i class="icon-home icon-white"></i>通用管理平台</a>
                        <ul class="nav user_menu pull-right">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Username <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Action</a></li>
                                    <li><a href="#">Another Action</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#">Another Action</a></li>
                                </ul>
                            </li>
                        </ul>
                        <ul class="nav" id="mobile-nav">
                            <li class="dropdown">
                                <a data-toggle="dropdown" class="dropdown-toggle" href="#">menu <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">menu section</a></li>
                                    <li><a href="#">menu section</a></li>
                                    <li><a href="#">menu section</a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a data-toggle="dropdown" class="dropdown-toggle" href="#">menu <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">menu section</a></li>
                                    <li><a href="#">menu section</a></li>
                                    <li><a href="#">menu section</a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a data-toggle="dropdown" class="dropdown-toggle" href="#">menu <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">menu section</a></li>
                                    <li><a href="#">menu section</a></li>
                                    <li><a href="#">menu section</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>

        <!-- main content -->
        <div id="contentwrapper">
            <div class="main_content">
            </div>
        </div>
    </div>

    <!-- sidebar -->
    <a href="javascript:void(0)" class="sidebar_switch on_switch ttip_r" title="隐藏菜单">菜单</a>
    <div class="sidebar">
        <div class="antiScroll">
            <div class="antiscroll-inner">
                <div class="antiscroll-content">
                    <div class="sidebar_inner">
                        <%--  <form action="search_page.html" class="input-append" method="post">
                                <input autocomplete="off" name="query" class="search_query input-medium" size="16" type="text" placeholder="Search..." />
                                <button type="submit" class="btn"><i class="icon-search"></i></button>
                            </form>--%>
                        <br />
                        <div id="side_accordion" class="accordion">

                            <div class="accordion-group">
                                <div class="accordion-heading">
                                    <a href="#collapseOne" data-parent="#side_accordion" data-toggle="collapse" class="accordion-toggle">Section
                                    </a>
                                </div>
                                <div class="accordion-body collapse" id="collapseOne">
                                    <div class="accordion-inner">
                                        <ul class="nav nav-list">
                                            <li><a href="javascript:void(0)">Side menu</a></li>
                                            <li><a href="javascript:void(0)">Side menu</a></li>
                                            <li><a href="javascript:void(0)">Side menu</a></li>
                                            <li><a href="javascript:void(0)">Side menu</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-group">
                                <div class="accordion-heading">
                                    <a href="#collapseTwo" data-parent="#side_accordion" data-toggle="collapse" class="accordion-toggle">Section
                                    </a>
                                </div>
                                <div class="accordion-body collapse" id="collapseTwo">
                                    <div class="accordion-inner">
                                        <ul class="nav nav-list">
                                            <li><a href="javascript:void(0)">Side menu</a></li>
                                            <li><a href="javascript:void(0)">Side menu</a></li>
                                            <li><a href="javascript:void(0)">Side menu</a></li>
                                            <li><a href="javascript:void(0)">Side menu</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-group">
                                <div class="accordion-heading">
                                    <a href="#collapseThree" data-parent="#side_accordion" data-toggle="collapse" class="accordion-toggle">Section
                                    </a>
                                </div>
                                <div class="accordion-body collapse" id="collapseThree">
                                    <div class="accordion-inner">
                                        <ul class="nav nav-list">
                                            <li><a href="javascript:void(0)">Side menu</a></li>
                                            <li><a href="javascript:void(0)">Side menu</a></li>
                                            <li><a href="javascript:void(0)">Side menu</a></li>
                                            <li><a href="javascript:void(0)">Side menu</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="accordion-group">
                                <div class="accordion-heading">
                                    <a href="#collapseFour" data-parent="#side_accordion" data-toggle="collapse" class="accordion-toggle">Section
                                    </a>
                                </div>
                                <div class="accordion-body collapse in" id="collapseFour">
                                    <div class="accordion-inner">
                                        <ul class="nav nav-list">
                                            <li><a href="javascript:void(0)">Side menu</a></li>
                                            <li><a href="javascript:void(0)">Side menu</a></li>
                                            <li><a href="javascript:void(0)">Side menu</a></li>
                                            <li><a href="javascript:void(0)">Side menu</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="Content/Script/jquery.min.js"></script>
    <script src="Content/Script/jquery-migrate.min.js"></script>
    <!-- smart resize event -->
    <script src="Content/Script/jquery.debouncedresize.min.js"></script>
    <!-- hidden elements width/height -->
    <script src="Content/Script/jquery.actual.min.js"></script>
    <!-- js cookie plugin -->
    <script src="Content/Script/jquery_cookie.min.js"></script>
    <!-- main bootstrap js -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <!-- bootstrap plugins -->
    <script src="Content/Script/bootstrap.plugins.min.js"></script>
    <!-- tooltips -->
    <script src="lib/qtip2/jquery.qtip.min.js"></script>
    <!-- fix for ios orientation change -->
    <script src="Content/Script/ios-orientationchange-fix.js"></script>
    <!-- scrollbar -->
    <script src="lib/antiscroll/antiscroll.js"></script>
    <script src="lib/antiscroll/jquery-mousewheel.js"></script>
    <!-- mobile nav -->
    <script src="Content/Script/selectNav.js"></script>
    <!-- common functions -->
    <script src="Content/Script/gebo_common.js" charset="gb2312"></script>

    <script>
        $(document).ready(function () {
            //* show all elements & remove preloader
            setTimeout('$("html").removeClass("js")', 1000);
        });
    </script>

    </div>
</body>
</html>
