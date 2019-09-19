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
        <meta http-equiv="keywords" content="wata,望远镜阵列" />
        <meta http-equiv="description" content="WATA目标列表" />
        <link type="image/x-icon" rel="shortcut icon" href="${pageContext.request.contextPath}/resource/sysimg/favicon.ico"/>

        <title>WATA目标列表- <s:text name="showcase.version"/></title>

        <link href="${pageContext.request.contextPath}/resource/multiselect/bootstrap-3.3.2.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resource/multiselect/bootstrap-multiselect.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resource/css/gwac-ui.css" rel="stylesheet">

        <style type="text/css">
            .container-fluid{
                min-width: 800px;
                margin: 5px;
            }
            .star-list-left{
                margin-top: 50px;
            }

            #star-light-curve-show{
                width: 100%;
                height: 800px;
                margin-top: 10px
            }

            #star-light-curve-title{
                width: 100%;  
                height: 20px; 
                text-align:center;
            }
            #star-light-curve{
                width: 100%; 
                height: 700px;
            }
        </style>

    </head>
    <body>
        <div class="container-fluid">
            <div style="display: none;">
                <input type="hidden" id="gwacRootURL" value="${pageContext.request.contextPath}"/>
                <input type="hidden" id="otName" value="<%=request.getParameter("otName")%>"/>
            </div>

            <div class="row ">
                <div class="col-xs-2 col-sm-2 col-md-1 ">
                    <div class="row star-list-left">
                        <select name="formqp.obsDate" id="obsDate" class="form-control select select-primary" data-toggle="select" size="6">
                            
                        </select><br/>
                        <select name="formqp.ccdList" id="ccdList" class="form-control select select-primary" data-toggle="select" size="4"  multiple="multiple">
                            <option value="1">G011</option>
                            <option value="2">G012</option>
                            <option value="3">G013</option>
                            <option value="7">G022</option>
                        </select><br/>
                        <select name="formqp.objList" id="objList" class="form-control select select-primary" data-toggle="select" size="16">

                        </select>
                    </div>
                </div>
                <div class="col-xs-10 col-sm-10 col-md-11 ">
                    <div class="row star-list-main">  
                        <div class="col-xs-8 col-sm-8 col-md-8 ">
                                <div id="star-light-curve-show">
                                    <div id="star-light-curve-title">
                                        <span>X轴为时间，单位(分钟)，开始于<span id="startDay">0</span>(UTC)</span>
                                    </div>
                                    <div id="star-light-curve"></div>
                                </div>
                        </div>
                        <div class="col-xs-4 col-sm-4 col-md-4 ">
                            <div style="text-align:center;">
                                <br/><br/>
                                <br/><br/>
                                <a href="<%=request.getContextPath()%>/resource/images/yuntu.jpg">
                                    <img src="<%=request.getContextPath()%>/resource/images/yuntu.jpg" border="0" style="width:100%;border-radius: 10px; "/></a>
                                    <br/><br/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div id='tooltip'></div>
        <script src="${pageContext.request.contextPath}/resource/multiselect/jquery-2.1.3.min.js"></script>
        <script src="<%=request.getContextPath()%>/resource/js/plot/jquery.flot.js"></script>
        <script src="<%=request.getContextPath()%>/resource/js/plot/jquery.flot.categories.js"></script>
        <script src="<%=request.getContextPath()%>/resource/js/plot/jquery.flot.resize.min.js"></script>
        <script src="<%=request.getContextPath()%>/resource/js/plot/jquery.flot.errorbars.min.js"></script>
        <script src="<%=request.getContextPath()%>/resource/js/plot/jquery.flot.navigate.min.js"></script>
        <script src="<%=request.getContextPath()%>/resource/js/plot/jquery.flot.crosshair.min.js"></script>
        <script src="${pageContext.request.contextPath}/resource/js/monitor_parm.js"></script>
    </body>
</html>