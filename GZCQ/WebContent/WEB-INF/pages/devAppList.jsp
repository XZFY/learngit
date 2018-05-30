<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="inc/top.jsp" %>
        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
			<!-- 显示列表 -->
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>列表 </h2>
                    <div class="clearfix"></div>
                        <table>
                             <tr>
                                 <th>用户ID</th>
                                 <th>用户账号</th>
                                 <th>用户名</th>
                                 <c:forEach items="${user }" var="user">
                                      <tr>
                                       <td>${user.id }</td>
                                       <td>${user.devCode }</td>
                                       <td>${user.devName }</td>
                                       <td><a href="/GZCQ/dev/update?id=${user.id }">修改</a></td>                                    
                                      </tr>
                                 </c:forEach>
                             </tr>
                        </table>
                  </div>
                </div>
              </div>
			</div>
          </div>
        </div>
<%@include file="inc/foot.jsp" %>