<%@ page language="java" import="java.lang.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="/WEB-INF/views/server/resource.jsp"  %>
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
</head>
<body>
<%@include file="/front/header.jsp"  %>
<center>
<div style="z-index:-1; position:relative;">
<table class="commontb" align="center"><!--  width="72.6%" style="width:72.6%" -->
  <tr>
    <td  colspan=3 align="center" style="text-align:center;width:100%" width="100%" class="banner">
    <img width="100%" src="images/img/girl-03.jpeg" /></td>
  </tr>
   </table>
   </div>
   <div style="position:relative;margin-top:-60;z-index:9999;width:1140">
  <table class="frametb" align="center">
    <tr style="width:100%;text-align:center" align="center" width="100%" >
            <td colspan=3  width="100%" style="width:100%"></td>
        </tr>
  <tr>
    <td height="106" valign="top" bgcolor="#fafafa" colspan=3>
    
    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td class="h1-black" style="text-align:left">轻旅行</td>
      </tr>
      <tr>
        <td class="h1-2" style="text-align:left">專業團隊為您提供後勤保障</td>
      </tr>
      <tr>
        <td style="text-align:left"><p>帶上家人，約上朋友 </p>
          <p><br />  
              <br />
         <%--    》》<a href="${basePath }light/main">了解更多</a> --%></p>
          <p></p></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
 <tbody id="fbcontent">
  </tbody>
  <tr><td colspan=3><ul id='fbpage'></ul></td></tr>
  <tr><td  colspan=3></td></tr>
</table>
</div>
<%@include file="/front/footer.jsp" %>
</center>
<script type="text/javascript" src="${basePath}js/ux/front/light/main.js"></script>
</body>
</html>
