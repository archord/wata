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
                <!--<li><a href="<%=request.getContextPath()%>/monitor/pctl-telescope-monitor.action">系统控制</a></li>-->
                <li><a href="<%=request.getContextPath()%>/control/pctl-observation-plan.action" target="_blank">观测计划</a></li>
                <li><a href="<%=request.getContextPath()%>/gwac/pgwac-mot-download.action" target="_blank">目标下载</a></li>
                <li><a href="<%=request.getContextPath()%>/monitor/pgwac-parm-monitor.action" target="_blank">目标查看</a></li>
                <li><a href="<%=request.getContextPath()%>/gwac/pgwac-mot-timesequence-sphere-debug.action" target="_blank">目标3D展示</a></li>
                <li><a href="<%=request.getContextPath()%>/gwac/pgwac-ccd-image-realtime.action" target="_blank">图像预览</a></li>
                <li><a href="#" target="_blank">夜天光</a></li>
                <li><a href="<%=request.getContextPath()%>/followup/followup-parm.action" target="_blank">系统参数配置</a></li>
                <li><a href="<%=request.getContextPath()%>/user-logout.action">退出</a></li>
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
                                    <h4>云图显示，时间：<span id="yuntuTime">2019-09-19 10:25:40</span></h4>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12 ">
                                    <a id="yuntuA" href="<%=request.getContextPath()%>/resource/images/yuntu.jpg">
                                        <img id="yumtuImg" src="<%=request.getContextPath()%>/resource/images/yuntu.jpg" border="0" style="width:100%;border-radius: 100px; "/></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-5 ">
                            <div class="row">
                                <div class="col-xs-4 col-sm-4 col-md-4 "><h3>雨量</h3></div>
                                <div class="col-xs-4 col-sm-4 col-md-4 "><h3 style="color:#0e0"><span id="rainState">0.0</span></h3></div>
                                <div class="col-xs-4 col-sm-4 col-md-4 "><h3 style="color:red" id="rainError"></h3></div>
                            </div>
                            <div class="row">
                                <div class="col-xs-4 col-sm-4 col-md-4 "><h3>风速</h3></div>
                                <div class="col-xs-4 col-sm-4 col-md-4 "><h3 style="color:#0e0"><span id="windState">0</span>米/秒</h3></div>
                                <div class="col-xs-4 col-sm-4 col-md-4 "><h3 style="color:red" id="windError"></h3></div>
                            </div>
                            <div class="row">
                                <div class="col-xs-4 col-sm-4 col-md-4 "><h3>圆顶</h3></div>
                                <div class="col-xs-4 col-sm-4 col-md-4 "><h3 style="color:#0e0" id="domeState">正常</h3></div>
                                <div class="col-xs-4 col-sm-4 col-md-4 "><h3 style="color:red" id="domeError"></h3></div>
                            </div>
                            <div class="row">
                                <div class="col-xs-4 col-sm-4 col-md-4 "><h3>转台</h3></div>
                                <div class="col-xs-4 col-sm-4 col-md-4 "><h3 style="color:#0e0" id="mountState">正常</h3></div>
                                <div class="col-xs-4 col-sm-4 col-md-4 "><h3 style="color:red" id="mountError"></h3></div>
                            </div>
                            <div class="row">
                                <div class="col-xs-4 col-sm-4 col-md-4 "><h3>相机</h3></div>
                                <div class="col-xs-4 col-sm-4 col-md-4 "><h3 style="color:red" id="cameraState">正常</h3></div>
                                <div class="col-xs-4 col-sm-4 col-md-4 "><h3 style="color:red" id="cameraError"></h3></div>
                            </div>
