<%@ page language="java" import="java.lang.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="/WEB-INF/views/server/resource.jsp"  %>
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
<title>热门旅行</title>
<%-- <script type="text/javascript" src="${basePath}js/jquery-easyui-1.5.1/jquery.min.js"></script>
<script type="text/javascript" src="${basePath}js/commons/package.js"></script> --%>
</head>
<body>
<table  class="commontb" align="center">
   <tr>
    <td> <%@include file="/frontm/header.jsp"  %> </td>
  </tr>
  <tr>
    <td><img  width="100%" src="images/banner.jpg" /></td>
  </tr>
  <tr>
    <td height="106" valign="top" bgcolor="#fafafa">
    
    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td class="h1-black" style="text-align:left">热门旅行</td>
      </tr>
      <tr>
        <td class="h1-2" style="text-align:left">專業團隊為您提供後勤保障</td>
      </tr>
      <tr>
        <td style="text-align:left"><p>帶上家人，約上朋友 </p>
          <p>登山頂峰<br />  
              <br />
            》》<a href="${basePath }hotsight/main">了解更多</a></p>
          <p></p></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td valign="top">&nbsp;</td>
  </tr>
 <!-- <tbody id="fbcontent">
  </tbody> -->
    <tr>
    <td><ul id="fbpage"></ul> </td>
  </tr>
   <tr>
    <td> <%@include file="/frontm/footer.jsp" %> </td>
  </tr>
</table>
<script type="text/javascript" src="${basePath}jsm/ux/front/hotsight/main.js"></script>
</body>
</html>
