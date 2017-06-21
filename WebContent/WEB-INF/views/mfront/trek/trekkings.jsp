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
 <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
 <meta http-equiv="description" content=""> 
<title>徒步旅行</title>
</head>
<body>
<div data-role="content"  data-fullscreen="true">    
<table class="commontb" align="center"  width="100%" style="width:100%">
   <tr>
    <td  width="100%" > <%@include file="/frontm/header.jsp"  %> </td>
  </tr>
  <tr>
    <td><img width="100%" src="images/banner-trekking.jpg"  /></td>
  </tr>
  <tr>
    <td height="106" valign="top" bgcolor="#fafafa" width="100%" >
    <table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
      <tr>
        <td class="h1-black" style="text-align:left">徒步登山</td>
      </tr>
      <tr>
        <td class="h1-2" style="text-align:left">專業團隊為您提供後勤保障</td>
      </tr>
      <tr>
        <td style="text-align:left"><p>帶上家人，約上朋友 </p>
          <p>登山頂峰 
         <%--    》》<a href="${basePath}hiking/main">了解更多</a> --%></p>
          <p></p></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
<!-- <tbody id="fbcontent">
  </tbody> -->
   <tr>
    <td width="100%"  ><ul id="fbpage"></ul> </td>
  </tr>
   <tr>
    <td width="100%" > <%@include file="/frontm/footer.jsp" %> </td>
  </tr>
</table>
</div>
<script type="text/javascript" src="${basePath}jsm/ux/front/trek/trekkings.js"></script>
</body>
</html>
