
$(function () {
  var gwacRootURL = $("#gwacRootURL").val();
  var parmUrl = gwacRootURL + "/get-parm-list-json.action";


  var otCurve;
  var plotOption = {
    legend: {show: false},
    series: {shadowSize: 0},
    points: {show: true},
    lines: {show: true, fill: false},
    grid: {hoverable: true, color: '#646464', borderColor: 'transparent', borderWidth: 20, clickable: true},
    selection: {mode: "xy"},
    xaxis: {show: true, tickColor: 'transparent'},
    yaxis: {show: true, zoomRange: false, panRange: false, tickDecimals: 1, tickFormatter: formate1, transform: formate2, inverseTransform: formate2},
    zoom: {interactive: true},
    pan: {interactive: true},
    crosshair: {mode: "xy"}
  };


  loadDateStrList();
  initStarCurveShow();
//  loadStarRecords();
  $('#obsDate').change(clearSelectCamera);
  $('#ccdList').change(changeCCDs);
  $('#objList').change(loadObjectRecords);

  function clearSelectCamera() {
    $("#ccdList option:selected").prop("selected", false);
    starCurveShow();
  }

  function changeCCDs() {
    var getDateStrListJsonUrl = "/get-object-list-json.action";
    var dateStr = $('#obsDate').val();
    var ccdList = $('#ccdList').val();
    if(dateStr===''){
      alert('请选择日期');
      return;
    }
    var queryUrl = gwacRootURL + getDateStrListJsonUrl+"?dateStr="+dateStr+"&camId="+ccdList;
    $.ajax({
      type: "get",
      url: queryUrl,
      async: false,
      dataType: 'json',
      success: function (data) {
        var objs = data.objs;
        if (objs.length > 0) {
          $.each(objs, function (i, item) {
            $('#objList').append($('<option>', {
              value: item.movId,
              text: item.name
            }));
          });
        }
      }
    });
  }

  function loadObjectRecords() {
    var movId = $('#objList').val();
    var getDateStrListJsonUrl = "/get-object-records-json.action";
    var queryUrl = gwacRootURL + getDateStrListJsonUrl+"?movId="+movId;
    
    $.ajax({
      type: "get",
      url: queryUrl,
      async: false,
      dataType: 'json',
      success: function (data) {
        var objRecords = eval(data.objs);
//        console.log(objRecords);
        starCurveShow(objRecords);
      }
    });
  }

  function loadDateStrList() {
    var getDateStrListJsonUrl = "/get-datestr-list-json.action";
    var queryUrl = gwacRootURL + getDateStrListJsonUrl;
    $.ajax({
      type: "get",
      url: queryUrl,
      async: false,
      dataType: 'json',
      success: function (data) {
        var objs = data.objs;
        if (objs.length > 0) {
          $.each(objs, function (i, item) {
            if(i===0){
            $('#obsDate').append($('<option>', {
              value: item,
              text: item,
              selected: true
            }));
          }else{
            $('#obsDate').append($('<option>', {
              value: item,
              text: item
            }));
          }
          });
        }
      }
    });
  }

  function initStarCurveShow() {

    var otCurveShow = [];
    otCurve = $.plot("#star-light-curve", otCurveShow, plotOption);

    $("#star-light-curve").bind("plothover", function (event, pos, item) {
      if (item) {
        var x = item.datapoint[0].toFixed(4);
        var y = item.datapoint[1].toFixed(2);
        $("#tooltip").html(item.series.data[item.dataIndex][3]).css({top: item.pageY - 25, left: item.pageX + 10}).fadeIn(200);
        
      var fName = item.series.data[item.dataIndex][6];
      console.log(fName);
      var fullImgUrl = gwacRootURL + "/images/fits_preview/20" + fName.substring(14, 20) + "/" + fName.substring(0, 4) + "/" + fName.substring(0, 29) + ".jpg";
      var subImgUrl = gwacRootURL + "/getSubImage.action?imgPath=/images/fits_preview/20" + fName.substring(14, 20) + "/" + fName.substring(0, 4) + "/" + fName.substring(0, 29) + ".jpg"
      + "&centerX=" + x + "&centerY=" + y + "&cropW=400&cropH=400&labelW=0";
      console.log(fullImgUrl);
      $("#movObjSubImg").attr("src", subImgUrl);
      $("#movObjfullImg").attr("href", fullImgUrl);
      } else {
        $("#tooltip").hide();
      }
    });
  }

  function starCurveShow(data) {
    console.log(data[0]);
    var minDate = data[0]['date_ut'];
    var minDateMinute = Date.parse(minDate) / 60000;
    console.log(minDate);

    $('#startDay').html(minDate);

    var ccdList = data;
    if (typeof (ccdList) === "undefined")
    {
      ccdList = [];
    }
    
    var coorShow = [];
    $.each(ccdList, function (i, item) {
       var dateObj = Date.parse(item['date_ut']) / 60000;
       var minute = dateObj - minDateMinute;
       coorShow.push([minute, item['mag_aper'], item['magerr_aper'], item['date_ut'], item['x'], item['y'], item['img_name']]);
//       coorShow.push([minute, item['mag_aper']]);
    });
//    console.log(coorShow);
    var aa = {
        label: 'move object light curve',
        data: coorShow,
        points: {radius: 1},
        color:'red'
      };
      
    otCurve = $.plot("#star-light-curve", [aa], plotOption);
    //otCurve.setData(showCCDs);
//    otCurve.draw();
  }


  function padZero(num, size) {
    var s = num + "";
    while (s.length < size)
      s = "0" + s;
    return s;
  }

  function sortJson(list, prop, asc) {
    list.sort(function (a, b) {
      if (asc) {
        return (a[prop] > b[prop]) ? 1 : ((a[prop] < b[prop]) ? -1 : 0);
      } else {
        return (b[prop] > a[prop]) ? 1 : ((b[prop] < a[prop]) ? -1 : 0);
      }
    });
    return list;
  }

  function formate1(val, axis) {
    return (val).toFixed(axis.tickDecimals);
  }

  function formate2(val) {
    return -val;
  }

  function formate3(val) {
    return val;
  }

});