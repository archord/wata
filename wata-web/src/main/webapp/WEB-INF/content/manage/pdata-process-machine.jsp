<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
<%@ taglib prefix="sjg" uri="/struts-jquery-grid-tags" %>

<!--h5>数据处理机信息管理</h5-->
<!--p class="text">
    数据处理机信息主要包括机器名称，机器IP和机器对应望远镜。
</p-->
<s:url var="remoteurl" action="get-dpm-list" namespace="/"/>
<s:url var="editurl" action="edit-dpm-entry" namespace="/"/>
<s:url var="tspurl" action="get-telescope-all-list" namespace="/"/>
<sjg:grid
  id="gridedittable"
  caption="数据处理机信息管理"
  dataType="json"
  href="%{remoteurl}"
  pager="true"
  navigator="true"
  navigatorAddOptions="{height:280,reloadAfterSubmit:true}"
  navigatorEditOptions="{height:280,reloadAfterSubmit:false}"
  navigatorSearch="false"
  navigatorEdit="false"
  navigatorView="false"
  navigatorDelete="true"
  navigatorDeleteOptions="{height:280,reloadAfterSubmit:true}"
  navigatorInlineEditButtons="true"
  gridModel="gridModel"
  rowList="10,15,20"
  rowNum="15"
  editurl="%{editurl}"
  editinline="true"
  onSelectRowTopics="rowselect"
  onEditInlineSuccessTopics="oneditsuccess"
  viewrecords="true"
  width="500"
  rownumbers="true"
  shrinkToFit="true"
  >
  <sjg:gridColumn name="dpmId" frozen="true" index="dpmId" title="ID" width="30" editable="true" edittype="text"
                  sortable="false" search="false" hidden="true"/>
  <sjg:gridColumn name="name" index="name" title="名称" width="150" editable="true" edittype="text" sortable="false"
                  search="false"/>
  <sjg:gridColumn name="ip" index="ip" title="IP地址" sortable="false" editable="true"
                  edittype="text"/>

</sjg:grid>
  <!--sjg:gridColumn name="tspId" index="tspId" title="对应望远镜" sortable="false" editable="true"
                  edittype="select" editoptions="{dataUrl : '%{tspurl}'}" /-->
