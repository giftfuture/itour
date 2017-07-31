<%@ page language="java" import="java.lang.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="/WEB-INF/views/server/mResource.jsp"  %> 
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${basePath}css/bootstrap/bootstrapv3.css" />
<link rel="stylesheet" href="${basePath}css/bootstrap/qunit-1.11.0.css" />  
<script type="text/javascript" src="${basePath}js/plug-in/bootstrap/bootstrapv3.js"></script>
<script type="text/javascript" src="${basePath}js/plug-in/bootstrap/bootstrap-paginator.js"></script>
<script type="text/javascript" src="${basePath}js/plug-in/bootstrap/qunit-1.11.0.js"></script>
 <meta http-equiv="keywords" content=" ">  
 <meta http-equiv="description" content=" "> 
<title></title>
</head>
<body>
<div data-role="content"  data-fullscreen="true">    
<table  align="center" style="width:100%">
  <tr>
    <td> <%@include file="/frontm/header.jsp"  %></td>
  </tr>
  <tr>
    <td class="STYLE17"><div align="center">回憶幸福~將幸福定格</div></td>
  </tr>
  <tr>
    <td><img src="images/frame1-1.gif" width="100%"/></td>
  </tr>
  <tr>
    <td style="text-align:left;background-image:url('images/frame1-2.gif');background-position:0px 0px;">
              ※  旅行  是流動的歷程<br />
              ※  感動  是霎那的永恆 <br />
              ※  回憶  是一輩子的幸福風景 
      <span style="float:right;"><a href="${basePath}showhappy-sharehappy">《<strong>分享回憶</strong>》</a></span></td>
  </tr>
  <tr><!--  style="vertical-align:top;valign:top;height:7px;text-overflow:ellipsis;overflow:hidden;white-space: nowrap;"  -->
    <td><img src="${basePath }images/frame1-3.gif" width="100%" /></td>
  </tr>
</table>
<table border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><img src="${basePath }images/frame1-1.gif" width="100%" height="7" /></td>
  </tr>
  <tr>
    <td background="${basePath }images/frame1-2.gif">
        <div id="fbcontent"></div>
        <ul id='fbpage'></ul>
      </td>
  </tr>
   <tr>
    <td> <%@include file="/frontm/footer.jsp" %> </td>
  </tr>
  <tr>
    <td><img src="${basePath }images/frame1-3.gif" width="100%" height="7" /></td>
  </tr>
</table>
</div>
<script type="text/javascript" src="${basePath}jsm/ux/front/happy/happiness.js"></script>
</body>
</html>

