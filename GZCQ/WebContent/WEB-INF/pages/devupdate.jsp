<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="inc/top.jsp" %>
        <div class="right_col" role="main">
          <div class="">
			<div class="row">
				 <form method="post">
                 <h1>修改用户密码</h1>  
              <div>
                <input name="id" type="hidden" class="form-control"  value="${user.id }" />
              </div>
              <div>
                <input name="devPassword" type="text" class="form-control" placeholder="修改的密码"  value="${user.devPassword }" />
              </div>
              <div>
                <button class="btn btn-default btn-lg" type="submit">保存</button>
                <button class="btn btn-primary btn-lg" type="reset">重置</button>
              </div>    
            </form>
              </div>
			</div>
          </div>
        </div>
<%@include file="inc/foot.jsp" %>