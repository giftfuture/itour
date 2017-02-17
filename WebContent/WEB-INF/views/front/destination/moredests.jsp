<%@ page language="java" import="java.lang.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="/WEB-INF/views/server/resource.jsp"  %>
<!DOCTYPE html>
<html>
<head>
<base href=" <%=basePath%>">
 <meta http-equiv="pragma" content="no-cache">  
 <meta http-equiv="cache-control" content="no-cache">  
 <meta http-equiv="expires" content="0">      
 <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
 <meta http-equiv="description" content="This is my page"> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>更多目的地</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.h1-black {
	font-family: "黑体";
	font-size: 36px;
	font-weight: bold;
	color: #333333;
}
.h1-2 {
	font-family: "黑体";
	font-size: 36px;
	color: #666666;
}
.f24 {
	font-size: 24px;
	line-height: 40px;
}
.h2-24 {
	font-family: "黑体";
	font-size: 24px;
}
.f12-gao1 {
	font-size: 12px;
	line-height: 20px;
	color: #333333;
}
.f14-gao1 {
	font-size: 14px;
	line-height: 30px;
	color: #333333;
}
.STYLE2 {font-family: "黑体"; font-size: 24px; color: #990000; }
.STYLE3 {
	color: #990000;
	font-weight: bold;
}
.STYLE5 {font-family: "黑体"; font-size: 36px; font-weight: bold; color: #990000; }
-->
</style>
</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
 <tr>
    <td>
	 <%@include file="/front/header.jsp"  %>
    </td>
  </tr>
</table>
<table width="100%" border="0" align="center" cellpadding="15" cellspacing="0">
  <tr>
    <td>目的地》四川》四姑娘山》四姑娘山长坪沟</td>  
  </tr>
</table>
<table width="100%" border="0" align="center" cellpadding="15" cellspacing="0">
  <tr>
    <td><span class="STYLE5">${dests}</span></td>
    <td>${fn:length(list)}个目的地 </td>
  </tr>
</table>
<table width="100%" border="0" align="center" cellpadding="9" cellspacing="0">
 
  <tr>
 
  </tr>
  <tr>
    <td valign="top">四川，简称“川”或“蜀”，省会成都，位于中国大陆西南腹地，东部为川东平行岭谷和川中丘陵，中部为四川盆地和成都平原，西部为川西高原，与陕西、贵州、云南、西藏、青海、甘肃、重庆诸省市交界，是国宝大熊猫的故乡。<br />
      四川是“中国西部综合交通枢纽”、“中国西部经济发展高地”，经济总量连续多年位居西部第一[1]  。<br />
      四川是中国重要的经济、工业、农业、军事、旅游、文化大省。省会成都在1993年被国务院确定为中国西南地区的科技、商贸、金融中心和交通、通信枢纽[2]  。成都双流国际机场是中国第四大航空港[3]  。<br />
      中国人民解放军五大战区之一的西部战区机关驻四川省成都市[4]  。<br />
      四川全省共辖1个副省级市、17个地级市、3个自治州，其中包括51个市辖区、16个县级市、112个县、4个自治县。截至2015年底，四川省户籍人口9132.6万人，常住人口8204万人[5]  。<br />
      四川现拥有已探明储量的矿产资源132种，占全国资源种数的70%，为全国的资源、能源大省。四川油气田已探明天然气储量超过3.8万亿立方米，位居全国第一，是川气东送的起点[6]  。因物产丰富，资源富集而被誉为“天府之国”。<br />
    四川是世界自然与文化遗产最多的省份，现有世界自然与文化遗产5处，列入联合国《人与生物圈计划》的自然保护区4处，世界地质公园2处。以及国家5A级景区10处，国家4A级景区130处。中国优秀旅游城市21座，中国历史文化名城8座，全国重点文物保护单位230处，中国最佳旅游城市一座。</td>
  </tr>
   <tr>
  <c:forEach items="${list}" var="dest">
   <td  align="center">
	   	<p><a href="${basePath }destination/detail/${dest.alias}">${dest.item }</a></p>
	   	<p><a href="${basePath }destination/detail/${dest.alias}"><img src="${basePath}${dest.cover}" width="550" height="309" /></a></p>
	   	<p>${dest.shortContent }</p>
    </td>
  </c:forEach>
  </tr>
</table>
<script type="text/javascript" src="${basePath}js/ux/front/destination/moredests.js"></script>
<%@include file="/front/footer.jsp"  %>
</body>
</html>

