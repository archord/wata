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
    <meta http-equiv="keywords" content="国家天文台,svom,gwac,望远镜阵列,光变分类" />
    <meta http-equiv="description" content="GWAC参数监控" />
    <link type="image/x-icon" rel="shortcut icon" href="${pageContext.request.contextPath}/resource/sysimg/favicon.ico"/>

    <title>GWAC参数监控- <s:text name="showcase.version"/></title>

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
            <input name="obsDate" id="obsDate" class="timeinput" style="width:80px"
                   onclick="WdatePicker({dateFmt: 'yyyy-MM-dd'})" class="Wdate timeinput"/><br/><br/>
            <select name="unitId" id="unitId" class="form-control select select-primary" data-toggle="select" size="5">
              <option value="001">转台1</option>
              <option value="002">转台2</option>
              <option value="003">转台3</option>
              <option value="004">转台4</option>
              <option value="005">转台5</option>
            </select><br/>
            <select name="fieldId" id="fieldId" class="form-control select select-primary" data-toggle="select" size="6">
            </select>
          </div>
        </div>
        <div class="col-xs-10 col-sm-10 col-md-11 ">
          <div class="row star-list-main">  

            <div id="star-light-curve-show">
              <div id="star-light-curve-title">
                <span>X轴为时间，单位(分钟)，开始于<span id="startDay">0</span>(UTC)</span>
              </div>
              <div id="star-light-curve"></div>
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
    <script src="${pageContext.request.contextPath}/resource/js/date/My97DatePicker/WdatePicker.js"></script>
    <script src="${pageContext.request.contextPath}/resource/js/monitor-point.js"></script>
  </body>
</html>