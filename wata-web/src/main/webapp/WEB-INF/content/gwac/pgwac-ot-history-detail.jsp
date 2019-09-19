<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="UTF-8">
    <meta name="robots" content="noindex">
    <title>OT-<s:property value="otName"/>详细页面</title>
    <meta name="viewport" content="width=1000, initial-scale=1.0, maximum-scale=1.0">
    <meta http-equiv="Content-Style-Type" content="text/css" />
    <meta http-equiv="pragma" content="no-cache" />
    <meta http-equiv="cache-control" content="no-cache" />
    <meta http-equiv="expires" content="0" />
    <meta http-equiv="keywords" content="wata，望远镜阵列" />
    <meta http-equiv="description" content="WATA数据展示页面" />
    <link type="image/x-icon" rel="shortcut icon" href="${pageContext.request.contextPath}/resource/sysimg/favicon.ico"/>
    <!-- Loading Bootstrap 说明文档http://v3.bootcss.com/css/ -->
    <link href="${pageContext.request.contextPath}/resource/flatui/css/vendor/bootstrap.min.css" rel="stylesheet">
    <!-- Loading Flat UI -->
    <link href="${pageContext.request.contextPath}/resource/flatui/css/flat-ui.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resource/flatui/css/demo.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resource/css/jquery.dataTables.min.css" rel="stylesheet">
    <!--<link href="${pageContext.request.contextPath}/resource/css/jquery.dataTables.min.css" rel="stylesheet">-->
    <!--<link href="${pageContext.request.contextPath}/resource/css/datatables.css" rel="stylesheet">-->
    <link href="${pageContext.request.contextPath}/resource/css/gwac-ot-history-detail.css" rel="stylesheet">
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
    <!--[if lt IE 9]>
      <script src="${pageContext.request.contextPath}/resource/flatui/js/vendor/html5shiv.js"></script>
      <script src="${pageContext.request.contextPath}/resource/flatui/js/vendor/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <div style="display: none;">
      <input type="hidden" id="gwacRootURL" value="${pageContext.request.contextPath}"/>
      <input type="hidden" id="otId" value=""/>
    </div>
    <div class="container-fluid"> <!--container container-fluid -->

      <div class="row ot-detail-body">
        <div class="col-md-12 col-lg-12 ot-detail-left">
          <div id="cut-image-show">
          </div>
          <div id="skyCoordinate">
            <span id="ot-classify">OT分类&nbsp;<select name="ot2Classify" id="ot2Classify" title="选择即可分类"></select>
              <a id="ot2ClassifyBtn" href='#' title='点击对OT2进行分类' style="display:none">OT分类</a></span>
            <span id="skyCordDetail"></span>
            <span style="display:inline-block"><a id="showOt2Fits" href='#' title='点击查看fits切图' style="display: none;">查看fits切图</a></span>
          </div>

        </div>
      </div>

      <div class="row ot-detail-body">

        <div class="col-md-12 col-lg-12 ot-detail-left">
          <div id="ot-curves">
            <div id="ot-curve-show">
              <div id="ot-curve-title">
                <span>OT光变曲线（X轴为时间，单位/天，开始于<span id="otFoundTimeUtc"></span>U，Y轴为星等值）</span>
              </div>
              <div id="ot-curve"></div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- /.container -->
    <div id='tooltip'></div>

    <script src="${pageContext.request.contextPath}/resource/flatui/js/vendor/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resource/flatui/js/vendor/video.js"></script>
    <script src="${pageContext.request.contextPath}/resource/flatui/js/flat-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/resource/flatui/js/application.js"></script>
    <script src="${pageContext.request.contextPath}/resource/js/jquery.carouFredSel-6.2.1-packed.js"></script>
    <script src="${pageContext.request.contextPath}/resource/js/plot/jquery.flot.js"></script>
    <script src="${pageContext.request.contextPath}/resource/js/plot/jquery.flot.categories.js"></script>
    <script src="${pageContext.request.contextPath}/resource/js/plot/jquery.flot.resize.min.js"></script>
    <script src="${pageContext.request.contextPath}/resource/js/plot/jquery.flot.errorbars.min.js"></script>
    <script src="${pageContext.request.contextPath}/resource/js/plot/jquery.flot.navigate.min.js"></script>
    <script src="${pageContext.request.contextPath}/resource/js/plot/jquery.flot.crosshair.min.js"></script>
    <script src="${pageContext.request.contextPath}/resource/js/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/resource/js/jquery.validate.min.js"></script>
    <script src="${pageContext.request.contextPath}/resource/js/dataTables.buttons.min.js"></script>
    <script src="${pageContext.request.contextPath}/resource/js/bootbox.min.js"></script>
    <script src="${pageContext.request.contextPath}/resource/js/ot_history_detail.js"></script>

    <script>
      videojs.options.flash.swf = "${pageContext.request.contextPath}/resource/flatui/js/vendors/video-js.swf";
    </script>
  </body>
</html>
