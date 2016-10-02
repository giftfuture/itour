<%@ page language="java" import="java.lang.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%    
String path = request.getContextPath();    
// 获得本项目的地址(例如: http://localhost:8080/MyApp/)赋值给basePath变量    
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";    
// 将 "项目路径basePath" 放入pageContext中，待以后用EL表达式读出。    
pageContext.setAttribute("basePath",basePath);    
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href=" <%=basePath%>">
 <meta http-equiv="pragma" content="no-cache">  
 <meta http-equiv="cache-control" content="no-cache">  
 <meta http-equiv="expires" content="0">      
 <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
 <meta http-equiv="description" content="This is my page"> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
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
<table width="200" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="images/top-menu.jpg" width="1350" height="153" /></td>
  </tr>
</table>
<table width="1140" border="0" align="center" cellpadding="15" cellspacing="0">
  <tr>
    <td>目的地》四川》四姑娘山》四姑娘山长坪沟</td>
  </tr>
</table>
<table width="1140" border="0" align="center" cellpadding="15" cellspacing="0">
  <tr>
    <td><span class="STYLE5">四川</span></td>
    <td>12个目的地 | 显示更多</td>
  </tr>
</table>
<table width="1000" border="0" align="center" cellpadding="9" cellspacing="0">
  <tr>
    <td rowspan="2"><img src="images/Route001.jpg" width="550" height="309" /></td>
    <td><img src="images/Route001.jpg" width="262" height="145" /></td>
    <td><img src="images/Route001.jpg" width="262" height="145" /></td>
  </tr>
  <tr>
    <td><img src="images/Route001.jpg" width="262" height="145" /></td>
    <td><img src="images/Route001.jpg" width="262" height="145" /></td>
  </tr>
  <tr>
    <td valign="top">四川，简称“川”或“蜀”，省会成都，位于中国大陆西南腹地，东部为川东平行岭谷和川中丘陵，中部为四川盆地和成都平原，西部为川西高原，与陕西、贵州、云南、西藏、青海、甘肃、重庆诸省市交界，是国宝大熊猫的故乡。<br />
      四川是“中国西部综合交通枢纽”、“中国西部经济发展高地”，经济总量连续多年位居西部第一[1]  。<br />
      四川是中国重要的经济、工业、农业、军事、旅游、文化大省。省会成都在1993年被国务院确定为中国西南地区的科技、商贸、金融中心和交通、通信枢纽[2]  。成都双流国际机场是中国第四大航空港[3]  。<br />
      中国人民解放军五大战区之一的西部战区机关驻四川省成都市[4]  。<br />
      四川全省共辖1个副省级市、17个地级市、3个自治州，其中包括51个市辖区、16个县级市、112个县、4个自治县。截至2015年底，四川省户籍人口9132.6万人，常住人口8204万人[5]  。<br />
      四川现拥有已探明储量的矿产资源132种，占全国资源种数的70%，为全国的资源、能源大省。四川油气田已探明天然气储量超过3.8万亿立方米，位居全国第一，是川气东送的起点[6]  。因物产丰富，资源富集而被誉为“天府之国”。<br />
    四川是世界自然与文化遗产最多的省份，现有世界自然与文化遗产5处，列入联合国《人与生物圈计划》的自然保护区4处，世界地质公园2处。以及国家5A级景区10处，国家4A级景区130处。中国优秀旅游城市21座，中国历史文化名城8座，全国重点文物保护单位230处，中国最佳旅游城市一座。</td>
    <td valign="top">&nbsp;</td>
    <td valign="top">&nbsp;</td>
  </tr>
</table>
<table width="1140" border="0" align="center" cellpadding="15" cellspacing="0">
  <tr>
    <td><span class="STYLE5">四川</span></td>
  </tr>
</table>
<table border="0" align="center" cellpadding="9" cellspacing="0">
  <tr>
    <td rowspan="2"><img src="images/Route001.jpg" width="550" height="309" /></td>
    <td><img src="images/Route001.jpg" width="262" height="145" /></td>
    <td><img src="images/Route001.jpg" width="262" height="145" /></td>
  </tr>
  <tr>
    <td><img src="images/Route001.jpg" width="262" height="145" /></td>
    <td><img src="images/Route001.jpg" width="262" height="145" /></td>
  </tr>
</table>
<table width="1140" border="0" align="center" cellpadding="15" cellspacing="0">
  <tr>
    <td><span class="STYLE5">四川</span></td>
  </tr>
</table>
<table border="0" align="center" cellpadding="9" cellspacing="0">
  <tr>
    <td rowspan="2"><img src="images/Route001.jpg" width="550" height="309" /></td>
    <td><img src="images/Route001.jpg" width="262" height="145" /></td>
    <td><img src="images/Route001.jpg" width="262" height="145" /></td>
  </tr>
  <tr>
    <td><img src="images/Route001.jpg" width="262" height="145" /></td>
    <td><img src="images/Route001.jpg" width="262" height="145" /></td>
  </tr>
