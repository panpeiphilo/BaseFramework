<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Philo.Web.Login" %>

<!DOCTYPE html>
<html lang="cn" class="login_page">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>通用管理平台 - 登陆</title>

    <!-- Bootstrap framework -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="bootstrap/css/bootstrap-responsive.min.css" />
    <!-- theme color-->
    <link href="Content/Style/tamarillo.css" rel="stylesheet" />
    <!-- tooltip -->
    <link rel="stylesheet" href="lib/qtip2/jquery.qtip.min.css" />
    <!-- main styles -->
    <link rel="stylesheet" href="Content/Style/style.css" />

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico" />

    <%--<link href='http://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>--%>

    <!--[if lte IE 8]>
            <script src="Content/ie/html5.js"></script>
            <script src="Content/ie/respond.min.js"></script>
        <![endif]-->

</head>
<body>

    <div class="login_box">

        <form action="dashboard.html" method="post" id="login_form">
            <div class="top_b">登录到后台管理</div>
            <div class="alert alert-info alert-login">
                请输入用户名密码登录.
            </div>
            <div class="cnt_b">
                <div class="formRow">
                    <div class="input-prepend">
                        <span class="add-on"><i class="icon-user"></i></span>
                        <input type="text" id="username" name="username" placeholder="用户名" value="" />
                    </div>
                </div>
                <div class="formRow">
                    <div class="input-prepend">
                        <span class="add-on"><i class="icon-lock"></i></span>
                        <input type="password" id="password" name="password" placeholder="密  码" value="" />
                    </div>
                </div>
                <div class="formRow clearfix">
                    <label class="checkbox">
                        <input type="checkbox" />
                        记住我</label>
                </div>
            </div>
            <div class="btm_b clearfix">
                <button class="btn btn-inverse pull-right" type="submit">登 录</button>
                <span class="link_reg"><a href="#reg_form">还没有注册？请点击这里注册。</a></span>
            </div>
        </form>

        <form action="dashboard.html" method="post" id="pass_form" style="display: none">
            <div class="top_b">不能登陆?</div>
            <div class="alert alert-info alert-login">
                请输入您的邮箱。 您会收到一封邮件来重置新密码！
            </div>
            <div class="cnt_b">
                <div class="formRow clearfix">
                    <div class="input-prepend">
                        <span class="add-on">@</span><input type="text" placeholder="邮  箱" />
                    </div>
                </div>
            </div>
            <div class="btm_b tac">
                <button class="btn btn-inverse" type="submit">获取密码</button>
            </div>
        </form>

        <form action="dashboard.html" method="post" id="reg_form" style="display: none">
            <div class="top_b">注册用户</div>
            <div class="alert alert-login">
                填写下列内容并点击注册按钮, 接收并同意 <a data-toggle="modal" href="#terms">服务条款</a>.
            </div>
            <div id="terms" class="modal hide fade" style="display: none">
                <div class="modal-header">
                    <a class="close" data-dismiss="modal">×</a>
                    <h3>条款和注意事项</h3>
                </div>
                <div class="modal-body">
                    <p>
                        1.<br />
                        2.<br />
                        3.<br />
                        4.<br />
                    </p>
                </div>
                <div class="modal-footer">
                    <a data-dismiss="modal" class="btn" href="#">关闭</a>
                </div>
            </div>
            <div class="cnt_b">

                <div class="formRow">
                    <div class="input-prepend">
                        <span class="add-on"><i class="icon-user"></i></span>
                        <input type="text" placeholder="用户名" />
                    </div>
                </div>
                <div class="formRow">
                    <div class="input-prepend">
                        <span class="add-on"><i class="icon-lock"></i></span>
                        <input type="text" placeholder="密  码" />
                    </div>
                </div>
                <div class="formRow">
                    <div class="input-prepend">
                        <span class="add-on">@</span><input type="text" placeholder="邮  箱" />
                    </div>
                    <small>邮箱将不会公开并只用于取回密码！</small>
                </div>

            </div>
            <div class="btm_b tac">
                <button class="btn btn-inverse" type="submit">注  册</button>
            </div>
        </form>

        <div class="links_b links_btm clearfix">
            <span class="linkform"><a href="#pass_form">忘记密码？</a></span>
            <span class="linkform" style="display: none">不用了, <a href="#login_form">返回登录页面</a></span>
        </div>
    </div>

    <script src="Content/Script/jquery.min.js"></script>
    <script src="Content/Script/jquery-migrate.min.js"></script>
    <script src="Content/Script/jquery.actual.min.js"></script>
    <script src="lib/validation/jquery.validate.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function () {

            //* boxes animation
            form_wrapper = $('.login_box');
            function boxHeight() {
                form_wrapper.animate({ marginTop: (-(form_wrapper.height() / 2) - 24) }, 400);
            };
            form_wrapper.css({ marginTop: (-(form_wrapper.height() / 2) - 24) });
            $('.linkform a,.link_reg a').on('click', function (e) {
                var target = $(this).attr('href'),
                    target_height = $(target).actual('height');
                $(form_wrapper).css({
                    'height': form_wrapper.height()
                });
                $(form_wrapper.find('form:visible')).fadeOut(400, function () {
                    form_wrapper.stop().animate({
                        height: target_height,
                        marginTop: (-(target_height / 2) - 24)
                    }, 500, function () {
                        $(target).fadeIn(400);
                        $('.links_btm .linkform').toggle();
                        $(form_wrapper).css({
                            'height': ''
                        });
                    });
                });
                e.preventDefault();
            });

            //* validation
            $('#login_form').validate({
                onkeyup: false,
                errorClass: 'error',
                validClass: 'valid',
                rules: {
                    username: { required: true, minlength: 3 },
                    password: { required: true, minlength: 3 }
                },
                highlight: function (element) {
                    $(element).closest('div').addClass("f_error");
                    setTimeout(function () {
                        boxHeight()
                    }, 200)
                },
                unhighlight: function (element) {
                    $(element).closest('div').removeClass("f_error");
                    setTimeout(function () {
                        boxHeight()
                    }, 200)
                },
                errorPlacement: function (error, element) {
                    $(element).closest('div').append(error);
                }
            });
        });
    </script>
</body>
</html>
