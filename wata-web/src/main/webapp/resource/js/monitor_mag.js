
$(function () {
  var gwacRootURL = $("#gwacRootURL").val();
  var parmUrl = "/images/realTimeOtDistribution/nightMag.json";

  var otCurve;
  var plotOption = {
    legend: {show: true},
    series: {shadowSize: 0},
    points: {show: true},
    lines: {show: true, fill: false},
    grid: {hoverable: true, color: '#646464', borderColor: 'transparent', borderWidth: 20, clickable: true},
    selection: {mode: "xy"},
    xaxis: {show: true, tickColor: 'transparent'},
//    yaxis: {show: true, zoomRange: false, panRange: false, tickDecimals: 1, tickFormatter: formate1, transform: formate2, inverseTransform: formate2},
    yaxis: {show: true, inverseTransform: formate2},
    zoom: {interactive: true},
    pan: {interactive: true},
    crosshair: {mode: "xy"},
    xaxes: [
      {position: 'bottom'}
    ],
    yaxes: [
      {position: 'left'}
    ]
  };

  var parmProperty = [
    {label: '夜天光', name: 'mag', min: 0, max: 18, note: '', unit: ''}
  ];

  initStarCurveShow();
//  loadRecords();
  $('#dayList').change(loadRecords);

  function loadRecords() {
    var queryUrl = parmUrl;
    var days = $('#dayList').val();

    $.ajax({
      type: "get",
      url: queryUrl,
      async: false,
      success: function (data) {
        curveShow(data);
      },
      error: function (data) {
        curveShow(data.responseText);
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
        $("#tooltip").html(item.series.label + "(" + x + ", " + y + ")").css({top: item.pageY - 25, left: item.pageX + 10}).fadeIn(200);
      } else {
        $("#tooltip").hide();
      }
    });
  }

  function curveShow(data) {
    var days = $('#dayList').val();
    data = eval(data);
    $.each(data, function (i, item) {
      item['dateObj'] = Date.parse(item['dateStr']);
    });
    var firstDate = data[0]['dateObj'];
    var minDate = new Date();
    minDate.setDate(minDate.getDate() - days);

    var minDateNumber = Date.parse(minDate);
    if(minDateNumber<firstDate){
      minDateNumber=firstDate;
      minDate=new Date(minDateNumber);
    }
    
    $('#startDay').html(minDate);
    var objList = [];
    $.each(data, function (i, item) {
      if(item['dateObj']>=minDateNumber){
        objList.push(item);
      }
    });


    if (typeof (objList) === "undefined" || objList === null)
    {
      objList = [];
    }

    var formatedObjList = [];
    var sortObj = sortJson(objList, 'dateObj', true);
    $.each(parmProperty, function (i, item) {
      var coorShow = [];
      $.each(sortObj, function (j, item2) {
        var minute = (item2['dateObj'] - minDateNumber) / (60000 * 60 * 24);
        coorShow.push([minute, item2[item.name]]);
      });
      formatedObjList.push({
        label: item.label,
        data: coorShow,
        points: {radius: 1},
        xaxis: 1,
        yaxis: i + 1
      });
    });

    otCurve = $.plot("#star-light-curve", formatedObjList, plotOption);
    otCurve.setData(formatedObjList);
    otCurve.draw();
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