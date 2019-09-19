<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="ch"> 
    <head>
        <meta charset="UTF-8">
        <meta name="robots" content="noindex">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Style-Type" content="text/css" />
        <meta http-equiv="pragma" content="no-cache" />
        <meta http-equiv="cache-control" content="no-cache" />
        <meta http-equiv="expires" content="0" />
        <meta http-equiv="keywords" content="wata，望远镜阵列" />
        <meta http-equiv="description" content="WATA系统控制" />
        <link type="image/x-icon" rel="shortcut icon" href="${pageContext.request.contextPath}/resource/sysimg/favicon.ico"/>

        <title>WATA信息展示平台 - <s:text name="showcase.version"/></title>

        <link href="${pageContext.request.contextPath}/resource/styles/flexible-grids.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/resource/css/font-oxygen/oxygen.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/resource/css/sliding-menu.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/resource/multiselect/bootstrap-3.3.2.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resource/css/gwac-style.css" rel="stylesheet" type="text/css" />

        <script src="${pageContext.request.contextPath}/resource/multiselect/jquery-2.1.3.min.js"></script>

    </head>
    <body>
        <!-- Navigation -->
        <nav id="slide-menu">
            <ul>
                <li><a href="<%=request.getContextPath()%>/monitor/pctl-telescope-monitor.action">系统控制</a></li>
                <li><a href="gwac/pgwac-allot.action">观测计划</a></li>
                <li><a href="<%=request.getContextPath()%>/monitor/pgwac-parm-monitor.action" target="_blank">目标列表</a></li>
                <li><a href="<%=request.getContextPath()%>/gwac/pgwac-mot-timesequence-sphere-realtime.action" target="_blank">目标动态展示</a></li>
                <li><a href="<%=request.getContextPath()%>/gwac/pgwac-ccd-image-realtime.action" target="_blank">图像预览</a></li>
                <li><a href="<%=request.getContextPath()%>/user-logout.action" target="_blank">退出</a></li>
            </ul>
        </nav>
        <!-- Content panel -->
        <div id="main_page_content">
            <div class="menu-trigger"></div>
            <div id="main_content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-7 ">
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12 ">
                                    <h4>云图显示，时间：<span id="yuntuId">2019年09月19日10点25分40秒</span></h4>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12 ">
                                <a href="<%=request.getContextPath()%>/resource/images/yuntu.jpg">
                                    <img src="<%=request.getContextPath()%>/resource/images/yuntu.jpg" border="0" style="width:100%;border-radius: 100px; "/></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-5 ">
                            <div class="row">
                                <div class="col-xs-2 col-sm-2 col-md-2 "></div>
                                <div class="col-xs-4 col-sm-4 col-md-4 "><h2>雨量</h2></div>
                                <div class="col-xs-4 col-sm-4 col-md-4 "><h2 style="color:#0e0">正常</h2></div>
                                <div class="col-xs-2 col-sm-2 col-md-2 "></div>
                            </div>
                            <div class="row">
                                <div class="col-xs-2 col-sm-2 col-md-2 "></div>
                                <div class="col-xs-4 col-sm-4 col-md-4 "><h2>风速</h2></div>
                                <div class="col-xs-4 col-sm-4 col-md-4 "><h2 style="color:#0e0">正常</h2></div>
                                <div class="col-xs-2 col-sm-2 col-md-2 "></div>
                            </div>
                            <div class="row">
                                <div class="col-xs-2 col-sm-2 col-md-2 "></div>
                                <div class="col-xs-4 col-sm-4 col-md-4 "><h2>圆顶</h2></div>
                                <div class="col-xs-4 col-sm-4 col-md-4 "><h2 style="color:#0e0">正常</h2></div>
                                <div class="col-xs-2 col-sm-2 col-md-2 "></div>
                            </div>
                            <div class="row">
                                <div class="col-xs-2 col-sm-2 col-md-2 "></div>
                                <div class="col-xs-4 col-sm-4 col-md-4 "><h2>转台</h2></div>
                                <div class="col-xs-4 col-sm-4 col-md-4 "><h2 style="color:#0e0">正常</h2></div>
                                <div class="col-xs-2 col-sm-2 col-md-2 "></div>
                            </div>
                            <div class="row">
                                <div class="col-xs-2 col-sm-2 col-md-2 "></div>
                                <div class="col-xs-4 col-sm-4 col-md-4 "><h2>相机</h2></div>
                                <div class="col-xs-4 col-sm-4 col-md-4 "><h2 style="color:red">异常</h2></div>
                                <div class="col-xs-2 col-sm-2 col-md-2 "></div>
                            </div>
                            <div class="row">
                                <div class="col-xs-2 col-sm-2 col-md-2 "></div>
                                <div class="col-xs-4 col-sm-4 col-md-4 "><h2>镜盖</h2></div>
                                <div class="col-xs-4 col-sm-4 col-md-4 "><h2 style="color:#0e0">正常</h2></div>
                                <div class="col-xs-2 col-sm-2 col-md-2 "></div>
                            </div>
                            <div class="row">
                                <div class="col-xs-2 col-sm-2 col-md-2 "></div>
                                <div class="col-xs-4 col-sm-4 col-md-4 "><h2><input type="button" value="开始观测" class="btn btn-primary" id="startBtn" style="font-size: 30px"/></h2></div>
                                <div class="col-xs-4 col-sm-4 col-md-4 "><h2><input type="button" value="停止观测" class="btn btn-primary" id="stopBtn" style="font-size: 30px"/></h2></div>
                                <div class="col-xs-2 col-sm-2 col-md-2 "></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script>
            $(function () {

              var $body = document.getElementsByTagName("body")[0];
              var $menu_trigger = $body.getElementsByClassName('menu-trigger')[0];
              if (typeof $menu_trigger !== 'undefined') {
                $menu_trigger.addEventListener('click', function () {
                  $body.className = $body.className === 'menu-active' ? '' : 'menu-active';
                });
              }
            });
        </script>
    </body>
</html>