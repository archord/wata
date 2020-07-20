<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
    <head>
        <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
        <title>GWAC CCD图像实时预览</title>
        <script language="javascript" type="text/javascript" src="<%=request.getContextPath()%>/resource/js/plot/jquery.js"></script>
        <script type="text/javascript">

            $(function () {
              var winWidth = $(window).width();
              var winHeight = $(window).height();
              var imgWidth = (winHeight - 100) / 2 - 10;
              var imgHeight = imgWidth;
              console.log(imgWidth);
              console.log(imgHeight);

              var ids = [1, 2, 3, 4];
              $.each(ids, function (i, id) {
                $('#img' + id).css('width', imgWidth + 'px');
                $('#img' + id).css('height', imgHeight + 'px');
                $('#img' + id).css('border-radius', '12px');
              });

              var dataurl = "<%=request.getContextPath()%>/get-camera-monitor-image-time.action";
              $.ajax({url: dataurl, type: "GET", dataType: "json", success: onImageReceived});
              updateImage();
              centerImgUpdate = setInterval(updateImage, 5000);

              function onImageReceived(result) {
                var tcameras = result.cameras;
                $.each(tcameras, function (i, tcam) {
                  $("#span" + tcam.cameraId).html("G"+tcam.cid+":"+tcam.monitorImageTime);
                });
              }
              function updateImage() {

                var ids = [1, 2, 3, 4];
                $.each(ids, function (i, id) {
                  var turl = $('#img' + id).attr("src");
                  var tidx = turl.indexOf('?');
                  if (tidx > 0) {
                    turl = turl.substring(0, tidx);
                  }
                  turl = turl + "?timestamp=" + new Date().getTime();
                  $('#img' + id).attr("src", turl);
                  $.ajax({url: dataurl, type: "GET", dataType: "json", success: onImageReceived});
                });
              }

            });
        </script>
        <style type="text/css">
            <!--
            .style3 {font-size: 28px;font-weight: bold;}
            .style5 {
                font-size: 16px;
                font-weight: bold;
            }
            .style6 {font-size: 14px;font-weight: bold;}
            .style7 {font-size: 12px}
            .imgStyle, .imgStyle2, #imgCenter{
                width:100px;
                height:100px;
                border-radius: 6px; 
            }
            -->
        </style></head>

    <body>
        <table width="100%" border="0">
            <tr>
                <td>
                    <div align="center" class="style6">
                        <span id="span1">G011</span>
                    </div>
                </td>
                <td>
                    <div align="center" class="style6">
                        <span id="span2">G021</span>
                    </div>
                </td>
            </tr>
            <tr>
                <td><div align="center">
                        <a id="imgUrl1" href="/images/realTimeOtDistribution/WATA_011.jpg">
                            <img id="img1" src="/images/realTimeOtDistribution/WATA_011.jpg" border="0"/></a>
                    </div>
                </td>
                <td><div align="center">
                        <a id="imgUrl2" href="/images/realTimeOtDistribution/WATA_021.jpg">
                            <img id="img2" src="/images/realTimeOtDistribution/WATA_021.jpg" border="0"/></a>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div align="center" class="style6">
                        <span id="span3">G031</span>
                    </div>
                </td>
                <td>
                    <div align="center" class="style6">
                        <span id="span4">G041</span>
                    </div>
                </td>
            </tr>
            <tr>
                <td><div align="center">
                        <a id="imgUrl3" href="/images/realTimeOtDistribution/WATA_031.jpg">
                            <img id="img3" src="/images/realTimeOtDistribution/WATA_031.jpg" border="0"/></a>
                    </div>
                </td>
                <td><div align="center">
                        <a id="imgUrl4" href="/images/realTimeOtDistribution/WATA_041.jpg">
                            <img id="img4" src="/images/realTimeOtDistribution/WATA_041.jpg" border="0"/></a>
                    </div>
                </td>
            </tr>

        </table>
    </body>
</html>
