<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="inc/top.jsp" %>
        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
			<!-- 显示应用列表 -->
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>App应用列表 <small>Users</small></h2>
                    <div class="clearfix"></div>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    
                    <div class="dataTables_wrapper form-inline dt-bootstrap no-footer" id="datatable_wrapper">
                   	<div class="row">
                   	<div class="col-md-6 col-sm-6 col-xs-12">
                		<a href="${pageContext.request.contextPath }/dev/addAppInfo" class="btn btn-success" type="button">添加App基础信息</a>
                	</div>
                   	<div class="col-sm-12">
                   	<table class="table table-striped table-bordered dataTable no-footer" id="datatable" role="grid" aria-describedby="datatable_info">
                      <thead>
						<tr role="row">
							<th tabindex="0" class="sorting" aria-controls="datatable" style="width: 88px;" aria-label="Name: activate to sort column ascending" rowspan="1" colspan="1">软件名称</th>
							<th tabindex="0" class="sorting" aria-controls="datatable" style="width: 68px;" aria-label="Position: activate to sort column ascending" aria-sort="descending" rowspan="1" colspan="1">APK名称</th>
							<th tabindex="0" class="sorting" aria-controls="datatable" style="width: 88px;" aria-label="Office: activate to sort column ascending" rowspan="1" colspan="1">软件大小（单位：M）</th>
							<th tabindex="0" class="sorting" aria-controls="datatable" style="width: 42px;" aria-label="Age: activate to sort column ascending" rowspan="1" colspan="1">所属平台</th>
							<th tabindex="0" class="sorting" aria-controls="datatable" style="width: 88px;" aria-label="Start date: activate to sort column ascending" rowspan="1" colspan="1">所属分类（一级分类->二级分类->三级分类）</th>
							<th tabindex="0" class="sorting" aria-controls="datatable" style="width: 67px;" aria-label="Salary: activate to sort column ascending" rowspan="1" colspan="1">状态</th>
							<th tabindex="0" class="sorting" aria-controls="datatable" style="width: 88px;" aria-label="Start date: activate to sort column ascending" rowspan="1" colspan="1">下载次数</th>
							<th tabindex="0" class="sorting" aria-controls="datatable" style="width: 88px;" aria-label="Start date: activate to sort column ascending" rowspan="1" colspan="1">最新版本号</th>
							<th tabindex="0" class="sorting" aria-controls="datatable" style="width: 155px;" aria-label="Start date: activate to sort column ascending" rowspan="1" colspan="1">操作</th>
						</tr>
					  </thead>
                      <tbody>
                       <c:forEach items="${appInfoList }" var="appInfo" varStatus="st">
                         <c:if test="st.index %2 == 0">
                           <tr class="odd" role="row">
                         </c:if>
                         <c:if test="st.index %2 != 0">
                           <tr class="even" role="row">
                         </c:if>
                         
                          <td class="sorting_1">${appInfo.softwareName }</td>
                          <td>${appInfo.apkName }</td>
                          <td>${appInfo.softwareSize }</td>
                          <td>${appInfo.flatform }</td>
                          <td>${appInfo.categoryName }</td>
                          <td>${appInfo.statusName }</td>
                          <td>${appInfo.downloads }</td>
                          <td>${appInfo.versionNo }</td>
                          <td><div class="btn-group">
                      <button class="btn btn-danger" type="button">点击操作</button>
                      <button class="btn btn-danger dropdown-toggle" aria-expanded="false" type="button" data-toggle="dropdown">
                        <span class="caret"></span>
                        <span class="sr-only">Toggle Dropdown</span>
                      </button>
                      <ul class="dropdown-menu" role="menu">
                        <c:if test="${appInfo.status == 2 ||appInfo.status ==5}">
                        	<li><a href="javascript:void(0);" class="sale" data-id="${appInfo.id }" data-status="4">上架</a></li>
                        </c:if>
                        <c:if test="${appInfo.status == 4 }">
                        	<li><a href="javascript:void(0);" class="sale" data-id="${appInfo.id }" data-status="5">下架</a></li>
                        </c:if>
                        
                        <li><a href="${pageContext.request.contextPath }/dev/appInfo/${appInfo.id}/view">查看</a></li>
                        <li><a href="${pageContext.request.contextPath }/dev/appInfo/${appInfo.id}/edit">修改</a></li>
                        <li><a href="">删除</a></li>
                        <li><a href="${pageContext.request.contextPath }/dev/appVersion/${appInfo.id}/add">新增版本</a></li>
                        <li><a href="">修改版本</a></li>
                      </ul>
                    </div></td>
                        </tr>
                       </c:forEach> 
                        </tbody>
                    </table></div></div>
                    <div class="row">
                    <div class="col-sm-5">
                    <div class="dataTables_info" id="datatable_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div>
                    </div>
                    <div class="col-sm-7">
                    <div class="dataTables_paginate paging_simple_numbers" id="datatable_paginate">
                    <ul class="pagination">
                    <li class="paginate_button previous disabled" id="datatable_previous">
                    <a tabindex="0" aria-controls="datatable" href="#" data-dt-idx="0">Previous</a>
                    </li>
                    <li class="paginate_button active"><a tabindex="0" aria-controls="datatable" href="#" data-dt-idx="1">1</a></li>
                    <li class="paginate_button "><a tabindex="0" aria-controls="datatable" href="#" data-dt-idx="2">2</a></li>
                    <li class="paginate_button "><a tabindex="0" aria-controls="datatable" href="#" data-dt-idx="3">3</a></li>
                    <li class="paginate_button "><a tabindex="0" aria-controls="datatable" href="#" data-dt-idx="4">4</a></li>
                    <li class="paginate_button "><a tabindex="0" aria-controls="datatable" href="#" data-dt-idx="5">5</a></li>
                    <li class="paginate_button "><a tabindex="0" aria-controls="datatable" href="#" data-dt-idx="6">6</a></li>
                    <li class="paginate_button next" id="datatable_next"><a tabindex="0" aria-controls="datatable" href="#" data-dt-idx="7">Next</a></li>
                    </ul>
                    </div></div></div></div>
                  </div>
                </div>
              </div>
			</div>
          </div>
        </div>
        <!-- /page content -->
<%@include file="inc/foot.jsp" %>