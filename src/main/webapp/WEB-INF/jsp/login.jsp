<%--.
1`
  Created by IntelliJ IDEA.
  User: asus1
  Date: 2021/5/28
  Time: 18:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language=    "java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="${pageContext.request.contextPath}/css/user/css/bootstrap.min.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/css/font-awesome.min.css" type="text/javascript" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/css/user/css/bootsnav.css"  rel="stylesheet">

    <link href="${pageContext.request.contextPath}/css/user/css/normalize.css"  rel="stylesheet">

    <link href="${pageContext.request.contextPath}/css/user/css/css.css" rel="stylesheet" type="text/css">
    <script src="${pageContext.request.contextPath}/css/user/js/jquery-1.11.0.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/css/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/css/user/js/bootsnav.js" type="text/javascript"></script>

    <!-- 加密 -->
    <script src="${pageContext.request.contextPath}/css/js/encrypt/aes.js"></script>
    <script src="${pageContext.request.contextPath}/css/js/encrypt/mode-ecb.js"></script>
    <!-- 登录操作 -->
    <script src="${pageContext.request.contextPath}/css/user/js/jquery.js" type="text/javascript"></script>
    <!--[if IE]><script src="${pageContext.request.contextPath}/css/user/js/html5.js"></script><![endif]-->
    <title>登录</title>
</head>

<body class="logobg_style">
<div id="large-header" class="large-header login-page">
    <canvas id="demo-canvas" width="1590" height="711"></canvas>
    <div class="login-form">
        <div class="login-content">
            <h1 class="title_name">账户登录</h1>
            <form action="${pageContext.request.contextPath}/logining"  method="post" class="login_padding">
                <div class="form-group clearfix">
                    <div class="input-group">
                        <div class="input-group-addon">
                            <i class="icon_user"></i>
                        </div>

                        <input type="text" class="form-control" name="username"
                               id="username" placeholder="账号" autocomplete="off">
                    </div>

                </div>

                <div class="form-group clearfix">

                    <div class="input-group">
                        <div class="input-group-addon">
                            <i class="icon_password"></i>
                        </div>

                        <input type="password" class="form-control" name="password"
                               id="password" placeholder="密码" autocomplete="off">
                    </div>

                </div>
                <div class=" textright">
                    <a href="reset.html" class="forget">忘记密码？</a>
                </div>
                <div class="tishi"></div>
                <div class="form-group">
                    <input type="submit" class="btn btn-danger btn-block btn-login" value="登录">

                </div>
                <div class=" textright">
                    <a href="register.html" class="forget">立即注册</a>
                </div>
                <!-- Implemented in v1.1.4 -->
                <div class="form-group"></div>
            </form>
        </div>

    </div>
</div>
</body>
</html>


