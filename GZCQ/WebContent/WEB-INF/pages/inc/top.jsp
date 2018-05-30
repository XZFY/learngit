<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

    <title>Gentellela Alela! | </title>

    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="${pageContext.request.contextPath }/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="${pageContext.request.contextPath }/css/nprogress.css" rel="stylesheet">
    <!-- bootstrap-progressbar -->
    <link href="${pageContext.request.contextPath }/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    
    <!-- Custom Theme Style -->
    <link href="${pageContext.request.contextPath }/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="nav-md">
  
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title"><i class="fa fa-leaf"></i> <span>广州传奇互联</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile">
              <div class="profile_pic">
                <img src="${pageContext.request.contextPath }/images/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>欢迎登陆</span>
                <h2>${loginUser.devName }</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>function</h3>
                <ul class="nav side-menu">
                  <li><a><i class="glyphicon glyphicon-cog"></i> 设置<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${pageContext.request.contextPath }/dev/appinfoList">查看数据</a></li>
                    </ul>
                  </li>
                </ul>
                
                <ul class="nav side-menu">
                  <li><a><i class="glyphicon glyphicon-user"></i> 用户管理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                     <li><a href="${pageContext.request.contextPath }/dev/index">添加数据</a></li>
                    </ul>
                  </li>
                </ul>
                
                <ul class="nav side-menu">
                  <li><a><i class="glyphicon glyphicon-usd"></i> 银行管理 <span class="fa fa-chevron-down"></span></a>  
                    <ul class="nav child_menu">
                      <li><a href="${pageContext.request.contextPath }/devupdate.jsp">修改密码</a></li>
                    </ul>
                  </li>
                </ul>
                
                <ul class="nav side-menu">
                  <li><a><i class="glyphicon glyphicon-credit-card"></i> 信用卡管理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      
                    </ul>
                  </li>
                </ul>
                
                <ul class="nav side-menu">
                  <li><a><i class="glyphicon glyphicon-yen"></i> 信贷管理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                     
                    </ul>
                  </li>
                </ul>
                
                <ul class="nav side-menu">
                  <li><a><i class="glyphicon glyphicon-home"></i> 门户管理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      
                    </ul>
                  </li>
                </ul>
                
                <ul class="nav side-menu">
                  <li><a><i class="glyphicon glyphicon-random"></i> 插件管理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      
                    </ul>
                  </li>
                </ul>
                
                <ul class="nav side-menu">
                  <li><a><i class="glyphicon glyphicon-level-up"></i> 资源管理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      
                    </ul>
                  </li>
                </ul>
                
                <ul class="nav side-menu">
                  <li><a><i class="glyphicon glyphicon-save-file"></i> 订单管理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                            
                    </ul>
                  </li>
                </ul>
                
                <ul class="nav side-menu">
                  <li><a><i class="glyphicon glyphicon-shopping-cart"></i> 商品管理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      
                    </ul>
                  </li>
                </ul>
                
                <ul class="nav side-menu">
                  <li><a><i class="glyphicon glyphicon-usd"></i> 支付方式 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      
                    </ul>
                  </li>
                </ul>
                
                <ul class="nav side-menu">
                  <li><a><i class="glyphicon glyphicon-plus"></i> 办卡管理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                                    
                    </ul>
                  </li>
                </ul>
                
                <ul class="nav side-menu">
                  <li><a><i class="glyphicon glyphicon-briefcase"></i> 用户贷款 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                     
                    </ul>
                  </li>
                </ul>
                
                <ul class="nav side-menu">
                  <li><a><i class="glyphicon glyphicon-tower"></i> 抽奖活动 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                     
                    </ul>
                  </li>
                </ul>
                
                <ul class="nav side-menu">
                  <li><a><i class="glyphicon glyphicon-apple"></i> 积分商城 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                                    
                    </ul>
                  </li>
                </ul>
                
                <ul class="nav side-menu">
                  <li><a><i class="glyphicon glyphicon-sunglasses"></i> 视频VIP <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                                         
                    </ul>
                  </li>
                </ul>
                
                <ul class="nav side-menu">
                  <li><a><i class="glyphicon glyphicon-menu-hamburger"></i> 展业工具 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                     
                    </ul>
                  </li>
                </ul>
                
                <ul class="nav side-menu">
                  <li><a><i class="glyphicon glyphicon-pencil"></i> 签约活动 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      
                    </ul>
                  </li>
                </ul>
                
                <ul class="nav side-menu">
                  <li><a><i class="glyphicon glyphicon-book"></i> 保险 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      
                    </ul>
                  </li>
                </ul>
                
                <ul class="nav side-menu">
                  <li><a><i class="glyphicon glyphicon-bed"></i> 违章代缴 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                     
                    </ul>
                  </li>
                </ul>
                
                <ul class="nav side-menu">
                  <li><a><i class="glyphicon glyphicon-credit-card"></i> 无卡支付 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      
                    </ul>
                  </li>
                </ul>
                
                <ul class="nav side-menu">
                  <li><a><i class="glyphicon glyphicon-credit-card"></i> 智能精养卡 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                     
                    </ul>
                  </li>
                </ul>
                
                <ul class="nav side-menu">
                  <li><a><i class="glyphicon glyphicon-compressed"></i> 代还设置 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      
                    </ul>
                  </li>
                </ul>
                
                <ul class="nav side-menu">
                  <li><a><i class="glyphicon glyphicon-cloud-upload"></i> 用户消息推送 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      
                    </ul>
                  </li>
                </ul>
              </div>
             

            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="${pageContext.request.contextPath }/images/img.jpg" alt="">${loginUser.devName }
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="javascript:;">帮助</a></li>
                    <li><a href="${pageContext.request.contextPath }/devLogin"><i class="fa fa-sign-out pull-right"></i>退出登陆</a></li>
                  </ul>
                </li>
                  <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                    <li>
                      <a>
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <div class="text-center">
                        <a>
                          <strong>See All Alerts</strong>
                          <i class="fa fa-angle-right"></i>
                        </a>
                      </div>
                    </li>
                  </ul>
                </li>
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->
