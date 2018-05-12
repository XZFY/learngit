<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="inc/top.jsp" %>
        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
			<!-- 显示列表 -->
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>添加用户 </h2>
                    <div class="clearfix"></div>
                           <form method="post">
                             <div>
                               <input name="devCode" type="text" placeholder="用户账号" required="">
                             </div>
                             <div>
                               <input name="devName" type="password" placeholder="用户名" required="">
                             </div>
                              <div>
                               <input name="devPassword" type="password" placeholder="用户密码" required="">
                             </div>
                             <div>
                               <input name="devEmail" type="password" placeholder="用户邮件" required="">
                             </div>
                             <div>
                                  <button type="submit">提交</button>
                                  <button type="reset">重置</button>
                             </div>
                           </form>
                  </div>
                </div>
              </div>
			</div>
          </div>
        </div>
<%@include file="inc/foot.jsp" %>