</table>
<table width="1140" border="0" align="center" cellpadding="15" cellspacing="0">
  <tr>
    <td><span class="STYLE5">四川</span></td>
  </tr>
</table>
<table border="0" align="center" cellpadding="9" cellspacing="0">
  <tr>
    <td rowspan="2"><img src="images/Route001.jpg" width="550" height="309" /></td>
    <td><img src="images/Route001.jpg" width="262" height="145" /></td>
    <td><img src="images/Route001.jpg" width="262" height="145" /></td>
  </tr>
  <tr>
    <td><img src="images/Route001.jpg" width="262" height="145" /></td>
    <td><img src="images/Route001.jpg" width="262" height="145" /></td>
  </tr>
</table>
<table width="1140" border="0" align="center" cellpadding="15" cellspacing="0">
  <tr>
    <td><span class="STYLE5">四川</span></td>
  </tr>
</table>
<table border="0" align="center" cellpadding="9" cellspacing="0">
  <tr>
    <td rowspan="2"><img src="images/Route001.jpg" width="550" height="309" /></td>
    <td><img src="images/Route001.jpg" width="262" height="145" /></td>
    <td><img src="images/Route001.jpg" width="262" height="145" /></td>
  </tr>
  <tr>
    <td><img src="images/Route001.jpg" width="262" height="145" /></td>
    <td><img src="images/Route001.jpg" width="262" height="145" /></td>
  </tr>
</table>
<table width="1140" border="0" align="center" cellpadding="15" cellspacing="0">
  <tr>
    <td><span class="STYLE5">四川</span></td>
  </tr>
</table>
<table border="0" align="center" cellpadding="9" cellspacing="0">
  <tr>
    <td rowspan="2"><img src="images/Route001.jpg" width="550" height="309" /></td>
    <td><img src="images/Route001.jpg" width="262" height="145" /></td>
    <td><img src="images/Route001.jpg" width="262" height="145" /></td>
  </tr>
  <tr>
    <td><img src="images/Route001.jpg" width="262" height="145" /></td>
    <td><img src="images/Route001.jpg" width="262" height="145" /></td>
  </tr>
</table>
<br />
<table width="1140" border="0" align="center" cellpadding="15" cellspacing="0">
  <tr>
    <td><span class="STYLE5">四川</span></td>
  </tr>
</table>
<table border="0" align="center" cellpadding="9" cellspacing="0">
  <tr>
    <td rowspan="2"><img src="images/Route001.jpg" width="550" height="309" /></td>
    <td><img src="images/Route001.jpg" width="262" height="145" /></td>
    <td><img src="images/Route001.jpg" width="262" height="145" /></td>
  </tr>
  <tr>
    <td><img src="images/Route001.jpg" width="262" height="145" /></td>
    <td><img src="images/Route001.jpg" width="262" height="145" /></td>
  </tr>
</table>
<br />
<table width="1140" border="0" align="center" cellpadding="5" cellspacing="0">
  <tr>
    <td width="48" bgcolor="#CCCCCC"><img src="images/search.png" width="48" height="48" /></td>
    <td width="61" bgcolor="#CCCCCC"><div align="center" class="STYLE2">快速搜索</div></td>
    <td width="179" bgcolor="#CCCCCC" class="f14-gao1">旅游区域：
      <label>
        <select name="select">
          <option>全部區域</option>
          <option>四川</option>
          <option>西藏</option>
          <option>新疆</option>
          <option>云南</option>
        </select>
        <br />
        旅行方式：
        <select name="select3">
          <option selected="selected">-所有-</option>
          <option>观光摄影</option>
          <option>徒步</option>
          <option value=" ">登山</option>
          <option>自驾</option>
        </select>
        <br />
        假期时间：<a href="#">
          <select name="select2">
            <option selected="selected">-所有-</option>
            <option>1-5天</option>
            <option>6-9天</option>
            <option value=" ">10-15天</option>
            <option>16天+</option>
          </select>
        </a></label></td>
    <td width="812" bgcolor="#CCCCCC" class="f14-gao1"><input type="submit" name="Submit" value="Search" /></td>
  </tr>
</table>
<p>&nbsp;</p>
<table width="1140" border="0" align="center" cellpadding="20" cellspacing="0" class="lefttxt">
  <tr>
    <td width="611" height="105" valign="top" bgcolor="#666666"><table width="1100" height="60" border="0" align="center" cellpadding="0" cellspacing="0">
      <tbody>
        <tr>
          <td width="883" height="30" bgcolor="#EFEFEF"><div align="center">www.iTours.com.cn</div></td>
        </tr>
        <tr>
          <td height="30" bgcolor="#EFEFEF"><div align="center">Add: Huaqiao Building, #15 South Three Sections of Yihuan Road, Chengdu, Sichuan, China<br />
            Tel: +86-28-85580038 / 85562905?<br />
            E-mail: info@itours.com.cn </div></td>
        </tr>
      </tbody>
    </table></td>
  </tr>
</table>
</body>
</html>

