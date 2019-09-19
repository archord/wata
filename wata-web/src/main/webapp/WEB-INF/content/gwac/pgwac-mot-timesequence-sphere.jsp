<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>OT分布实时概览图-天球坐标</title>
    <link type="image/x-icon" rel="shortcut icon" href="${pageContext.request.contextPath}/resource/sysimg/favicon.ico"/>
    <script language="javascript" type="text/javascript" src="<%=request.getContextPath()%>/resource/js/plot/jquery.min.js"></script>
    <script language="javascript" type="text/javascript" src="<%=request.getContextPath()%>/resource/js/d3/d3.min.js"></script>
    <script language="javascript" type="text/javascript" src="<%=request.getContextPath()%>/resource/js/d3/topojson.min.js"></script>
    <script language="javascript" type="text/javascript" src="<%=request.getContextPath()%>/resource/js/d3/d3.geo.zoom.js"></script>
    <script language="javascript" type="text/javascript" src="<%=request.getContextPath()%>/resource/js/mot_timesequence_sphere.js"></script>
    <link href="<%=request.getContextPath()%>/resource/js/d3/maps.css" rel="stylesheet" type="text/css">
    <script>
      $(function() {
        var root = "<%=request.getContextPath()%>";
        var url = "get-mov-ot-sequence-list.action?dateStr=";
        var curl = "resource/celestial-d3/data/constellations.lines.json";
        var mainHeight = $("#main").height();
        var headerHeight = $("#header").height();
        $("#sphereDisplay").height(mainHeight - headerHeight - 10);

        var gwac = $.gwac("#sphereDisplay", root, url, curl);
        gwac.getConstellations();
        gwac.loadSkyList();
        gwac.loadDpmList();
        gwac.loadDateStrList();
        loadData();


        $('#dynamicDrawOt1').change(function() {
          if ($(this).is(":checked")) {
            gwac.updateShowData();
            if (typeof (gwac.ot1DrawInterval) !== "undefined" && gwac.ot1DrawInterval !== null) {
              clearInterval(gwac.ot1DrawInterval);
            }
            gwac.ot1DrawInterval = setInterval(dynamicDrawOt1, gwac.playSpeed);
          } else {
            clearInterval(gwac.ot1DrawInterval);
          }
        });

        $('#obsDate').change(function() {
          loadData();
        });

        $('#movType').change(function() {
          gwac.updateShowData();
          //保证在选择类型时，currentFrame不增加，因为dynamicDrawOt1会对currentFrame增加playInterval
          gwac.currentFrame = gwac.startFrame + (gwac.currentFrame - gwac.startFrame - gwac.playInterval) % (gwac.endFrame - gwac.startFrame + 1);
          dynamicDrawOt1();
        });

        $('#changeView').click(function() {
          gwac.changeView(gwac);
        });

        function loadData() {

          var dateStr = $("#obsDate").val();
          if (dateStr !== '0') {

            if ($('#dynamicDrawOt1').attr("checked")) {
              $('#dynamicDrawOt1').attr("checked", false);
            }

            if (typeof (gwac.ot1DrawInterval) !== "undefined" && gwac.ot1DrawInterval !== null) {
              clearInterval(gwac.ot1DrawInterval);
            }

            var movUrl = root + "/" + url + dateStr;
//            console.log(movUrl);

            d3.json(movUrl, function(errors, reqData) {
              var motList = reqData.motList;
              var ot1List = reqData.ot1List;
              if (typeof (motList) !== "undefined" && motList !== null && motList !== ""
                      && typeof (ot1List) !== "undefined" && ot1List !== null && ot1List !== "") {
                gwac.parseData(reqData);
                gwac.draw();
                setTimeout(function() {
                  gwac.ot1DrawInterval = setInterval(dynamicDrawOt1, gwac.playSpeed);
                }, gwac.startAnimationDuration);

                if (!$('#dynamicDrawOt1').attr("checked")) {
                  $('#dynamicDrawOt1').attr("checked", true);
                }
              } else {
                console.log("Cannot find data on day " + dateStr + ".");
                alert("Cannot find data on day " + dateStr + ".");
              }
            });
          }
        }

        function dynamicDrawOt1() {
          gwac.currentFrame = gwac.startFrame + (gwac.currentFrame - gwac.startFrame + gwac.playInterval) % (gwac.endFrame - gwac.startFrame + 1);
          $('#currentFrame').val(gwac.currentFrame);
          if (gwac.currentFrame > 1) {
            gwac.svg.selectAll(".ot1").remove();
            gwac.svg.selectAll(".motLine").remove();
            gwac.svg.selectAll(".motPoint").remove();
          }
          gwac.drawOt1();
          gwac.drawMot();
        }

        $(window).resize(function() {
          var winWidth = $(window).width();
          var winHeight = $(window).height();
          $("#main").width(winWidth);
          $("#main").height(winHeight);
          $("#header").width(winWidth);
          $("#sphereDisplay").width(winWidth);
          $("#sphereDisplay").height(winHeight - $("#header").height() - 10);
          gwac.draw();
        });
      });

    </script>
    <style>
      /*@import url(<%=request.getContextPath()%>/resource/js/d3/maps.css);*/

      body{background-color: black;}
      path {fill: none;stroke-linejoin: round;}
      #main{width:100%;height: 100%;text-align: center;position: absolute; top: 0; left: 0;}
      #tooltip{position:absolute;z-index:10;visibility:hidden;color:white;}
      #header{width: 100%;height: 40px;font-size: 28px;text-align: center; color: white;padding-top: 5px;}
      #sphereDisplay{margin: auto;width:100%;height: 90%;}
      #toolbar {position: absolute;bottom: auto;right: 10px;top: 45px;left: auto;width: 180px;z-index: 10;text-align: left;color: white;font-size: 14px;}
      #toolbar label{display: block; margin: 3px 0; padding-left: 15px; text-indent: -15px; cursor: pointer;}
      #toolbar input[type='checkbox']{width: 14px;height: 14px;padding: 0;margin:0 5px 0 0;vertical-align: bottom;position: relative;top: -1px;*overflow: hidden; cursor: pointer;}
      .ot1-input{width: 80px;height: 20px; padding:0;margin:0 0 0 10px;border:none;background-color: transparent;outline: none;color:#fff;}
      #toolbar select{border: solid 1px #fff; background:transparent;}


      /*.graticule {fill: none;stroke: #636B62;stroke-width: .5px;stroke-dasharray: 2,2;}*/
      .graticule{stroke: #666666;stroke-width: 0.3px;}
      .sphere{stroke: #636B62;stroke-width: 1px;}
      .equator {stroke: #636B62;stroke-width: 1px;}
      .primemeridian {stroke: #636B62;stroke-width: 1px;}
      .origin{stroke: #636B62;stroke-width: 5px;fill: #636B62;}
      .ot1{stroke: #fff;stroke-width: 1.5px;fill: #fff;}
      .ot2{stroke: #993399;stroke-width: 3px;fill: #993399;}
      .ot2mch{stroke: #FFFF99;stroke-width: 3px;fill: #FFFF99;}
      .ot2cur{stroke: #FF33CC;stroke-width: 5px;fill: #FF33CC;}
      .motLine{stroke-width: 1.5px;}
      .motPoint{stroke-width: 2px;}
      .constellation{stroke: #888888;stroke-width: 0.5px;}

    </style>

  </head>
  <body>
    <div id="main">
      <div id="header">OT分布实时概览图-天球坐标</div>
      <div id="sphereDisplay"></div>
      <div id="toolbar">
        <table style="border:0">
          <tr><td colspan="2"><input type="checkbox" checked="" id="dynamicDrawOt1"><span id="playot2">播放</span></td></tr>
          <tr><td colspan="2"><input type="checkbox" id="singleFramePlay"><span id="singleFrameLabel">单帧播放</span></td></tr>
          <tr><td width="70px">播放速度:</td><td><input type="text" id="playSpeed" class="ot1-input" value="400"/></td></tr>
          <tr><td>每次间隔:</td><td><input type="text" id="playInterval" class="ot1-input" value="1"/></td></tr>
          <tr><td>开始帧:</td><td><input type="text" id="startFrame" class="ot1-input" value="1"/></td></tr>
          <tr><td>当前帧:</td><td><input type="text" id="currentFrame" class="ot1-input" value="1"/></td></tr>
          <tr><td>结束帧:</td><td><input type="text" id="endFrame" class="ot1-input" value="1"/></td></tr>
          <tr><td>总帧数:</td><td><input type="text" id="totalFrame" class="ot1-input" value="1"/></td></tr>
          <tr><td>最少帧数:</td><td><input type="text" id="miniFrameNumber" class="ot1-input" value="1"/></td></tr>
          <tr><td>选择日期</td><td><select name="formqp.obsDate" id="obsDate" class="ot1-input" data-toggle="select">
                <option style="background-color:#000" value="0" selected>请选择</option>
              </select></td></tr>
          <tr><td>目标类别:</td><td><select id="movType" class="ot1-input" data-toggle="select">
                <option style="background-color:#000" value="0">所有类型</option>
                <option style="background-color:#000" value="1" selected>多帧单点</option>
                <option style="background-color:#000" value="2">多帧两点</option>
                <option style="background-color:#000" value="3">多帧多点</option>
                <option style="background-color:#000" value="4">一帧多点</option>
                <option style="background-color:#000" value="5">其他</option>
              </select></td></tr>
          <tr><td>选择天区:</td><td><select name="formqp.obsSky" id="obsSky" class="ot1-input" data-toggle="select">
                <option style="background-color:#000" value="0"  selected>请选择</option>
              </select></td></tr>
          <tr><td>选择CCD:</td><td><select name="formqp.obsCcd" id="obsCcd" class="ot1-input" data-toggle="select">
                <option style="background-color:#000" value="0" selected>请选择</option>
              </select></td></tr>
          <tr><td>边界左上:</td><td><input type="text" id="leftTopBound" class="ot1-input" value="60,60"/></td></tr>
          <tr><td>边界右下:</td><td><input type="text" id="rightBottomBound" class="ot1-input" value="70,70"/></td></tr>
          <tr><td colspan="2"><a href="javascript:void(0);" id="changeView" style="text-decoration:none;color:#fff;">切换视角</a></td></tr>
        </table>
      </div>
    </div>
    <div id="tooltip">a simple tooltip</div>
  </body>
</html>