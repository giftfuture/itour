<%@ page language="java" import="java.lang.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="/WEB-INF/views/server/resource.jsp"  %>
<!DOCTYPE html>
<html lang="cn">
<head>
<link rel="stylesheet" href="${basePath}css/bootstrap/bootstrapv3.css" />
<link rel="stylesheet" href="${basePath}css/bootstrap/qunit-1.11.0.css" />  
<script type="text/javascript" src="${basePath}js/plug-in/bootstrap/bootstrapv3.js"></script>
<script type="text/javascript" src="${basePath}js/plug-in/bootstrap/bootstrap-paginator.js"></script>
<script type="text/javascript" src="${basePath}js/plug-in/bootstrap/qunit-1.11.0.js"></script>
<meta http-equiv="keywords" content="徒步,运动,户外,徒步旅行,穷游,徒步中国,徒步旅行从这里开始！">  
<meta http-equiv="description" content="户外运动，深度旅行，摄影外拍，跟团旅游，野外露营,徒步旅行知识、技巧、线路、攻略、游记,我们推崇自由的旅行方式，用双脚丈量世界！"> 
<title>徒步旅行</title>
</head>
<body>
 <%@include file="/front/header.jsp"  %> 
 <center>
<table class="commontb" align="center"><!-- width="72.6%" style="width:72.6%" -->
  <tr>
    <td class="banner" align="center" style="text-align:center;width:100%" width="100%">
          <img width="100%" src="images/banner-trekking.jpg"  />  </td>
  </tr>
  </table>
  <table class="frametb" align="center" width="61.3%" style="width:61.3%">
  <tr>
    <td height="106" valign="top" bgcolor="#fafafa" width="100%">
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
          </td>
      </tr>
    </table></td>
  </tr></table>
  <table class="frametb" align="center" style="width:61.3%">
<tbody id="fbcontent" width="100%" style="width:100%">
 </tbody>
 <tr><td colspan=3><ul id="fbpage"></ul></td></tr>
</table>
  <table class="frametb" align="center">
  <tr><td><%@include file="/front/footer.jsp" %></td></tr>
</table>
</center>
<script type="text/javascript" src="${basePath}js/ux/front/trek/trekkings.js"></script>

</body>
</html>
