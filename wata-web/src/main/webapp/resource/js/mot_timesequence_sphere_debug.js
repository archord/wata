
(function($) {

  function maybeCall(thing, ctx) {
    return (typeof thing === 'function') ? (thing.call(ctx)) : thing;
  }

  function Gwac(placeholder, root, url, curl) {
    this.placeholder = placeholder;
    this.rootUrl = root;
    this.url = root + "/" + url;
    this.curl = root + "/" + curl;
    this.pingsUrl = this.rootUrl + "/resource/images/pings.png";
  }

  Gwac.prototype = {
    getSkyListJsonUrl: "/get-sky-list-json.action",
    getDpmListJsonUrl: "/get-dpm-list-json.action",
    getDateStrListJsonUrl: "/get-datestr-list-json.action",
    getMovOtListUrl: "/get-mov-ot-sequence-list.action?dateStr=151218",
    firstFrame: 1,
    lastFrame: 1,
    firsDate: 1,
    lastDate: 1,
    reqNum: 1,
    maxNumber: 1,
    playSpeed: 400,
    playInterval: 1,
    startFrame: 1,
    currentFrame: 1,
    endFrame: 1,
    totalFrame: 1,
    startAnimationDuration: 2000,
    miniFrameNumber: 1,
    movType: 1,
    firstOor: {},
    graticule: {data: d3.geo.graticule()(), class: "graticule"}, //球面网格，经度纬度方向上以10度为间隔
    labelPoint: {data: {type: "MultiPoint", coordinates: []}, class: "origin", radius: 1},
    sphere: {data: {type: "Sphere"}, class: "sphere"}, //投影平面外侧圆
    equator: {data: {type: "LineString", coordinates: [[-180, 0], [-90, 0], [0, 0], [90, 0], [180, 0]]}, class: "equator"}, //赤道
    primemeridian: {data: {type: "LineString", coordinates: [[0, 90], [0, 0], [0, -90]]}, class: "primemeridian"}, //本初子午线
    origin: {data: {type: "Point", coordinates: [0, 0]}, class: "origin"}, //原点
    templateborder: {data: {type: "Polygon", coordinates: []}, class: "templateborder"},
    galacticplane: {data: {type: "LineString", coordinates: []}, class: "galacticplane"},
    eclipticplane: {data: {type: "LineString", coordinates: []}, class: "eclipticplane"},
    horizon: {data: {type: "LineString", coordinates: []}, class: "horizon"},
    multiLineStringExample: {data: {type: "MultiLineString", coordinates: [[[0, 0], [10, 10], [15, 25]], [[1, 3], [16, 8], [22, 15]]]}, class: "mot", radius: 1},
    singleLineStringExample: {data: {type: "LineString", coordinates: [[0, 0], [10, 10], [15, 25]]}, class: "mot", radius: 1},
    motLineData: {data: {type: "LineString", coordinates: []}, class: "motLine"},
    motPointData: {data: {type: "MultiPoint", coordinates: []}, class: "motPoint", radius: 3},
    ot1Data: {data: {type: "MultiPoint", coordinates: []}, class: "ot1", radius: 1},
    constellationLines: {data: {}, class: "constellation"},
    ot1: [],
    ot1InitView: [],
    mot1: [],
    mot2: [],
    mot3: [],
    mot3frameList: [],
    mot4: [],
    ot1Obj: [],
    motObj: [],
    curnode: [],
    parseData: function(reqData) {
      gwac = this;
      if(reqData.ot1List !==null){
        gwac.ot1Obj = eval(reqData.ot1List);
      }
      gwac.motObj = eval(reqData.motList);
      gwac.firstFrame = reqData.minNum;
      gwac.lastFrame = reqData.maxNum;
      gwac.firsDate = reqData.minDate;
      gwac.lastDate = reqData.maxDate;

      gwac.startFrame = gwac.firstFrame;
      gwac.currentFrame = gwac.firstFrame;
      gwac.endFrame = gwac.lastFrame;
      gwac.maxNumber = gwac.lastFrame - gwac.firstFrame + 1;
      gwac.totalFrame = gwac.maxNumber;

      $("#startFrame").val(gwac.firstFrame);
      $("#currentFrame").val(gwac.firstFrame);
      $("#endFrame").val(gwac.lastFrame);
      $("#totalFrame").val(gwac.maxNumber);


      for (var i = 0; i < gwac.maxNumber; i++) {
        gwac.ot1[i] = [];
      }
      $.each(gwac.ot1Obj, function(i, item1) {
        $.each(item1.mov_detail, function(i, item2) {
//          gwac.ot1[Math.floor(item1.ff_number - gwac.firstFrame)].push([item2.ra_d, item2.dec_d]);
          gwac.ot1[Math.floor(item1.ff_number - gwac.firstFrame)].push([item2.ra_d, item2.dec_d, item2.x, item2.y, item2.file_name]);
        });
      });

//      $.each(gwac.ot1[0], function(i, item1) {
//        gwac.ot1InitView.push([item1[0], item1[1]]);
//      });

      $.each(gwac.motObj, function(i, item) {
        var tcolor1 = 50;
        var tcolor2 = 200;
        var r = Math.random() * 255;
        var g = Math.random() * 255;
        var b = Math.random() * 255;
        while ((r < tcolor1 && g < tcolor1 && b < tcolor1) || (r > tcolor2 && g > tcolor2 && b > tcolor2)) {
          r = Math.random() * 255;
          g = Math.random() * 255;
          b = Math.random() * 255;
        }
        item.color = d3.rgb(r, g, b);
        item.fillColor = item.color;
        item.mov_detail.sort(function(a, b) {
          return (a['ff_number'] > b['ff_number']) ? 1 : ((a['ff_number'] < b['ff_number']) ? -1 : 0);
        });
        if(i===0){
          $.each(item.mov_detail, function(i, item2) {
            gwac.ot1InitView.push([item2['ra_d'], item2['dec_d']]);
          });
        }
      });
      this.genLabelPoint();
    },
    updateShowData: function() {
      gwac = this;
      gwac.playSpeed = parseInt($("#playSpeed").val());
      gwac.playInterval = parseInt($("#playInterval").val());
      gwac.startFrame = parseInt($("#startFrame").val());
      gwac.endFrame = parseInt($("#endFrame").val());
      gwac.currentFrame = parseInt($("#currentFrame").val());
      gwac.miniFrameNumber = parseInt($("#miniFrameNumber").val());
      gwac.movType = parseInt($("#movType").val());

      if (gwac.playInterval + gwac.startFrame > gwac.endFrame) {
        gwac.playInterval = gwac.endFrame - gwac.startFrame;
        $("#playInterval").val(gwac.playInterval);
      }


      if (gwac.startFrame < gwac.firstFrame || gwac.startFrame > gwac.lastFrame) {
        gwac.startFrame = gwac.firstFrame;
        $("#startFrame").val(gwac.startFrame);
      }
      if (gwac.endFrame > gwac.lastFrame || gwac.endFrame < gwac.firstFrame) {
        gwac.endFrame = gwac.lastFrame;
        $("#endFrame").val(gwac.endFrame);
      }
      if (gwac.currentFrame > gwac.endFrame || gwac.currentFrame < gwac.startFrame) {
        gwac.currentFrame = gwac.startFrame;
        $("#currentFrame").val(gwac.currentFrame);
      }
    },
    draw: function() {

      var gwac = this;
      d3.select(gwac.placeholder + " svg").remove();

      var degrees = 180 / Math.PI;
      var time = Date.now();
      var ratio = window.devicePixelRatio || 1;
      var p = ratio;
      var width = $(gwac.placeholder).width();
      var height = $(gwac.placeholder).height();
      var scale = height / 3 - 1;  //显示的大小,相对于单位长度
      var clipAngle = 90 - 5;  //投影显示的部分，180显示整个球 1E-6
      var precision = 0.1; //线采样精度
      var rotate = [20, -40, 0]; //初始角度
      var velocity = [.01, 0, 0]; //转速

      var projection = d3.geo.orthographic()
              .scale(scale)
              .translate([width / 2, height / 2])
              .clipAngle(clipAngle)
              .clipExtent([[-1, -1], [width + 1, height + 1]])
              .precision(precision);

      var tooltip = d3.select("#tooltip");
      var path = d3.geo.path().projection(projection);
      var svg = d3.select(gwac.placeholder).append("svg").attr("width", width).attr("height", height);

      gwac.projection = projection;
      gwac.path = path;
      gwac.svg = svg;

      var zoom = d3.geo.zoom().projection(projection)
              .scaleExtent([scale, Infinity])
              .on("zoom", function() {

                svg.selectAll("*").remove();
                svg.append("image").attr("xlink:href", gwac.pingsUrl).attr("width", 40).attr("height", 40).attr("x", 10).attr("y", 10);
                svg.append("path").datum(gwac.graticule.data).attr("class", gwac.graticule.class).attr("d", path);
                svg.append("path").datum(gwac.sphere.data).attr("class", gwac.sphere.class).attr("d", path);
                svg.append("path").datum(gwac.equator.data).attr("class", gwac.equator.class).attr("d", path);
                svg.append("path").datum(gwac.primemeridian.data).attr("class", gwac.primemeridian.class).attr("d", path);
                svg.append("path").datum(gwac.constellationLines.data).attr("class", gwac.constellationLines.class).attr("d", path);
//                svg.append("path").datum(gwac.singleLineStringExample.data).attr("class", gwac.primemeridian.class).attr("d", path);

                $.each(gwac.labelPoint.data.coordinates, function(i, item) {
                  var tdata = {type: "Point", coordinates: item};
                  svg.append("path").datum(tdata).attr("class", gwac.labelPoint.class).attr("d", path.pointRadius(gwac.labelPoint.radius)).append("title").text("(" + item[0] + "," + item[1] + ")");
                });

                gwac.drawOt1();
                gwac.drawMot();
              });

      svg.call(zoom).call(zoom.event);
      gwac.ot1Data.data.coordinates = gwac.ot1InitView;
      gwac.zoomBounds({type: "MultiPoint", coordinates: gwac.ot1InitView});
      svg.transition().ease("quad-in-out").duration(gwac.startAnimationDuration).call(zoom.projection(projection).event);

      gwac.zoom = zoom;
    },
    drawMot: function() {
      var gwac = this;
      if (gwac.motObj.length > 0 && gwac.movType !== '5') {
        $.each(gwac.motObj, function(i, item1) {
            $.each(item1.mov_detail, function(j, item2) {
              if (item2.ff_number <= gwac.currentFrame && item2.ff_number >= gwac.startFrame) {
                gwac.motPointData.data.coordinates = [[item2.ra_d, item2.dec_d]];
                var tnode = gwac.svg.append("path").datum(gwac.motPointData.data).attr("class", gwac.motPointData.class)
                        .style('fill', item1.fillColor)
                        .attr("d", gwac.path.pointRadius(3));
                tnode.append("title").text(item2.file_name);
                tnode.attr("file_name", item2.file_name);
                tnode.attr("mov_id", item1.mov_id);
                tnode.attr("x", item2.x);
                tnode.attr("y", item2.y);
                tnode.on("mouseover", gwac.clickStar);
                tnode.on("click", gwac.clickStar);
              }
            });
        });
      }
    },
    drawOt1: function() {
      var gwac = this;
      if (gwac.ot1.length > 0) {
        var startIdx = gwac.currentFrame - gwac.playInterval + 1;
        if (startIdx < gwac.startFrame || startIdx > gwac.endFrame) {
          startIdx = gwac.startFrame;
        }

        for (i = startIdx; i <= gwac.currentFrame; i++) {
          var tIdx = i - gwac.startFrame;
          if (gwac.ot1[tIdx] !== null && gwac.ot1[tIdx].length > 0) {
            $.each(gwac.ot1[tIdx], function(j, ot1item) {
              gwac.ot1Data.data.coordinates = [[ot1item[0], ot1item[1]]];
              var tnode = gwac.svg.append("path").datum(gwac.ot1Data.data).attr("class", gwac.ot1Data.class)
                      .style('fill', '#FFF')
                      .attr("d", gwac.path.pointRadius(3));
              tnode.append("title").text(ot1item[4]);
              tnode.attr("file_name", ot1item[4]);
              tnode.attr("x", ot1item[2]);
              tnode.attr("y", ot1item[3]);
              tnode.on("mouseover", gwac.clickStar);
              tnode.on("click", gwac.clickStar);
            });
          }
        }
      }
    },
    clickStar2: function() {
      $("#dragDiv").show();
      var fName = $(this).attr("file_name");
      var x = $(this).attr("x");
      var y = $(this).attr("y");
      var movId = $(this).attr("mov_id");
      var rootUrl = $("#gwacRootURL").val();
//      var rootUrl = "http://10.0.10.236";
//      var rootUrl = "http://172.28.8.8";
// G042_mon_objt_171116T14073_ccdimg.jpg
    var dateStr00 = fName.substring(fName.indexOf('objt_') + 5, fName.indexOf('T'));
    var camName00 = fName.substring(0, 4);
    var imgName00 = fName.substring(0, fName.indexOf('.'));
      var otImgUrl = rootUrl + "/images/fits_preview/20" + dateStr00 + "/" + camName00 + "/" + imgName00 + ".jpg";
//      console.log(otImgUrl + ", " + x + ", " + y);
      console.log("id=" + movId + ", " + fName + ", " + x + ", " + y);
      $("#otCoordinate").html("<a target=\"_blank\" href=\"" + otImgUrl + "\">" + fName.substring(0, 29) + "</a>(" + parseFloat(x).toFixed(2) + ", " + parseFloat(y).toFixed(2) + ")");

      var img = document.getElementById('otImgShow');
      $("#otImgShow").attr("src", otImgUrl);
      $("#otImgShow_img").attr("src", otImgUrl);
//      shiftzoom.source(img, otImgUrl, false);
      $("#otImgShow").load(function() {
        shiftzoom.add(img, {showcoords: true, relativecoords: true, zoom: 100});
        $("#otImgShow_tumb").attr("src", otImgUrl);
      });
      setTimeout(function() {
        var img = document.getElementById('otImgShow');
        var imgHeight = shiftzoom.get(img, 'maxheight');
        shiftzoom.zooming(img, 100);
        shiftzoom.moveto(img, parseInt(x), parseInt(y));
      }, 1000);
    },
    clickStar: function() {
      $("#dragDiv").show();
      var fName = $(this).attr("file_name");
      var x = $(this).attr("x");
      var y = $(this).attr("y");
      var movId = $(this).attr("mov_id");
      var rootUrl = $("#gwacRootURL").val();
//      var rootUrl = "http://10.0.10.236:9995";
      var subImgListUrl = rootUrl + "/getMotSubImageList.action?cropW=400&cropH=400&labelW=0&cmodel=0&motId="+movId;
//      var fullImgUrl = rootUrl + "/images/fits_preview/20" + fName.substring(14, 20) + "/" + fName.substring(0, 4) + "/" + fName.substring(0, 29) + ".jpg";
//      var subImgUrl = rootUrl + "/getSubImage.action?imgPath=/images/fits_preview/20" + fName.substring(14, 20) + "/" + fName.substring(0, 4) + "/" + fName.substring(0, 29) + ".jpg"
//      + "&centerX=" + x + "&centerY=" + y + "&cropW=400&cropH=400&labelW=0";
    var dateStr00 = fName.substring(fName.indexOf('objt_') + 5, fName.indexOf('T'));
    var camName00 = fName.substring(0, 4);
    var imgName00 = fName.substring(0, fName.indexOf('.'));
    var fullImgUrl = "/images/fits_preview/20" + dateStr00 + "/" + camName00 + "/" + imgName00 + ".jpg";
    var subImgUrl = rootUrl + "/getSubImage.action?imgPath=/images/fits_preview/20" + dateStr00 + "/" + camName00 + "/" + imgName00 + ".jpg"
            + "&centerX=" + x + "&centerY=" + y + "&cropW=400&cropH=400&labelW=0";
      console.log(subImgListUrl);
      console.log("id=" + movId + ", " + fName + ", " + x + ", " + y);
      $("#otCoordinate").html("<a target=\"_blank\" href=\"" + fullImgUrl + "\" href=\"点击打开大图\">" + fName.substring(0, 29) 
              + "</a>&nbsp;&nbsp;<a target=\"_blank\" href=\"" + subImgListUrl + "\" href=\"点击下载切图\">(" 
              + parseFloat(x).toFixed(2) + ", " + parseFloat(y).toFixed(2) + ")</a>");
      $("#otImgShow").attr("src", subImgUrl);
    },
    changeView: function(gwac) {
      var tdata = {type: "MultiPoint", coordinates: []};
      tdata.coordinates.push(eval("[" + $('#leftTopBound').val() + "]"));
      tdata.coordinates.push(eval("[" + $('#rightBottomBound').val() + "]"));
      gwac.zoomBounds(tdata);
      gwac.svg.transition().ease("quad-in-out").duration(100).call(gwac.zoom.projection(gwac.projection).event);
    },
    getBounds: function() {
      var gwac = this;
      var bounds = {type: "Feature", geometry: {type: "Polygon", coordinates: [[[30, 30], [0, 10], [10, 0], [0, -10], [-10, 0]]]}};
      return bounds;
    },
    zoomBounds: function(data) {

      var gwac = this;
      var width = $(gwac.placeholder).width();
      var height = $(gwac.placeholder).height();
      var centroid = d3.geo.centroid(data);
      var clip = gwac.projection.clipExtent();

      gwac.projection.rotate(true ? [-centroid[0], -centroid[1]] : gwac.zoom.rotateTo(centroid))
              .clipExtent(null)
              .scale(1)
              .translate([0, 0]);

      var b = gwac.path.bounds(data);
      var k = Math.min(1000, .45 / Math.max(Math.max(Math.abs(b[1][0]), Math.abs(b[0][0])) / width, Math.max(Math.abs(b[1][1]), Math.abs(b[0][1])) / height));
      gwac.projection.clipExtent(clip)
              .scale(k)
              .translate([width / 2, height / 2]);
    },
    genLabelPoint: function() {
      var gwac = this;
      var tpoints = gwac.labelPoint.data.coordinates;
      while (tpoints.length > 0) {
        tpoints.pop();
      }
      tpoints.push([0, 89.9999]);
      tpoints.push([0, -89.9999]);
      for (var i = 0; i < 360; i += 60) {
        for (var j = -60; j <= 60; j += 30) {
          tpoints.push([i, j]);
        }
      }
    },
    getPlayData: function() {
      gwac = this;
      gwac.playSpeed = $("#playSpeed").val();
      gwac.playInterval = $("#playInterval").val();
      gwac.startFrame = $("#startFrame").val();
    },
    loadDateStrList: function() {
      var queryUrl = this.rootUrl + this.getDateStrListJsonUrl;
      $.ajax({
        type: "get",
        url: queryUrl,
        async: false,
        dataType: 'json',
        success: function(data) {
          var objs = data.objs;
          if (objs.length > 0) {
            $.each(objs, function(i, item) {
              $('#obsDate').append($('<option>', {
                value: item,
                text: item,
                style: "background-color:#000"
              }));
            });
          }
        }
      });
    },
    loadSkyList: function() {
      var queryUrl = this.rootUrl + this.getSkyListJsonUrl;
      $.ajax({
        type: "get",
        url: queryUrl,
        async: false,
        dataType: 'json',
        success: function(data) {
          var objs = data.objs;
          if (objs.length > 0) {
            $.each(objs, function(i, item) {
              $('#obsSky').append($('<option>', {
                value: item,
                text: item,
                style: "background-color:#000"
              }));
            });
          }
        }
      });
    },
    loadDpmList: function() {
      var queryUrl = this.rootUrl + this.getDpmListJsonUrl;
      $.ajax({
        type: "get",
        url: queryUrl,
        async: false,
        dataType: 'json',
        success: function(data) {
          var objs = data.objs;
          if (objs.length > 0) {
            $.each(objs, function(i, item) {
              $('#obsCcd').append($('<option>', {
                value: item.dpmId,
                text: item.name,
                style: "background-color:#000"
              }));
            });
          }
        }
      });
    },
    printInfo: function() {
      gwac = this;
      console.log("playSpeed:" + gwac.playSpeed);
      console.log("playInterval:" + gwac.playInterval);
      console.log("startFrame:" + gwac.startFrame);
      console.log("currentFrame:" + gwac.currentFrame);
      console.log("totalFrame:" + gwac.totalFrame);
    },
    getConstellations: function() {
      gwac = this;
      console.log(gwac.curl);
      d3.json(gwac.curl, function(errors, reqData) {
        gwac.constellationLines.data = reqData;
      });
    }
  };

  $.gwac = function(placeholder, root, url, curl) {
    var gwac = new Gwac(placeholder, root, url, curl);
    return gwac;
  };

})(jQuery);
