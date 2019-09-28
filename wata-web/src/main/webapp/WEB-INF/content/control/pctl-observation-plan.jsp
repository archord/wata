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
    <title>GWAC观测计划列表</title>
    <meta name="viewport" content="width=1000, initial-scale=1.0, maximum-scale=1.0">
    <meta http-equiv="Content-Style-Type" content="text/css" />
    <meta http-equiv="pragma" content="no-cache" />
    <meta http-equiv="cache-control" content="no-cache" />
    <meta http-equiv="expires" content="0" />
    <meta http-equiv="keywords" content="wata，望远镜阵列" />
    <meta http-equiv="description" content="观测计划列表页面" />
    <link type="image/x-icon" rel="shortcut icon" href="${pageContext.request.contextPath}/resource/sysimg/favicon.ico"/>
    <link href="${pageContext.request.contextPath}/resource/multiselect/bootstrap-3.3.2.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resource/multiselect/bootstrap-multiselect.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resource/css/jquery.dataTables.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resource/css/gwac-ui.css" rel="stylesheet">
  </head>
  <body>

    <div style="display: none;">
      <input type="hidden" id="gwacRootURL" value="${pageContext.request.contextPath}"/>
    </div>      
    <div id="tabs-monitor-table-div" style="width:95%; height:100%;margin:0 auto;border:0;">
      <div style="width:100%; text-align: center; margin-top: 20px;">
        <form action="${pageContext.request.contextPath}/get-observation-plan-list.action" id="getUnDonePlanForm" method="post">
          <span style="font-size: 18px">待执行观测计划列表&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <select id="unitId" name="unitId" height="30">
            <option value="">全部望远镜</option>
            <option value="001">望远镜01</option>
          </select>
        </form>
      </div>
      <div id="ot-list">
        <table id="obs-plan-table" class="display" cellspacing="0" width="100%">
          <thead><tr><th></th><th>计划编号</th><th>计划类型</th><th>开始时间</th><th>结束时间</th><th>执行状态</th><th>执行时间</th></tr></thead>

          <tfoot><tr><th></th><th>计划编号</th><th>计划类型</th><th>开始时间</th><th>结束时间</th><th>执行状态</th><th>执行时间</th></tr></tfoot>
        </table>
      </div>  
    </div>
    <div id="tabs-monitor-table-div2" style="width:95%; height:100%;margin:0 auto;border:0;">
      <div style="width:100%; text-align: center;">
        <form action="${pageContext.request.contextPath}/get-observation-plan-list.action" id="getDonePlanForm" method="post">
          <span style="font-size: 18px">已执行观测计划列表&nbsp;&nbsp;&nbsp;&nbsp;</span>
          <select id="unitId2" name="unitId" height="30">
            <option value="">全部望远镜</option>
            <option value="001">望远镜01</option>
          </select>
        </form>
      </div>
      <div id="ot-list">
        <table id="obs-plan-table2" class="display" cellspacing="0" width="100%">
          <thead><tr><th></th><th>计划编号</th><th>计划类型</th><th>开始时间</th><th>结束时间</th><th>执行状态</th><th>执行时间</th></tr></thead>

          <tfoot><tr><th></th><th>计划编号</th><th>计划类型</th><th>开始时间</th><th>结束时间</th><th>执行状态</th><th>执行时间</th></tr></tfoot>
        </table>
      </div>  
    </div>

    <script src="${pageContext.request.contextPath}/resource/multiselect/jquery-2.1.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/resource/multiselect/bootstrap-3.3.2.min.js"></script>
    <script src="<%=request.getContextPath()%>/resource/jquery-ui-1.12.1/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/resource/js/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/resource/js/date/My97DatePicker/WdatePicker.js"></script>
    <script src="<%=request.getContextPath()%>/resource/js/d3/d3.min.js"></script>
    <script src="<%=request.getContextPath()%>/resource/js/pctl-observation-plan.js"></script>


  </body>
</html>
