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
                <!--<li><a href="<%=request.getContextPath()%>/monitor/pgwac-parm-monitor.action" target="_blank">目标查看</a></li>-->
                <li><a href="<%=request.getContextPath()%>/gwac/pgwac-mot-timesequence-sphere-debug.action" target="_blank">目标3D展示</a></li>
                <li><a href="<%=request.getContextPath()%>/gwac/pgwac-ccd-image-realtime.action" target="_blank">图像预览</a></li>
                <li><a href="<%=request.getContextPath()%>/monitor/monitor-mag.action" target="_blank">夜天光</a></li>
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
                        <div class="col-xs-12 col-sm-12 col-md-6 ">
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12 ">
                                    <h4>云图显示，时间：<span id="yuntuTime">2019-09-19 10:25:40</span></h4>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12 ">
                                    <a id="yuntuA" href="<%=request.getContextPath()%>/resource/images/yuntu.jpg">
                                        <img id="yuntuImg" src="<%=request.getContextPath()%>/resource/images/yuntu.jpg" border="0" style="width:100%;border-radius: 100px; "/></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6 ">
                            <div class="row">&nbsp;<br/>&nbsp;<br/></div>
                            <div class="row">
                                <div class="col-md-2 "><h3>雨量</h3></div>
                                <div class="col-md-2 "><h3 style="color:#0e0"><span id="rainState">0.0</span></h3></div>
                                <div class="col-md-2 "><h3 style="color:red" id="rainError"></h3></div>
                                <div class="col-md-2 "><h3>风速</h3></div>
                                <div class="col-md-2 "><h3 style="color:#0e0"><span id="windState">0</span>米/秒</h3></div>
                                <div class="col-md-2 "><h3 style="color:red" id="windError"></h3></div>
                            </div>
                            <div class="row">
                                <div class="col-md-2 "><h3>圆顶1</h3></div>
                                <div class="col-md-2 "><h3 style="color:#0e0" id="dome1State">正常</h3></div>
                                <div class="col-md-2 "><h3 style="color:red" id="dome1Error"></h3></div>
                                <div class="col-md-2 "><h3>圆顶2</h3></div>
                                <div class="col-md-2 "><h3 style="color:#0e0" id="dome2State">正常</h3></div>
                                <div class="col-md-2 "><h3 style="color:red" id="dome2Error"></h3></div>
                            </div>
                            <div class="row">
                                <div class="col-md-2 "><h3>转台1</h3></div>
                                <div class="col-md-2 "><h3 style="color:#0e0" id="mount1State">正常</h3></div>
                                <div class="col-md-2 "><h3 style="color:red" id="mount1Error"></h3></div>
                                <div class="col-md-2 "><h3>转台3</h3></div>
                                <div class="col-md-2 "><h3 style="color:#0e0" id="mount3State">正常</h3></div>
                                <div class="col-md-2 "><h3 style="color:red" id="mount3Error"></h3></div>
                            </div>
                            <div class="row">
                                <div class="col-md-2 "><h3>相机1</h3></div>
                                <div class="col-md-2 "><h3 style="color:red" id="camera1State">正常</h3></div>
                                <div class="col-md-2 "><h3 style="color:red" id="camera1Error"></h3></div>
                                <div class="col-md-2 "><h3>相机3</h3></div>
                                <div class="col-md-2 "><h3 style="color:red" id="camera3State">正常</h3></div>
                                <div class="col-md-2 "><h3 style="color:red" id="camera3Error"></h3></div>
                            </div>
                            <div class="row">
                                <div class="col-md-2 "><h3>转台2</h3></div>
                                <div class="col-md-2 "><h3 style="color:#0e0" id="mount2State">正常</h3></div>
                                <div class="col-md-2 "><h3 style="color:red" id="mount2Error"></h3></div>
                                <div class="col-md-2 "><h3>转台4</h3></div>
                                <div class="col-md-2 "><h3 style="color:#0e0" id="mount4State">正常</h3></div>
                                <div class="col-md-2 "><h3 style="color:red" id="mount4Error"></h3></div>
                            </div>
                            <div class="row">
                                <div class="col-md-2 "><h3>相机2</h3></div>
                                <div class="col-md-2 "><h3 style="color:red" id="camera2State">正常</h3></div>
                                <div class="col-md-2 "><h3 style="color:red" id="camera2Error"></h3></div>
                                <div class="col-md-2 "><h3>相机4</h3></div>
                                <div class="col-md-2 "><h3 style="color:red" id="camera4State">正常</h3></div>
                                <div class="col-md-2 "><h3 style="color:red" id="camera4Error"></h3></div>
                            </div>
                            <div class="row">
                                <div class="col-md-2 "></div>
                                <div class="col-md-2 "><h3><input type="button" value="开始观测" class="btn btn-primary" id="startBtn" style="font-size: 20px"/></h3></div>
                                <div class="col-md-2 "></div>
                                <div class="col-md-2 "></div>
                                <div class="col-md-2 "><h3><input type="button" value="停止观测" class="btn btn-primary" id="stopBtn" style="font-size: 20px"/></h3></div>
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

              $('#startBtn').click(function () {
                var controlUrl = "<%=request.getContextPath()%>/send-control-command.action?controlCommand=start";
                $.ajax({url: controlUrl, type: "GET", success: function (msg) {
                    alert(msg.echo);
                  }, error: function (msg) {
                    alert(msg.echo);
                  }});
              });
              $('#stopBtn').click(function () {
                var controlUrl = "<%=request.getContextPath()%>/send-control-command.action?controlCommand=stop";
                $.ajax({url: controlUrl, type: "GET", success: function (msg) {
                    alert(msg.echo);
                  }, error: function (msg) {
                    alert(msg.echo);
                  }});
              });

              var requestTime = 5000;
              var dataurl = "<%=request.getContextPath()%>/get-system-parameter.action";
              $.ajax({url: dataurl, type: "GET", success: onDataReceived, error: errorLog});
              setInterval(function () {
                $.ajax({url: dataurl, type: "GET", success: onDataReceived, error: errorLog});
              }, requestTime);
              function errorLog() {
                console.log("server error");
              }
              function onDataReceived(result) {
                //console.log(result);
                cameras = result.cameras;
                domes = result.domes;
                mounts = result.mounts;
                rainfall = result.rainfall;
                systemParameter = result.systemParameter;

                //$('#rainState').html(rainfall.value + "毫米");
                if (rainfall.value > 0.5) {
                  $('#rainState').html("有雨");
                  $('#rainState').css("color", "red");
                } else {
                  $('#rainState').html("无雨");
                  $('#rainState').css("color", "#0e0");
                }
                if (rainfall.ctime !== null && rainfall.ctime.indexOf('T') > 0) {
                  $('#rainState').attr("title", rainfall.ctime.replace("T", " "));
                }
                $('#yuntuTime').html(systemParameter.latestClouldImageTime.replace("T", " "));
                var yuntuUrl = "/images/" + systemParameter.clouldImagePath + "/" + systemParameter.latestClouldImage + "?timestamp=" + new Date().getTime();
                $('#yuntuImg').attr("src", yuntuUrl);
                $('#yuntuA').attr("href", yuntuUrl);


                $.each(mounts, function (i, mount) {
                  var errorId = "#mount" + mount.mountId + "Error";
                  var stateId = "#mount" + mount.mountId + "State";
                  if (mount.linked === 0) {
                    $(stateId).html("未连接");
                    $(stateId).css("color", "red");
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
                      $(errorId).html("错误码:" + mount.errcode);
                      $(stateId).css("color", "red");
                    } else {
                      $(errorId).html("");
                      $(stateId).css("color", "#0e0");
                    }
                    $(stateId).html(showStr);
                    $(stateId).attr("title", mount.timeUtc.replace("T", " "));
                  }
                });

                $.each(cameras, function (i, camera) {
                  var errorId = "#camera" + camera.cameraId + "Error";
                  var stateId = "#camera" + camera.cameraId + "State";
                  if (camera.linked === 0) {
                    $(stateId).html("未连接");
                    $(stateId).css("color", "red");
                  } else {
                    var tstate = camera.status;
                    var showStr = '';
                    if (tstate === 0) {
                      showStr = '错误';
                    } else if (tstate === 1) {
                      showStr = '空闲';
                    } else if (tstate === 2) {
                      showStr = '曝光中';
                    } else if (tstate === 4) {
                      showStr = '完成曝光';
                    } else if (tstate === 8) {
                      showStr = '中止曝光';
                    } else if (tstate === 16) {
                      showStr = '暂停曝光';
                    } else if (tstate === 32) {
                      showStr = '延时等待';
                    } else if (tstate === 64) {
                      showStr = '等待同步信号';
                    } else if (tstate === 128) {
                      showStr = '平场重定位';
                    }
                    if (tstate === 0) {
                      $(errorId).html("错误码:" + camera.errcode);
                      $(stateId).css("color", "red");
                    } else {
                      $(errorId).html("");
                      $(stateId).css("color", "#0e0");
                    }
                    $(stateId).html(showStr);
                    if (camera.cameraUtc !== null && camera.cameraUtc.indexOf('T') > 0) {
                      $(stateId).attr("title", camera.cameraUtc.replace("T", " "));
                    }
                  }
                });

                $.each(domes, function (i, dome) {
                  var errorId = "#dome" + dome.domeId + "Error";
                  var stateId = "#dome" + dome.domeId + "State";
                  if (dome.linked === 0) {
                    $(stateId).html("未连接");
                    $(stateId).css("color", "red");
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
                    } else {
                      showStr = tstate;
                    }
                    if (tstate === 0) {
                      $(errorId).html("错误码:" + dome.errcode);
                      $(stateId).css("color", "red");
                    } else {
                      $(errorId).html("");
                      $(stateId).css("color", "#0e0");
                    }
                    $(stateId).html(showStr);
                    $(stateId).attr("title", dome.ctime.replace("T", " "));
                  }
                });

              }
            });
        </script>
    </body>
</html>