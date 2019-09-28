
$(function() {
  var obsPlanTable;
  var obsPlanTable2;

  loadObsPlanList();
  loadObsPlanList2();
  $('#unitId').change(onTelescopeChange);
  $('#unitId2').change(onTelescopeChange2);

  function onTelescopeChange() {
    var formData = $("#getUnDonePlanForm").serialize();
    var queryUrl = $("#getUnDonePlanForm").attr('action') + "?executeStatus=undo&timestamp=" + new Date().getTime() + "&" + formData;
    obsPlanTable.ajax.url(queryUrl).load();
  }
  function onTelescopeChange2() {
    var formData = $("#getDonePlanForm").serialize();
    var queryUrl = $("#getDonePlanForm").attr('action') + "?executeStatus=begin&timestamp=" + new Date().getTime() + "&" + formData;
    obsPlanTable2.ajax.url(queryUrl).load();
  }

  function loadObsPlanList2() {
    var queryUrl = $("#getDonePlanForm").attr('action') + "?executeStatus=begin";
    obsPlanTable2 = $('#obs-plan-table2').DataTable({
      serverSide: true,
      "deferRender": true,
      "processing": true,
      "searching": false,
      "lengthChange": true,
      "pageLength": 8,
      "scrollX": true,
      "ajax": {
        url: queryUrl,
        dataSrc: function(json) {
          return eval(json.dataStr);
        },
        data: function(d) {
          return reConstructParameter(d);
        },
        type: 'GET'
      },
      "columns": [
        {"data": "id"},
        {"data": "op_sn"},
        {"data": "obs_type"},
        {"data": "begin_time"},
        {"data": "end_time"},
        {"data": "execute_status"},
        {"data": "ctime"} 
      ],
      "columnDefs": [{
          "targets": 0,
          "data": "ID?",
          "render": formateRowNumber
        },{
          "targets": 2,
          "data": "ID?",
          "render": formateMode
        },{
          "targets": 5,
          "data": "ID?",
          "render": formateStatus
        }],
      "language": {
        "lengthMenu": '显示 <select>' +
                '<option value="5">5</option>' +
                '<option value="8">8</option>' +
                '<option value="16">16</option>' +
                '<option value="-1">All</option>' +
                '</select> 条',
        "info": "显示第 _START_ 到 _END_ ，共 _TOTAL_ 条。",
        "search": "模糊查询:",
        "paginate": {
          "first": "首页",
          "last": "尾页",
          "next": "下一页",
          "previous": "上一页"
        }
      },
      dom: 'lftrip'
    });
  }

  function loadObsPlanList() {
    var queryUrl = $("#getUnDonePlanForm").attr('action') + "?executeStatus=undo";
    obsPlanTable = $('#obs-plan-table').DataTable({
      serverSide: true,
      "deferRender": true,
      "processing": true,
      "searching": false,
      "lengthChange": true,
      "pageLength": 8,
      "scrollX": true,
      "ajax": {
        url: queryUrl,
        dataSrc: function(json) {
          return eval(json.dataStr);
        },
        data: function(d) {
          return reConstructParameter(d);
        },
        type: 'GET'
      },
      "columns": [
        {"data": "id"},
        {"data": "op_sn"},
        {"data": "obs_type"},
        {"data": "begin_time"},
        {"data": "end_time"},
        {"data": "execute_status"},
        {"data": "ctime"}
      ],
      "columnDefs": [{
          "targets": 0,
          "data": "ID?",
          "render": formateRowNumber
        },{
          "targets": 2,
          "data": "ID?",
          "render": formateMode
        },{
          "targets": 5,
          "data": "ID?",
          "render": formateStatus
        }],
      "language": {
        "lengthMenu": '显示 <select>' +
                '<option value="5">5</option>' +
                '<option value="8">8</option>' +
                '<option value="16">16</option>' +
                '<option value="-1">All</option>' +
                '</select> 条',
        "info": "显示第 _START_ 到 _END_ ，共 _TOTAL_ 条。",
        "search": "模糊查询:",
        "paginate": {
          "first": "首页",
          "last": "尾页",
          "next": "下一页",
          "previous": "上一页"
        }
      },
      dom: 'lftrip'
    });
  }
  
  function formateRowNumber(data, type, full, meta) {
    return meta.row + 1;
  }

  /*full: json对象；meta：表格元素*/
  function formateMode(data, type, full, meta) {
    var rst='引导跟踪';
    if(data===2){
      rst='定点指向';
    }
    return rst;
  }

  function formateStatus(data, type, full, meta) {
    var rst='未执行';
    if(data==='begin'){
      rst='正在执行';
    }else if(data==='over'){
      rst='执行完成';
    }
    return rst;
  }
  function formateGridFieldId(data, type, full, meta) {
    return full.grid_id + "-" + full.field_id;
  }
  function formatePosition(data, type, full, meta) {
    meta.title = full.epoch;
    return "(" + full.ra.toFixed(3) + "," + full.dec.toFixed(3) + ")";
  }
  function formateExpusore(data, type, full, meta) {
    return full.expusore_during + "(" + full.delay + ")";
  }
  function formateStartEndTime(data, type, full, meta) {
    var endTime = full.end_time;
    var beginTime = full.begin_time;
    if (beginTime === null) {
      beginTime = '_';
    }
    if (endTime !== null & endTime !== undefined && endTime.length > 0) {
      //endTime = endTime.substring(endTime.indexOf(" "));
      endTime = endTime
    } else {
      endTime = '_';
    }
    return beginTime + "至" + endTime;
  }
  //.toFixed(3)
  function formateObjPosition(data, type, full, meta) {
    var objRa1 = full.obj_ra === null ? '_' : full.obj_ra.toFixed(2);
    var objDec1 = full.obj_dec === null ? '_' : full.obj_dec.toFixed(2);
    var objRa2 = full.obj_ra === null ? '_' : full.obj_ra;
    var objDec2 = full.obj_dec === null ? '_' : full.obj_dec;
    var objError = full.obj_error === null ? '_' : full.obj_error;
    var content = "(" + objRa1 + "," + objDec1 + ")";
    var title = "(" + objRa2 + "," + objDec2 + "," + objError + ")";
    return "<span title='(" + title + ")'>" + content + "</span>";
  }

  function reConstructParameter(data) {
    var parms = 'draw=' + data.draw;
    parms = parms + '&length=' + data.length;
    parms = parms + '&start=' + data.start;
    return parms;
  }

  Date.prototype.Format = function(fmt) { //author: meizz 
    var o = {
      "M+": this.getMonth() + 1, //月份 
      "d+": this.getDate(), //日 
      "h+": this.getHours(), //小时 
      "m+": this.getMinutes(), //分 
      "s+": this.getSeconds(), //秒 
      "q+": Math.floor((this.getMonth() + 3) / 3), //季度 
      "S": this.getMilliseconds() //毫秒 
    };
    if (/(y+)/.test(fmt))
      fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o)
      if (new RegExp("(" + k + ")").test(fmt))
        fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
    return fmt;
  }
});

