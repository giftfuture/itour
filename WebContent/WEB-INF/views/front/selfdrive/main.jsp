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
<meta name="keywords" content="自驾,自驾游，自行驾车出游，有车一族，骑行川藏,方便自行解决交通的人">
<meta name="description" content="主角旅游网是专门为广大驴友们提供自驾游，自驾游路线，自驾游路线查询，自驾游攻略等一站式全面服务的网站。中国西部最专业最全面的自助游旅游服务提供商">
</head>
<body>
 <%@include file="/front/header.jsp"  %>
 <center>
 <div style="z-index:-1; position:relative;">
 <table class="commontb" align="center"><!--  width="72.6%" style="width:72.6%" -->
 <tr><td colspan=3 align="center" style="text-align:center;width:100%" width="100%" class="banner">
 <img width="100%" src="images/index-ad/banner.jpg" /></td></tr>
  <!--DWLayoutTable-->
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
  <tr><td  colspan=3></td></tr>
</table>
</div>
<%@include file="/front/footer.jsp" %>
</center>
<script type="text/javascript" src="${basePath}js/ux/front/selfdrive/main.js"></script>
</body>
</html>
