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

    <title>添加用户界面</title>

    <!-- Bootstrap -->
    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="<%=path %>/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="login">
    <div>
      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form method="post">
              <h1>添加用户</h1>  
              <div>
                <input name="username" type="text" class="form-control" placeholder="用户名" required="" />
              </div>
              <div>
                <input name="mobile" type="password" class="form-control" placeholder="密码" required="" />
              </div>
              <div>
                <button class="btn btn-default btn-lg" type="submit">提交</button>
                <button class="btn btn-primary btn-lg" type="reset">重置</button>
              </div>    
            </form>
          </section>
        </div>
      </div>
    </div>
  </body>
</html>
