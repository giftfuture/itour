<%@ page language="java" import="java.lang.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="/WEB-INF/views/server/mResource.jsp"  %>
<!DOCTYPE html>
<html>
<head>
 <!-- <meta http-equiv="Refresh" content="0; URL=/"> -->
<title>欢迎访问主角旅行</title>
<link rel="stylesheet" href="${basePath}css/bootstrap/bootstrapv3.css" />
<link rel="stylesheet" href="${basePath}css/bootstrap/qunit-1.11.0.css" />  
<script type="text/javascript" src="${basePath}js/plug-in/bootstrap/bootstrapv3.js"></script>
<script type="text/javascript" src="${basePath}js/plug-in/bootstrap/bootstrap-paginator.js"></script>
<script type="text/javascript" src="${basePath}js/plug-in/bootstrap/qunit-1.11.0.js"></script>
 <link href="css/index.css" rel="stylesheet" type="text/css" />
 <script type="text/javascript">
/*  $(document.forms["searchForm"]).form('load','${context}'); */
  var rcdDays='${rcdDays}';
 var level1Area ='${level1Area}';
 var level2Area = '${level2Area}';
 jQuery.browser={};
 (function(){
	 jQuery.browser.msie=false; 
	 jQuery.browser.version=0;
	 if(navigator.userAgent.match(/MSIE ([0-9]+)./)){
		 jQuery.browser.msie=true;
		 jQuery.browser.version=RegExp.$1;
	 }})();
 </script>
</head>
<body>
<%@include file="/frontm/header.jsp" %>
<!-- <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td></td>
  </tr>
</table> -->

<%-- <input type="hidden" name="travelStyle" value="${travelStyle }"/>
<input type="hidden" name="level1Area" value="${level1Area }"/>
<input type="hidden" name="level2Area" value="${level2Area }"/>
<input type="hidden" name="rcdDays1" value="${rcdDays1 }"/>
<input type="hidden" name="rcdDays2" value="${rcdDays2 }"/>
<input type="hidden" name="rcdDays" value="${rcdDays }"/> --%>
<!-- <div id="fbcontent"></div> -->
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="100%" valign="top">
    <table border="0" align="center" cellpadding="1" cellspacing="0" name="searchRtstb">
   	<tbody id="fbcontent"></tbody>
    </table></td>
  </tr>
</table>
<center><ul id='fbpage'></ul></center>
<%@include file="/frontm/footer.jsp" %>
<script type="text/javascript">
/* 	var travelStyle = '${travelStyle}';
 	var level1Area = '${level1Area}';
 	var level2Area = '${level2Area}' ;
 	var rcdDays = '${rcdDays}';
 	//console.log(travelStyle+"  "+level1Area+"  "+level2Area+"  "+rcdDays);
 	jQuery("#travel_style").combobox('setValue',travelStyle);
 	jQuery("#level1Area").combobox('setValue',level1Area);
 	jQuery("#level2Area").combobox('setValue',level2Area);
 	jQuery("#vacation").combobox('setValue',rcdDays); */
</script>
<script type="text/javascript" src="jsm/commons/search.js"></script>
</body>
</html>