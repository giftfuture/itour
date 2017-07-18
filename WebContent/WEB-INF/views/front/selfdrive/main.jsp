<%@ page language="java" import="java.lang.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="/WEB-INF/views/server/resource.jsp"  %>
<!DOCTYPE html>
<html>
<head>
<title>自驾</title>
<link rel="stylesheet" href="${basePath}css/bootstrap/bootstrapv3.css" />
<link rel="stylesheet" href="${basePath}css/bootstrap/qunit-1.11.0.css" />  
<script type="text/javascript" src="${basePath}js/plug-in/bootstrap/bootstrapv3.js"></script>
<script type="text/javascript" src="${basePath}js/plug-in/bootstrap/bootstrap-paginator.js"></script>
<script type="text/javascript" src="${basePath}js/plug-in/bootstrap/qunit-1.11.0.js"></script>
<meta name="keywords" content="Southwest China Adventures:Trekking & Hiking , Peak Climbing , Off raod¡¡overland, Motercycle tours ">
<meta name="description" content="Southwest China Adventures Trekking,Southwest China Peak Climbing,Southwest China Off raod,Southwest China Motercycle tours">
<!-- <script type="text/javascript" src="Scripts/flashobject.js"></script>
<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
<link href="css/qzx.css" rel="stylesheet" type="text/css" />
<link href="css/bodylink.css" rel="stylesheet" type="text/css" /> -->
</head>
<body>
 <%@include file="/front/header.jsp"  %>
 <center>
 <table class="commontb" align="center" width="72.6%" style="width:72.6%">
 <tr><td colspan=3 align="center" style="text-align:center;width:100%" width="100%"><img width="100%" src="images/index-ad/banner.jpg" height="598px" /></td></tr>
  <!--DWLayoutTable-->
  <!-- <tr bgcolor="#FFFFFF">
    <td width="10" background="images/shadowleft.gif"><img src="images/shadowleft.gif" width="10" height="8" /></td>
    <td valign="top" class="title"><table   border="0" align="center" cellpadding="0" cellspacing="0">
    </table></td>
    <td width="10" background="images/shadowright.gif"><img src="images/shadowright.gif" width="10" height="8" /></td>
  </tr> -->
  </table>
  <table class="frametb" align="center" width="61.3%" style="width:61.3%">
    <tr>
    <td height="106" valign="top" bgcolor="#fafafa" colspan=3>
    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td class="h1-black" style="text-align:left">自驾玩玩</td>
      </tr>
      <tr>
        <td class="h1-2" style="text-align:left">專業團隊為您提供後勤保障</td>
      </tr>
      <tr>
        <td style="text-align:left"><p>帶上家人，約上朋友 </p>
          <p>自驾玩玩<br />  
              <br />
           <%--  》》<a href="${basePath }climb/main">了解更多</a> --%></p>
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
  <tr><td  colspan=3><%@include file="/front/footer.jsp" %></td></tr>
</table>
</center>
<script type="text/javascript" src="${basePath}js/ux/front/selfdrive/main.js"></script>
</body>
</html>
