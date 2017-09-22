<%@ page language="java" import="java.lang.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="/WEB-INF/views/server/mResource.jsp"  %>
<!DOCTYPE html>
<html>
<head>
<title>自驾</title>
<link rel="stylesheet" href="${basePath}css/bootstrap/bootstrapv3.css" />
<link rel="stylesheet" href="${basePath}css/bootstrap/qunit-1.11.0.css" />  
<script type="text/javascript" src="${basePath}js/plug-in/bootstrap/bootstrapv3.js"></script>
<script type="text/javascript" src="${basePath}js/plug-in/bootstrap/bootstrap-paginator.js"></script>
<script type="text/javascript" src="${basePath}js/plug-in/bootstrap/qunit-1.11.0.js"></script>
<meta name="keywords" content="自驾,自驾游，自行驾车出游，有车一族，骑行川藏,方便自行解决交通的人">
<meta name="description" content="主角旅游网是专门为广大驴友们提供自驾游，自驾游路线，自驾游路线查询，自驾游攻略等一站式全面服务的网站。中国西部最专业最全面的自助游旅游服务提供商">
<!-- <script type="text/javascript" src="Scripts/flashobject.js"></script>
<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
<link href="css/qzx.css" rel="stylesheet" type="text/css" />
<link href="css/bodylink.css" rel="stylesheet" type="text/css" /> -->
</head>
<body>
 <table class="commontb" align="center" style="width:100%">
 <tr><td><%@include file="/frontm/header.jsp"  %></td></tr>
 <tr><td><img  width="100%" src="images/index-ad/banner.jpg"  /></td></tr> 
  <tr>
    <td height="106" valign="top" bgcolor="#fafafa">
    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td class="h1-black" style="text-align:left">自驾</td>
      </tr>
      <tr>
        <td class="h1-2" style="text-align:left">專業團隊為您提供後勤保障</td>
      </tr>
      <tr>
        <td style="text-align:left"><p>帶上家人，約上朋友 </p>
          <p>自驾玩玩<br />  
            </p>
          <p></p></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>    </table></td>
  </tr>
    <tr>
    <td><ul id="fbpage"></ul> </td>
  </tr>
   <tr>
    <td> <%@include file="/frontm/footer.jsp" %> </td>
  </tr>
</table>
<script type="text/javascript" src="${basePath}jsm/ux/front/selfdrive/main.js"></script>
</body>
</html>
