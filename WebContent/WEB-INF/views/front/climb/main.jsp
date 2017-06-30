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
<title>登山旅行</title>
</head>
<body>
<%@include file="/front/header.jsp"  %>
<center>
<table  class="commontb" align="center" width="72.6%" style="width:72.6%">
   <!-- <tr>
    <td>  </td>
  </tr> -->
  <tr>
    <td colspan=3 align="center" style="text-align:center;width:100%" width="100%"><img src="images/img/gonga-04.jpg" width="100%"/></td>
  </tr>
   </table>
  <table class="frametb" align="center" width="61.3%" style="width:61.3%">
  <tr>
    <td height="106" valign="top" bgcolor="#fafafa" colspan=3>
    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td class="h1-black" style="text-align:left">徒步登山</td>
      </tr>
      <tr>
        <td class="h1-2" style="text-align:left">專業團隊為您提供後勤保障</td>
      </tr>
      <tr>
        <td style="text-align:left"><p>帶上家人，約上朋友 </p>
          <p>登山頂峰<br />  
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
<script type="text/javascript" src="${basePath}js/ux/front/climb/main.js"></script>

</body>
</html>
