<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
  <head>
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
              <h1>修改用户</h1>  
              <div>
                <input name="id" type="hidden" class="form-control"  value="${user.id }" />
              </div>
              <div>
                <input name="username" type="text" class="form-control" placeholder="修改的姓名"  value="${user.username }" />
              </div>
              <div>
                <button class="btn btn-default btn-lg" type="submit">保存</button>
                <button class="btn btn-primary btn-lg" type="reset">重置</button>
              </div>    
            </form>
          </section>
        </div>
      </div>
    </div>
  </body>
</html>
