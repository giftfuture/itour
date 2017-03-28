<%@ page language="java" import="java.lang.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="/WEB-INF/views/server/resource.jsp"  %> 
<!DOCTYPE html>
<html>
<head>
<title>回忆幸福详情</title>
<meta name="description" content="四姑娘山海子沟徒步、长坪沟穿越毕棚沟">
<meta name="keywords" content="四姑娘山登山，四姑娘山露營，四姑娘山穿越，四姑娘山徒步">
</head>
<body>
<%@include file="/front/header.jsp"  %>
<table width="100%" border="0" align="center" cellpadding="10" cellspacing="0">
  <tr>
    <td class="STYLE17"><div align="center"><span class="STYLE19">${sh.title }</span></div></td>
  </tr>
</table>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td background="images/frame1-2.gif">
    <table width="100%" border="0" align="center" cellpadding="10" cellspacing="0">
      <tr>
        <td valign="top"><table width="100%" border="0" align="center" cellpadding="10" cellspacing="0">
          <tr>
            <td><span class="STYLE23">旅行時間： </span><span class="STYLE22"><span class="STYLE148">${sh.tourTime }</span> <span class="STYLE148">　
            <span class="STYLE23">旅行線路：</span>${sh.route }　
            　<span class="STYLE23">回憶人：</span><span class="STYLE20">${sh.signature } From${sh.area }</span></span></span></td>
            </tr>
          <tr>
            <td><table border="0" cellpadding="2" cellspacing="0" class="f12-gao1">
              <tr>
           <!--      <td><img src="images/facebook.png" width="24" height="24" /></td>
                <td><a href="#">分享至FB</a></td>
                <td><img src="images/share.png" width="24" height="24" /></td>
                <td><a href="#">复制链接</a></td>
                <td><img src="images/favorite01.png" width="24" height="24" /></td>
                <td><a href="#">收藏本页</a></td>
                <td><img src="images/print.png" width="24" height="24" /></td>
                <td><a href="#">打印页面</a></td> -->
                <td><img src="${basePath}images/facebook.png" width="24" height="24" />
		        <a target="_blank" href="https://www.facebook.com/dialog/feed">分享至FB</a></td>
		        <td><img src="${basePath}images/share.png" width="24" height="24" />
		        <a target="_blank" id="copyurl" href="javascript:void(0)" data-clipboard-target="flashcopier">复制链接</a><div style="display:none" id="flashcopier"></div></td>
		        <td><img src="${basePath}images/favorite01.png" width="24" height="24" />
		        <a target="_blank"  href="javascript:itour.hiking.addFavorite()" rel="sidebar">收藏本页</a></td>
		        <td><img src="${basePath}images/print.png" width="24" height="24" />
		        <a target="_blank"  href="javascript:itour.hiking.printff()">打印页面</a></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td>${sh.content }</td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>

<script type="text/javascript" src="${basePath}js/ux/front/happy/happydetail.js"></script>
<%@include file="/front/footer.jsp"  %>  
</body>
</html>

