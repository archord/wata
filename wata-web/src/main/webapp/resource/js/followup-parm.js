
$(function() {

  initPage();

  function initPage() {
    $("#genObsPlanBtn").click(ot2QueryBtnClick);

    var gwacRootURL = $("#gwacRootURL").val();
    var turl = gwacRootURL + "/get-system-parameter.action";
    $.ajax({
      type: "get",
      url: turl,
      data: 'p1=1',
      async: false,
      dataType: 'json',
      success: function(data) {
        var systemParameter = data.systemParameter;
        $("#controlServerIp").val(systemParameter.controlServerIp);
        $("#controlServerPort").val(systemParameter.controlServerPort);
        $("#spId").val(systemParameter.spId);

      }
    });
  }


  function ot2QueryBtnClick() {

    var formData = $("#followUpParmSet").serialize();
    var formUrl = $("#followUpParmSet").attr('action');
    if (formData !== '') {
      var queryUrl = formUrl;
      $.ajax({
        type: "post",
        url: queryUrl,
        data: formData,
        async: true,
        success: function(data) {
          console.log(data);
          alert("提交成功！");
        }
      });
    } else {
      var msg = "请选择合理的后随参数!";
      console.log(msg);
      alert(msg);
    }
  }
});