<!--                            <div class="row">
                                <div class="col-xs-4 col-sm-4 col-md-4 "><h3>镜盖</h3></div>
                                <div class="col-xs-4 col-sm-4 col-md-4 "><h3 style="color:#0e0" id="coverState">正常</h3></div>
                                <div class="col-xs-4 col-sm-4 col-md-4 "><h3 style="color:red" id="coverError"></h3></div>
                            </div>-->
                            <div class="row">
                                <div class="col-xs-4 col-sm-4 col-md-4 "><h3><input type="button" value="开始观测" class="btn btn-primary" id="startBtn" style="font-size: 20px"/></h3></div>
                                <div class="col-xs-4 col-sm-4 col-md-4 "><h3><input type="button" value="停止观测" class="btn btn-primary" id="stopBtn" style="font-size: 20px"/></h3></div>
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
              
              $('#startBtn').click(function(){
                  var controlUrl = "<%=request.getContextPath()%>/send-control-command.action?controlCommand=start";
                  $.ajax({url: controlUrl, type: "GET", success: function(msg){alert(msg.echo);}, error:  function(msg){alert(msg.echo);}});
              });
              $('#stopBtn').click(function(){
                  var controlUrl = "<%=request.getContextPath()%>/send-control-command.action?controlCommand=stop";
                  $.ajax({url: controlUrl, type: "GET", success: function(msg){alert(msg.echo);}, error:  function(msg){alert(msg.echo);}});
              });

              var requestTime = 5000;
              var dataurl = "<%=request.getContextPath()%>/get-system-parameter.action";
              $.ajax({url: dataurl, type: "GET", success: onDataReceived, error: errorLog});
              setInterval(function(){
                $.ajax({url: dataurl, type: "GET", success: onDataReceived, error: errorLog});
              }, requestTime);
              function errorLog() {
                console.log("server error");
              }
              function onDataReceived(result) {
                console.log(result);
                camera = result.camera;
                dome = result.dome;
                mount = result.mount;
                rainfall = result.rainfall;
                systemParameter = result.systemParameter;

                //$('#rainState').html(rainfall.value + "毫米");
                if(rainfall.value>0.5){
                    $('#rainState').html("有雨");
                    $('#rainState').css("color", "red");
                }else{
                    $('#rainState').html("无雨");
                    $('#rainState').css("color", "#0e0");
                }
                $('#rainState').attr("title", rainfall.ctime.replace("T", " "));
                $('#yuntuTime').html(systemParameter.latestClouldImageTime.replace("T", " "));
                var yuntuUrl = "/images/"+systemParameter.clouldImagePath+"/"+systemParameter.latestClouldImage + "?timestamp=" + new Date().getTime();
                $('#yumtuImg').attr("src", yuntuUrl);
                $('#yumtuA').attr("href", yuntuUrl);

                if (mount.linked === 0) {
                  $('#mountState').html("未连接");
                  $('#mountState').css("color", "red");
                } else {
                  var tstate = mount.state;
                  var showStr = '';
                  if (tstate === 0) {
                    showStr = '错误';
                  } else if (tstate === 1) {
                    showStr = '静止';
                  } else if (tstate === 2) {
                    showStr = '搜索零点';
                  } else if (tstate === 3) {
                    showStr = '完成零点搜索';
                  } else if (tstate === 4) {
                    showStr = '复位中';
                  } else if (tstate === 5) {
                    showStr = '复位';
                  } else if (tstate === 6) {
                    showStr = '指向';
                  } else if (tstate === 7) {
                    showStr = '跟踪';
                  }
                  if (mount.state === 0) {
                    $('#mountError').html("错误码:" + mount.errcode);
                    $('#mountState').css("color", "red");
                  } else {
                    $('#mountError').html("");
                    $('#mountState').css("color", "#0e0");
                  }
                  $('#mountState').html(showStr);
                  $('#mountState').attr("title", mount.timeUtc.replace("T", " "));
                }
                if (camera.linked === 0) {
                  $('#cameraState').html("未连接");
                  $('#cameraState').css("color", "red");
                } else {
                  var tstate = camera.status;
                  var showStr = '';
                  if (tstate === 0) {
                    showStr = '错误';
                  } else if (tstate === 1) {
                    showStr = '空闲';
                  } else if (tstate === 2) {
                    showStr = '曝光中';
                  } else if (tstate === 3) {
                    showStr = '完成曝光';
                  } else if (tstate === 4) {
                    showStr = '中止曝光';
                  } else if (tstate === 5) {
                    showStr = '暂停曝光';
                  } else if (tstate === 6) {
                    showStr = '延时等待';
                  } else if (tstate === 7) {
                    showStr = '等待同步信号';
                  } else if (tstate === 8) {
                    showStr = '平场重定位';
                  }
                  if (tstate === 0) {
                    $('#cameraError').html("错误码:" + camera.errcode);
                    $('#cameraState').css("color", "red");
                  } else {
                    $('#cameraError').html("");
                    $('#cameraState').css("color", "#0e0");
                  }
                  $('#cameraState').html(showStr);
                  $('#cameraState').attr("title", camera.cameraUtc.replace("T", " "));
                }
                if (dome.linked === 0) {
                  $('#domeState').html("未连接");
                  $('#domeState').css("color", "red");
                } else {
                  var tstate = dome.status;
                  var showStr = '';
                  if (tstate === 0) {
                    showStr = '错误';
                  } else if (tstate === 1) {
                    showStr = '正在打开';
                  } else if (tstate === 2) {
                    showStr = '已打开';
                  } else if (tstate === 3) {
                    showStr = '正在关闭';
                  } else if (tstate === 4) {
                    showStr = '已关闭';
                  } else if (tstate === 5) {
                    showStr = '半开后静止';
                  }else{
                      showStr = tstate;
                  }
                  if (tstate === 0) {
                    $('#domeError').html("错误码:" + dome.errcode);
                    $('#domeState').css("color", "red");
                  } else {
                    $('#domeError').html("");
                    $('#domeState').css("color", "#0e0");
                  }
                  $('#domeState').html(showStr);
                  $('#domeState').attr("title", dome.ctime.replace("T", " "));
                }

//                if (camera.coverLinked === 0) {
//                  $('#coverState').html("未连接");
//                  $('#coverState').css("color", "red");
//                } else {
//                  var tstate = camera.coverStatus;
//                  var showStr = '';
//                  if (tstate === 0) {
//                    showStr = '错误';
//                  } else if (tstate === 1) {
//                    showStr = '正在打开';
//                  } else if (tstate === 2) {
//                    showStr = '已打开';
//                  } else if (tstate === 3) {
//                    showStr = '正在关闭';
//                  } else if (tstate === 4) {
//                    showStr = '已关闭';
//                  }
//                  if (tstate === 0) {
//                    $('#coverError').html("错误码:" + camera.cameraCoverErrcode);
//                    $('#coverState').css("color", "red");
//                  } else {
//                    $('#coverError').html("");
//                    $('#coverState').css("color", "#0e0");
//                  }
//                  $('#coverState').html(showStr);
//                  $('#coverState').attr("title", camera.cameraCoverUtc.replace("T", " "));
//                }

              }

            });
        </script>
    </body>
</html>