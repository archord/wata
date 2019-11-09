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
              console.log(winWidth);
              var winHeight = $(window).height();
              console.log(winHeight);
              var imgWidth = winHeight - 100;
              var imgHeight = imgWidth;

              $('#imgCenter').css('width', imgWidth + 'px');
              $('#imgCenter').css('height', imgHeight + 'px');
              $('#imgCenter').css('border-radius', '12px');

              var dataurl = "<%=request.getContextPath()%>/get-camera-monitor-image-time.action";
              $.ajax({url: dataurl, type: "GET", dataType: "json", success: onImageReceived});
              updateImage();
              centerImgUpdate = setInterval(updateImage, 5000);

              function onImageReceived(result) {
                var tcameras = result.cameras[0];
                $("#centerSpan").html(tcameras.monitorImageTime);
              }
              function updateImage() {
                var turl = $("#imgCenter").attr("src");
                var tidx = turl.indexOf('?');
                if (tidx > 0) {
                  turl = turl.substring(0, tidx);
                }
                turl = turl + "?timestamp=" + new Date().getTime();
                $('#imgCenter').attr("src", turl);
                $.ajax({url: dataurl, type: "GET", dataType: "json", success: onImageReceived});
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
                        <span id="centerSpan">G00N</span>
                    </div>
                </td>
            </tr>
            <tr>
                <td><div align="center">
                        <a id="imgCenterUrl" href="/images/realTimeOtDistribution/WATA_011.jpg">
                            <img id="imgCenter" src="/images/realTimeOtDistribution/WATA_011.jpg" border="0"/></a></div></td>
            </tr>

        </table>
    </body>
</html>
