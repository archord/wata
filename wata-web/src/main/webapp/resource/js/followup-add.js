
$(function() {

  initPage();

  function initPage() {
    $("#genObsPlanBtn").click(ot2QueryBtnClick);
    var uTime = setInterval(getDateTime, 1000);
    $("#rah").change(check24);
    $("#ram").change(check60);
    $("#ras").change(check60);
    $("#decd").change(check90);
    $("#decm").change(check60);
    $("#decs").change(check60);

    setFilter60();
    $("#telescope").change(function() {
      if ($("#telescope").val() === '2') {
        setFilter30();
      } else {
        setFilter60();
      }
    });

    initEditPage();
  }

  function initEditPage() {
    var path = window.location.href;
    if (path.indexOf("foId") > 0) {
      $("#manual_container_title").html("修改后随观测任务");
      var foId = getUrlVars()["foId"];
      var gwacRootURL = $("#gwacRootURL").val();
      var turl = gwacRootURL + "/get-followup-observation.action";
      $.ajax({
        type: "get",
        url: turl,
        data: 'foId=' + foId,
        async: false,
        dataType: 'json',
        success: function(data) {
          var tObj = eval(data.dataStr)[0];
          //console.log(tObj);
//          $("#otName").val(tObj.otName);
          if (tObj.fo_name.trim().length === 18 &&tObj.fo_name[7]==='_') {
            $("#otName").val(tObj.fo_name.substring(0, 14));
          }
          $("#followName").val(tObj.fo_name);
          $("#priority").val(tObj.priority);
          $("#ra").val(tObj.ra);
          $("#dec").val(tObj.dec);
          $("#telescope").val(tObj.telescope_id);
          $("#filter").val(tObj.filter);
          $("#expTime").val(tObj.expose_duration);
          $("#frameCount").val(tObj.frame_count);
          $("#begineTime").val(tObj.begin_time);
          $("#endTime").val(tObj.end_time);
          $("#comment").val(tObj.comment);
          $("#triggerType").val(tObj.trigger_type);
          $("#imageType").val(tObj.image_type);
          $("#foId").val(tObj.fo_id);
          $("#epoch").val(tObj.epoch);
          $("#comment").val(tObj.comment);
        }
      });
    }
  }

  function ot2QueryBtnClick() {
    var expTime = $("#expTime").val();
    var frameCount = $("#frameCount").val();
    var ra = parseFloat($("#ra").val());
    var dec = parseFloat($("#dec").val());
    if (expTime === "") {
      alert("请填写曝光时间");
      return;
    }
    if (frameCount === "") {
      alert("请填写帧数");
      return;
    }
    if (ra<0 || ra>360) {
      alert("请填写正确的赤经值");
      return;
    }
    if (dec<-90 || dec>90) {
      alert("请填写正确的赤纬值");
      return;
    }

    var formData = $("#genObsPlanForm").serialize();
    var formUrl = $("#genObsPlanForm").attr('action');
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

  function updateRa() {
    var rah = $("#rah").val();
    var ram = $("#ram").val();
    var ras = $("#ras").val();
    var ra = 0;
    if (rah !== "") {
      ra = ra + parseFloat(rah);
    }
    if (ram !== "") {
      ra = ra + parseFloat(ram) / 60;
    }
    if (ras !== "") {
      ra = ra + parseFloat(ras) / 3600;
    }
    ra = ra * 15;
    $("#ra").val(ra.toFixed(4))
  }
  function updateDec() {
    var decd = $("#decd").val();
    var decm = $("#decm").val();
    var decs = $("#decs").val();
    var dec = 0;
    if (decd !== "") {
      dec = dec + parseFloat(decd);
    }
    if (decm !== "") {
      dec = dec + parseFloat(decm) / 60;
    }
    if (decs !== "") {
      dec = dec + parseFloat(decs) / 3600;
    }
    $("#dec").val(dec.toFixed(4))
  }

  function check24() {
    var tval = $(this).val();
    if (tval !== "") {
      var t = parseInt(tval);
      if (t < 0 || t > 24) {
        alert("数值异常");
        $(this).focus();
      } else {
        updateRa();
        updateDec();
      }
    }
  }
  function check90() {
    var tval = $(this).val();
    if (tval !== "") {
      var t = parseInt(tval);
      if (t < -90 || t > 90) {
        alert("数值异常");
        $(this).focus();
      } else {
        updateRa();
        updateDec();
      }
    }
  }
  function check60() {
    var tval = $(this).val();
    if (tval !== "") {
      var t = parseInt(tval);
      if (t < 0 || t > 59) {
        alert("数值异常");
        $(this).focus();
      } else {
        updateRa();
        updateDec();
      }
    }
  }

  function calculate() {

    TZone();

    var dat1 = new Date();
    seconds = dat1.getSeconds();
    if (seconds == 0) {
      minutes = minutes + 1;
      if (minutes == 60)
      {
        minutes = 0;
        hours = hours + 1;
        utHours = utHours + 1;
        if (hours == 24) {
          hours = 0;
          day = day + 1;
        }
        if (utHours == 24) {
          utHours = 0;
          utDay = utDay + 1;
        }
        daysInMonth(month, year);
        if (day > dIM) {
          day = 1;
          month = month + 1;
        }
        if (utDay > dIM) {
          utDay = 1;
          utMonth = utMonth + 1;
        }
        if (month > 12) {
          month = 1;
          year = year + 1;
        }
        if (utMonth > 12) {
          utMonth = 1;
          utYear = utYear + 1;
        }
      }
    } // if (seconds==0)

    UT = utHours + minutes / 60 + seconds / 3600;

    longit = 117.5745;
    jd = JulDay(day, month, year, UT);

    $("#siderealTime").val(LM_Sidereal_Time(jd, longit));

  }

  function getDateTime() {
    locOffset = 8;
    var dat = new Date();
    year = dat.getFullYear();
    month = dat.getMonth() + 1;
    day = dat.getDate();
    hours = dat.getHours();
    minutes = dat.getMinutes();
    seconds = dat.getSeconds();

    var curOffset = dat.getTimezoneOffset();
    if (curOffset >= 1320)
      curOffset = curOffset - 1440;
    curOffset = -curOffset / 60;

    hours = hours - curOffset + locOffset;
    if (hours >= 24) {
      hours = hours - 24;
      day = day + 1;
    }
    daysInMonth(month, year);
    if (day > dIM) {
      day = 1;
      month = month + 1;
    }
    if (month > 12) {
      month = 1;
      year = year + 1;
    }

    if (hours < 0) {
      hours = hours + 24;
      day = day - 1;
    }
    daysInMonth(month, year);
    if (day < 1) {
      day = dIM;
      month = month - 1;
    }
    if (month < 1) {
      month = 1;
      year = year - 1;
    }


    var millis = dat.getTime();
    millis = millis - locOffset * 3600 * 1000;

    var d = new Date(millis);
    utYear = d.getYear();
    utDay = d.getDate();
    utMonth = d.getMonth() + 1;
    utMinutes = minutes;
    if (utYear < 1900)
      utYear = utYear + 1900;

    utHours = hours - locOffset;
    if (utHours >= 24) {
      utHours = utHours - 24;
      utDay = utDay + 1;
    }
    if (utDay > dIM) {
      utDay = 1;
      utMonth = utMonth + 1;
    }
    if (utMonth > 12) {
      utMonth = 1;
      utYear = utYear + 1;
    }
    if (utHours < 0) {
      utHours = utHours + 24;
      utDay = utDay - 1;
    }
    if (utDay < 1) {
      utDay = dIM;
      utMonth = utMonth - 1;
    }
    if (utMonth < 1) {
      utMonth = 1;
      utYear = utYear - 1;
    }

    UT = utHours + minutes / 60 + seconds / 3600;
    jd = JulDay(utDay, utMonth, utYear, UT)
    $("#localTime").val(writeDateTime(year, month, day, hours, minutes, seconds));
    $("#utcTime").val(writeDateTime(year, month, utDay, utHours, utMinutes, seconds));
    $("#julDay").val("" + (Math.round(100000 * jd) / 100000).toFixed(5));

    longit = 117.5745;
    jd = JulDay(day, month, year, UT);

    $("#siderealTime").val(LM_Sidereal_Time(jd, longit));
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

  function daysInMonth(m, y) {
    var n = 31
    m = m - 1
    if ((m == 0) || (m == 2) || (m == 4) || (m == 6) || (m == 7) || (m == 9) || (m == 11))
      n = 31
    if ((m == 3) || (m == 5) || (m == 8) || (m == 10))
      n = 30;
    if (m == 1) {
      n = 28;
      if ((y % 4) == 0)
        n = 29
      if ((y % 100) == 0)
        n = 28
      if ((y % 400) == 0)
        n = 29
    }
    dIM = n;
  }

  function writeDateTime(y, m, d, h, minute, s) {

    var str = "" + y + "-";
    if (m < 10)
      str = str + "0" + m;
    else
      str = str + m;
    str = str + "-";
    if (d < 10)
      str = str + "0" + d;
    else
      str = str + d;
    str = str + " ";
    if (h < 10)
      str = str + "0" + h + ":";
    else
      str = str + h + ":";
    if (minute < 10)
      str = str + "0" + minute;
    else
      str = str + minute;
    if (s < 10)
      str = str + ":0" + s;
    else
      str = str + ":" + s;
    return str;
  }

  /*
   function JulDay (date, month, year, UT){
   if (year<1900) year=year+1900
   if (month<=2) {month=month+12; year=year-1}
   A = Math.floor(year/100);
   B = -13;
   JD =  Math.floor(365.25*(year+4716)) + Math.floor(30.6001*(month+1)) + date + B -1524.5 + UT/24.0;
   return JD
   }
   */
  function JulDay(d, m, y, u) {
    if (y < 1900)
      y = y + 1900
    if (m <= 2) {
      m = m + 12;
      y = y - 1
    }
    A = Math.floor(y / 100);
    JD = Math.floor(365.25 * (y + 4716)) + Math.floor(30.6001 * (m + 1)) + d - 13 - 1524.5 + u / 24.0;
    return JD
  }


  function GM_Sidereal_Time(jd) {
    var t_eph, ut, MJD0, MJD;

    MJD = jd - 2400000.5;
    MJD0 = Math.floor(MJD);
    ut = (MJD - MJD0) * 24.0;
    t_eph = (MJD0 - 51544.5) / 36525.0;
    return  6.697374558 + 1.0027379093 * ut + (8640184.812866 + (0.093104 - 0.0000062 * t_eph) * t_eph) * t_eph / 3600.0;
  }

  function LM_Sidereal_Time(jd, longitude) {
    var GMST = GM_Sidereal_Time(jd);
    var LMST = 24.0 * frac((GMST + longitude / 15.0) / 24.0);
    return HoursMinutesSeconds(LMST);
  }

  function HoursMinutesSeconds(time) {

    var h = Math.floor(time);
    var min = Math.floor(60.0 * frac(time));
    var secs = Math.round(60.0 * (60.0 * frac(time) - min));

    var str;
    if (min >= 10)
      str = h + ":" + min;
    else
      str = h + ":0" + min;
    //if (min==60) str=(h+1)+":00";
    if (secs < 10)
      str = str + ":0" + secs;
    else
      str = str + ":" + secs;
    return "" + str;

  }

  function TZone() {

    var delta = 8;

    var dat = new Date(Date.UTC(year, month - 1, utDay, utHours, minutes, seconds));
    var millis = Date.UTC(year, month - 1, day, utHours, minutes, seconds);
    var theOffset = dat.getTimezoneOffset();
    if (theOffset >= 1320)
      theOffset = theOffset - 1440;
    var dLocOffset = -theOffset / 60;

    millis = millis - (dLocOffset - delta) * 3600 * 1000;

    var dat1 = new Date(millis);
    //hours = dat1.getHours();
    minutes = dat1.getMinutes();
    seconds = dat1.getSeconds();
    year = dat1.getYear();
    if (year < 1900)
      year = year + 1900;
    month = dat1.getMonth() + 1;

    day = dat1.getDate();

    if (delta == 0) {
      day = utDay;
      month = utMonth;
    }


    if (delta > 0) {
      if ((month > utMonth) && (Number(utHours) + Number(delta) >= 24))
      {
        month = utMonth;
        day = utDay + 1;
        daysInMonth(month, year);
        if (day > dIM) {
          day = 1;
          month = month + 1;
        }
      }
      if ((month == utMonth) || (Number(utHours) + Number(delta) < 24))
      {
        if (day > utDay + 1) {
          day = day - 1;
        }
        ;
        if (month > utMonth) {
          day = 1
        }
        ;
        if (Number(utHours) + Number(delta) < 24) {
          day = utDay;
          month = utMonth;
          year = utYear;
        }
        if ((year > utYear) && (day > 1)) {
          day = day - 1;
        }
      }
    }


    if (delta < 0) {

      daysInMonth(month, year);
      if ((day == dIM) && (utDay == 2)) {
        day = 1;
        month = utMonth;
      }


      if ((day != dIM) && (utDay != 2)) {
        if (day < utDay - 1)
          day = day + 1;
        if (month < utMonth) {
          daysInMonth(month, year);
          day = dIM
        }

        if (Number(utHours) + Number(delta) >= 0) {
          day = utDay;
          month = utMonth;
        }

        if (year < utYear) {
          if (day < 31)
            day = day + 1;
        }
      }
    }
  }

  function frac(X) {
    X = X - Math.floor(X);
    if (X < 0)
      X = X + 1.0;
    return X;
  }


  function setFilter60() {
    var filter60 = ["Lum", "Green", "R", "Blue", "V", "I", "B", "Red", "U", "null"];
    $('#filter').find('option').remove();
    $.each(filter60, function(i, item) {
      $('#filter').append($('<option>', {
        value: item,
        text: item
      }));
    });
    $("#filter").val('R');
    $("#filter").change();
  }

  function setFilter30() {
    var filter30 = ["null", "R", "B", "I", "U", "V"];
    $('#filter').find('option').remove();
    $.each(filter30, function(i, item) {
      $('#filter').append($('<option>', {
        value: item,
        text: item
      }));
    });
    $("#filter").val('R');
    $("#filter").change();
  }

  function getUrlVars()
  {
    var vars = [], hash;
    var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
    for (var i = 0; i < hashes.length; i++)
    {
      hash = hashes[i].split('=');
      vars.push(hash[0]);
      vars[hash[0]] = hash[1];
    }
    return vars;
  }
});

