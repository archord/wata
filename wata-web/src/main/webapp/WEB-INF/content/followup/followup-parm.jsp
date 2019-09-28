<%-- 
    Document   : observing
    Created on : 2017-8-18, 10:09:04
    Author     : xy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="robots" content="noindex">
        <title>WATA观测-设置默认系统参数</title>
        <meta name="viewport" content="width=1000, initial-scale=1.0, maximum-scale=1.0">
        <meta http-equiv="Content-Style-Type" content="text/css" />
        <meta http-equiv="pragma" content="no-cache" />
        <meta http-equiv="cache-control" content="no-cache" />
        <meta http-equiv="expires" content="0" />
        <meta http-equiv="keywords" content="wata，望远镜阵列" />
        <meta http-equiv="description" content="系统参数配置页面" />
        <link type="image/x-icon" rel="shortcut icon" href="${pageContext.request.contextPath}/resource/sysimg/favicon.ico"/>
        <link href="${pageContext.request.contextPath}/resource/multiselect/bootstrap-3.3.2.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resource/multiselect/bootstrap-multiselect.css" rel="stylesheet">

        <style type="text/css"> 
            html, body {
                padding: 0;
                margin: 0;
                height: 100%;
                width:100%;  
                text-align: center;
            }
            .obs_plan_table {width:98%}
            .obs_plan {  
                width:98%;  
                height: 98%;
                overflow:auto;  
                white-space: nowrap;
            }  
            .tab_container{
                width:99%; 
                height: 93%;
                text-align: center;
                border:0;
            }
            .manual_container1_col{padding: 5px; text-align: center}
            .manual_container1{
                border: 3px solid #c5c5c5;
                margin: 0 auto;
                padding: 5px;
                text-align: left;
                width: 500px;
                font-size: 20px;
            }
            .manual_container1 span{  
                white-space: nowrap;  /*强制span不换行*/
                display: inline-block;  /*将span当做块级元素对待*/
                overflow: hidden;  /*超出宽度部分隐藏*/
                text-overflow: ellipsis;  /*超出部分以点号代替*/
                line-height: 0.9;  /*数字与之前的文字对齐*/
            }
            .manual_container1 input{  
                margin: 2px;
                width: 180px;
            }
            .manual_container1 select {
                width: 100px;
                background: #fff;
                margin: 2px;
                height: 35px;
            }
            .manual_container1 .timeinput{  
                margin: 2px;
                font-size: 20px;
                width: 200px;
            }
            .manual_container_title{
                text-align: center;
                font-size: 26px;
                background-color: #eee;
                margin:  -5px 0px 5px 0px;
            }
            .manual_container2{
                border: 3px solid #c5c5c5;
                min-height: 343px;
                padding: 5px;
                margin-bottom: 10px;
            }
            .background {fill: #000;}
            line {stroke: #000;}
            #genObsPlanBtn{
                margin-top: 10px;
            }
            #parm_table{
                text-align: center;
            }
            #parm_table th{
                text-align: center;
            }
        </style>  
    </head>
    <body>

        <div id="tabs" style="width:98%; height:100%;margin:0 auto;border:0;">
            <div style="display: none;">
                <input type="hidden" id="gwacRootURL" value="${pageContext.request.contextPath}"/>
            </div>      

            <div class="tab_container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 manual_container1_col">
                        <div class="manual_container1">
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-md-12 " >
                                    <div class="manual_container_title">
                                        系统参数配置页面</div>
                                </div>
                            </div>
                            <form action="${pageContext.request.contextPath}/update-system-parameter.action" id="followUpParmSet">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-12">
                                        <table id="parm_table">
                                            <tr><td  style="text-align:left; width: 300px">观测控制服务器IP</td>
                                                <td  style="text-align:left;">
                                                    <input type="hidden" name="spId" id="spId" value=""/>
                                                    <input name="controlServerIp" id="controlServerIp"/>
                                                </td></tr>
                                            <tr><td  style="text-align:left;">观测控制服务器端口</td>
                                                <td  style="text-align:left;">
                                                    <input name="controlServerPort" id="controlServerPort"/>
                                                </td></tr>
                                            <tr><td colspan="2" style="text-align:center;">
                                                    <button type="button" id="genObsPlanBtn">提交</button>
                                                </td></tr>
                                        </table>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <script src="${pageContext.request.contextPath}/resource/multiselect/jquery-2.1.3.min.js"></script>
        <script src="${pageContext.request.contextPath}/resource/multiselect/bootstrap-3.3.2.min.js"></script>
        <script src="<%=request.getContextPath()%>/resource/jquery-ui-1.12.1/jquery-ui.min.js"></script>
        <script src="${pageContext.request.contextPath}/resource/js/date/My97DatePicker/WdatePicker.js"></script>
        <script src="<%=request.getContextPath()%>/resource/js/d3/d3.min.js"></script>
        <script src="<%=request.getContextPath()%>/resource/js/followup-parm.js"></script>


    </body>
</html>
