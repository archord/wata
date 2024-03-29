<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
  <head>
    <meta charset="utf-8">
    <title>Norse - IPViking Live</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resource/js/ipviking/ipviking.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resource/js/ipviking/flags.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resource/js/ipviking/fonts.css">
  </head>

  <body class="f16">
    <div id="loading">
      <h1>Loading...</h1>
    </div>
    <div id="content">
      <a href="http://norse-corp.com">
        <img id="logo" src="<%=request.getContextPath()%>/resource/js/ipviking/norse-white.png" alt="Norse Corp">
      </a>
      <div id="info"></div>

      <div class="data box top-left gray-bg">
        <a href="#" class="toggle" data-target="#left-table-container">
          <div class="table-header">
            <h1>
              <span class="icon-open"></span>
              Attack Origins
            </h1>
          </div>
        </a>
        <div id="left-table-container" class="table-container">
          <table id="left-data">
            <colgroup>
              <col class="bar-col" span="1" />
              <col class="total-count" span="1" />
              <col class="data-label-small" span="1" />
              <col class="data-label" span="1" />
            </colgroup>
            <tr>
              <th></th>
              <th><span class="icon-number"></span></th>
              <th><span class="icon-country"></span></th>
              <th>Country</th>
            </tr>
          </table>
        </div>
      </div>

      <div class="data box top-right gray-bg">
        <a href="#" class="toggle" data-target="#right-table-container">
          <div class="table-header">
            <h1>
              <span class="icon-open"></span>
              Attack Targets
            </h1>
          </div>
        </a>
        <div id="right-table-container" class="table-container">
          <table id="right-data">
            <colgroup>
              <col class="bar-col" span="1">
              <col class="total-count" span="1">
              <col class="data-label-small" span="1">
              <col class="data-label" span="1">
            </colgroup>
            <tr>
              <th></th>
              <th><span class="icon-number"></span></th>
              <th class="flag-col"><span class="icon-country"></span></th>
              <th>Country</th>
            </tr>
          </table>
        </div>
      </div>

      <div class="data bottom-right box gray-bg">
        <a href="#" class="toggle" data-target="#bottom-right-table-container">
          <div class="table-header">
            <h1 class="table-header">
              <span class="icon-open"></span>
              Attack Types
            </h1>
          </div>
        </a>

        <div id="bottom-right-table-container">
          <table id="bottom-right-data">
            <colgroup>
              <col class="bar-col" span="1">
              <col class="total-count" span="1">
              <col class="data-label-small" span="1">
              <col class="data-label" span="1">
              <col class="port-label" span="1">
            </colgroup>
            <tr>
              <th></th>
              <th><span class="icon-number"></span></th>
              <th><span class="icon-threattype"></span></th>
              <th>Service</th>
              <th>Port</th>
            </tr>
          </table>
        </div>
      </div>

      <div id="console" class="box gray-bg">
        <a href="#" class="toggle" data-target="#console-table-container">
          <div class="table-header">
            <h1 class="table-header">
              <span class="icon-open"></span>
              Live Attacks
            </h1>
          </div>
        </a>
        <div id="console-table-container">
          <table id="events-data">
            <colgroup class="second-level">
              <col class="timestamp-col" span="1">
              <col class="attacker-org-col left-border" span="1">
              <col class="location-col" span="1">
              <col class="attacker-ip-col" span="1">
              <col class="location-col left-border" span="1">
              <col class="service-col left-border" span="1">
              <col class="port-col" span="1">
            </colgroup>

            <tr class="first-level">
              <th></th>
              <th colspan="3" class="attacker">Attacker</th>
              <th class="target">Target</th>
              <th colspan="2">Type</th>
            </tr>

            <tr class="second-level">
              <th>Timestamp</th>
              <th>Organization</th>
              <th>Location</th>
              <th>IP</th>
              <th>Location</th>
              <th>Service</th>
              <th>Port</th>
            </tr>
          </table>
        </div>
      </div>
      <div class="info-controls">
        <div class="gray-bg information info-btn">
          <span class="info-text icon-info"></span></li>
        </div>
        <div data-paused="false" class="gray-bg controls">
          <span class="icon-pause play-pause"></span>
        </div>
      </div>
      <div id="social-icons" class="gray-bg">
        <a href="http://www.youtube.com/user/norsecorporation"><span class="icon-youtube"></span></a>
        <a href="https://www.facebook.com/NorseCorporation"><span class="icon-facebook"></span></a>
        <a href="https://plus.google.com/114618904682323659936"><span class="icon-googleplus"></span></a>
        <a href="http://www.linkedin.com/company/norse-corporation"><span class="icon-linkedin"></span></a>
        <a href="http://twitter.com/NorseCorp"><span class="icon-twitter"> </span></a>
      </div>
    </div>

    <div id="drawer">
      <!-- <div id="nav-bottom-corner"></div> -->
      <div id="drawer-content" class="blue-bg">
        <div id="drawer-inner">
          <div id="drawer-left">
            <h1>Norse Dark Intelligence</h1>
            <p>
              Every second, Norse collects and analyzes live threat
              intelligence from darknets in hundreds of locations in
              over 40 countries. The attacks shown are based on a
              small subset of live flows against the Norse honeypot
              infrastructure, representing actual worldwide cyber
              attacks by bad actors. At a glance, one can see which
              countries are aggressors or targets at the moment, using
              which type of attacks (services-ports).
            </p>

            <p>
              Hovering over the <span class="table-ref">Attack Origins</span>,
              <span class="table-ref">Attack Targets</span>, or
              <span class="table-ref">Attack Types</span> will
              highlight just the attacks emanating from that country
              or over that service-port respectively. Hovering over
              any bubble on the map, will highlight only the attacks
              from that location and type. Press <span class="table-ref">s</span>
              to toggle table sizes.
            </p>

            <p>
              Norse exposes its threat intelligence via
              high-performance, machine-readable APIs in a variety of
              forms.  Norse also provides products and solutions that
              assist organizations in protecting and mitigating cyber
              attacks.
            </p>

            <p style="margin-top: 25px; margin-bottom: 25px;">
              For more information, please contact:
              <a href="mailto:inquiry@norse-corp.com">inquiry@norse-corp.com</a>
            </p>

            <ul class="social-media">
              <li><a href="http://www.linkedin.com/company/norse-corporation">Linked In</a></li>
              <li><a href="https://www.facebook.com/NorseCorporation">Facebook</a></li>
              <li><a href="http://twitter.com/NorseCorp">Twitter</a></li>
              <li><a href="http://www.youtube.com/user/norsecorporation">YouTube</a></li>
              <li><a href="https://plus.google.com/114618904682323659936">Google+</a></li>
            </ul>
          </div>

          <div id="legend-container">
            <div id="particle-legend">
              <h4><span class="icon-open"></span> <p>Each particle represents an attack</p></h4>
              <p id="particle-legend-content"></p>
            </div>
            <div id="origin-legend">
              <h4><span class="icon-open"></span> <p>Attack origins are grouped into clusters</p></h4>
              <p>
                <span class="icon-one"></span>
                <span class="icon-ten"></span>
                <span class="icon-twohundred"></span>
              </p>
            </div>
            <div id="country-legend">
              <h4><span class="icon-open"></span> <p>Countries are shaded in as they're attacked</p></h4>
              <p>
                <span class="icon-one" style="color: #1e1e1e;"></span>
                <span class="icon-five" style="color: #1e2637;"></span>
                <span class="icon-twentyfive" style="color: #1e2e50;"></span>
                <span class="icon-onehundred" style="color: #1e3565;"></span>
                <span class="icon-fivehundred" style="color: #1e3d7e;"></span>								
              </p>
            </div>						
          </div>

          <footer>
            <p>
              By the <a href="http://norse-corp.com">Norse Corporation</a>
              and <a href="http://pocketknife.io">Thomas @ Pocketknife</a>.
              Many thanks to <a href="http://artzub.com">ArtZub</a> for
              <a href="http://d3.artzub.com/wbca/">inspiration</a> and the
              luminous particle.
              Built with <a href="http://d3js.org">d3</a> and the
              <a href="https://www.gosquared.com/resources/flag-icons/">
                GoSquared Flag Icon Set</a>.
            </p>
            <p>vsn <span class="vsn"></span><br />
              2014 ? Norse Corp. - All Rights Reserved</p>
          </footer>
        </div>
      </div>
    </div>
    <div id="message-panel" class="data box">
      <div class="table-header gray-bg">
        <h3>Message Dialog</h3>
      </div>
      <div id="message-container" class="black-solid table-container">
        <span id="message-text"></span>
        <button id="close-button" class="gray-bg" onclick="hideMessage();">Close</button>
      </div>
    </div>

  <img id="unknown-icon" src="<%=request.getContextPath()%>/js/ipviking/unknown-poly.png" />

  <script type="text/javascript" src="http://d3js.org/d3.v3.min.js"></script>
  <script type="text/javascript" src="http://d3js.org/queue.v1.min.js"></script>
  <script type="text/javascript" src="http://d3js.org/topojson.v1.min.js"></script>
  <script type="text/javascript" src="<%=request.getContextPath()%>/js/ipviking/ipviking.js"></script>
  <script type="text/javascript" src="<%=request.getContextPath()%>/js/ipviking/presentations.js"></script>
</body>
</html>