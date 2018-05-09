<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>开发者主页</title>
    <!-- Bootstrap -->
    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet">
	<style>
	   .userDiv{width:600px;margin:120 auto;}
	   .link{color:blue;}
	   .update{color:red}
	   h1,tr,th,td
	   {
	    text-align: center;
	   }
	</style>
	<script src="<%=path %>/js/moment/jquery-1.12.4.min.js"></script>
	<script type="text/javascript">
	   $(function()
			   {
		           //$("tr:even").css("background","gray");
				   $(".link").on("click",function(){
					   var tr =$(this).parent().parent();
					   if(confirm("确定要删除吗？"))
						   {
						    $.post("${pageContext.request.contextPath}/delete",
						    		"id=" +$(this).attr("userid"),function(data)
						    		 {
						    	 if(data=="true")
						    		 {
						    		   tr.remove();
						    		 }
						    		});
						   }
				   });
			   });
	</script>
  </head>
  
  <body>
    
     <div class="userDiv" >
     <h1>用户信息</h1> 
     <table border="3" class="table table-hover">
        <tr>
          <th>姓名</th>
          <th>密码</th>
          <th><a href="/SSM/add">添加</a></th>
          <th><a href="#">主页</a></th>
        </tr>
       <c:forEach items="${user }" var="user">
       <tr>
         <td>${user.username }</td>
         <td>${user.mobile }</td>
         <td><label class="link" userid=${user.id }>删除</label></td>
         <td><a href="/SSM/update?id=${user.id }" class="update">修改</a></td>
       </tr>
       </c:forEach>
     </table>
      </div>
  </body>
</html>