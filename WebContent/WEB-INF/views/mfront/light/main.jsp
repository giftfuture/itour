<%@ page language="java" import="java.lang.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="/WEB-INF/views/server/mResource.jsp"  %>
<!DOCTYPE html>
<html>
<head>
<title>轻旅行</title>
<link rel="stylesheet" href="${basePath}css/bootstrap/bootstrapv3.css" />
<link rel="stylesheet" href="${basePath}css/bootstrap/qunit-1.11.0.css" />  
<script type="text/javascript" src="${basePath}js/plug-in/bootstrap/bootstrapv3.js"></script>
<script type="text/javascript" src="${basePath}js/plug-in/bootstrap/bootstrap-paginator.js"></script>
<script type="text/javascript" src="${basePath}js/plug-in/bootstrap/qunit-1.11.0.js"></script>
 <meta http-equiv="keywords" content="轻旅行">  
 <meta http-equiv="description" content="不必等行李，无财一身轻，想走就走，想留就留，更多尝试新鲜的机会，它是一种环保的理念，更开放，更自由，更经济，更复合"> 
<%-- <script type="text/javascript" src="${basePath}js/jquery-easyui-1.5.1/jquery.min.js"></script>
<script type="text/javascript" src="${basePath}js/commons/package.js"></script> --%>
</head>
<body>
<table class="commontb" align="center" style="width:100%">
   <tr>
    <td> <%@include file="/frontm/header.jsp"  %> </td>
  </tr>
  <tr>
    <td><img  width="100%" src="images/img/girl-03.jpeg" /></td>
  </tr>
  <tr>
    <td height="106" valign="top" bgcolor="#fafafa">
    
    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td class="h1-black" style="text-align:left">轻旅行</td>
      </tr>
      <tr>
        <td class="h1-2" style="text-align:left">專業團隊為您提供後勤保障</td>
      </tr>
      <tr>
        <td style="text-align:left"><p>帶上家人，約上朋友 </p>
          <p>登山頂峰<br />  
              <br />
         <%--    》》<a href="${basePath }light/main">了解更多</a> --%></p>
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
<script type="text/javascript" src="${basePath}jsm/ux/front/light/main.js"></script>
</body>
</html>
