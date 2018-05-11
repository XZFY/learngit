<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>开发者用户登录界面</title>

    <!-- Bootstrap -->
    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="<%=path %>/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="<%=path %>/css/nprogress.css" rel="stylesheet">
    
    <!-- Custom Theme Style -->
    <link href="<%=path %>/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form method="post">
              <h1>登录入口</h1>
              <div>${errMsg }</div>
              <div>
                <input name="devCode" type="text" class="form-control" placeholder="用户名" required="" />
              </div>
              <div>
                <input name="devPassword" type="password" class="form-control" placeholder="密码" required="" />
              </div>
              <div>
                <button class="btn btn-success" type="submit">登录</button>
                
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-leaf"></i> GZCQ</h1>
                  <p>©2018 All Rights Reserved. 广州传奇谢泽锋</p>
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
  </body>
</html>
