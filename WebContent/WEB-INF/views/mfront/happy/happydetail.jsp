<%@ page language="java" import="java.lang.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="/WEB-INF/views/server/mResource.jsp"  %> 
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="${basePath}js/plug-in/zeroclip/ZeroClipboard.js"></script>
<script type="text/javascript" src="${basePath}js/plug-in/zeroclip/ZeroClipboard.swf"></script>
<script type="text/javascript" src="${basePath}js/plug-in/pdf/html2canvas.min.js"></script>
<script type="text/javascript" src="${basePath}js/plug-in/pdf/jspdf.min.js"></script>
<title>回忆幸福详情</title>
<meta name="description" content=" ">
<meta name="keywords" content=" ">
</head>
<body>
<div data-role="content"  data-fullscreen="true">    
<table align="center" style="width:100%">
<tr><td><%@include file="/frontm/header.jsp"  %></td></tr>
  <tr>
    <td class="STYLE17"><div align="center"><span class="STYLE19">${sh.title }</span></div></td>
  </tr>
  <tr>
    <td background="images/frame1-2.gif">
    <table class="frametb" width="100%" align="center" border="0" cellpadding="0" cellspacing="0">
     <tr>
    <td width="100%" style="align:left;float:left"><img src="${basePath}images/frame1-1.gif" height="7" /></td>
  </tr>
      <tr>
        <td valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr style="padding-top:10px;padding-bottom:10px">
            <td style="text-align:left"><span class="STYLE23">旅行時間： </span><span class="STYLE22"><span class="STYLE148">${sh.tourTime }</span> <span class="STYLE148">　
            <span class="STYLE23">旅行線路：</span>${sh.routeTitle }　
            　<span class="STYLE23">回憶人：</span><span class="STYLE20">${sh.signature } From${sh.areaname }</span></span></span></td>
            </tr>
          <tr style="padding-top:10px;padding-bottom:10px">
               <td style="text-align:left"><span class="STYLE23"><img src="${basePath}images/facebook.png" width="24" height="24" />
		        <a target="_blank" href="https://www.facebook.com/dialog/feed">分享至FB</a></span> 
		        <span class="STYLE23"><img src="${basePath}images/share.png" width="24" height="24" />
		        <a target="_blank" id="copyurl" href="javascript:itour.happydetail.copyUrl()" data-clipboard-target="flashcopier">复制链接</a><div style="display:none" id="flashcopier"></div></span>
		        <span class="STYLE23"><img src="${basePath}images/favorite01.png" width="24" height="24" />
		        <a target="_blank"  href="javascript:itour.happydetail.addFavorite()" rel="sidebar">收藏本页</a></span>
		        <span class="STYLE23"><img src="${basePath}images/print.png" width="24" height="24" />
		        <a target="_blank"  href="javascript:itour.happydetail.printff()">打印页面</a></span></td>
          </tr>
          <tr>
            <td>${sh.content }</td>
          </tr>
        </table></td>
      </tr>
      <tr>
    <td style="float:left"><img style="float:left" src="images/frame1-3.gif" width="100%" height="7" /></td>
  </tr> 
    </table> 
   </td></tr>
   <tr><td><%@include file="/frontm/footer.jsp"  %>  </td></tr>
</table>
</div>
<script type="text/javascript" src="${basePath}jsm/ux/front/happy/happydetail.js"></script>

</body>
</html>

