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
<title>Southwest-China-Adventures.com</title>
<meta name="keywords" content="Southwest China Adventures:Trekking & Hiking , Peak Climbing , Off raod¡¡overland, Motercycle tours ">
<meta name="description" content="Southwest China Adventures Trekking,Southwest China Peak Climbing,Southwest China Off raod,Southwest China Motercycle tours">
<script type="text/javascript" src="Scripts/flashobject.js"></script>
<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
<link href="css/qzx.css" rel="stylesheet" type="text/css" />
<link href="css/bodylink.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body {
	background-color: #FFFFFF;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
}
.STYLE134 {font-size: 24px}
.STYLE144 {color: #FFFFFF}
.STYLE144 {font-size: 16px;
	font-weight: bold;
	font-family: Arial, Helvetica, sans-serif;
	color: #FFFFFF;
}
.STYLE145 {font-size: 16px; font-weight: bold; font-family: Arial, Helvetica, sans-serif;}
-->
</style>
</head>
<BODY>
<table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="189" height="48"><img src="image/header_00.jpg" width="160" height="96" /></td>
    <td width="771"><div align="right"> How to Pay |  News |<br />
      Phone 02899877848778 Mail£ºifno@itours.com.cn</div></td>
  </tr>
</table>
<table width="960" height="30" border="0" align="center" cellpadding="0" cellspacing="0" class="title">
  <tr>
    <td width="623" height="30" background="image/menu-back1.gif"><div align="center" class="right">
      <table border="0" align="center" cellpadding="10" cellspacing="0">
        <tr>
          <td class="STYLE144">Home</td>
          <td class="headline"><a href="Hiking-trekking-china.html"><span class="STYLE144">Hiking &amp; Trekking</span></a></td>
          <td class="headline"><span class="STYLE144">Self-drive</span></td>
          <td class="headline"><span class="STYLE144">China Tours </span></td>
          <td class="headline"><span class="STYLE144">Tailor-made</span></td>
          <td><span class="STYLE145"><span class="STYLE144">Feedbacks</span></span></td>
          <td class="STYLE145"><span class="STYLE144">Why Us </span></td>
        </tr>
      </table>
    </div></td>
  </tr>
</table>
<table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><img src="img-test/ad-01.jpg" width="960" height="360" /></td>
  </tr>
</table>
Beijing<br />
Guilin<br />
Zhangjiajie<br />
Huangshan<br />
Shanghai<br />
Xi'an<br />
Chengdu<br />
Tibet<br />
Yunnan
<table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="576"><p class="righttxt">&nbsp;</p></td>
    <td width="384">&nbsp;</td>
  </tr>
  <tr>
    <td><p><img src="img-test/001.jpg" width="550" height="310" /></p></td>
    <td>WHY US<br />
        <br />
      *Chinese-Belgian team that well understands the desires and expectations of Western travellers. <br />
      <br />
      *Licensed travel agents<br />
      <br />
      *Upper-market of the tourism industry.<br />
      <br />
      *Underdeveloped far-flung regions.<br />
      <br />
      <a href="aboutus.html">More &gt;&gt; </a></td>
  </tr>
</table>
<br />
<br />
<table width="960" height="60" border="0" align="center" cellpadding="0" cellspacing="0" class="title">
  <tr>
    <td width="623" height="30" bgcolor="#EFEFEF"><div align="center">Southwest-China-Adventures.com</div></td>
  </tr>
  <tr>
    <td height="30" bgcolor="#EFEFEF" class="TP05"><div align="center"> Add: Huaqiao Building, #15 South Three Sections of Yihuan Road, Chengdu, Sichuan, China<br />
      Tel: +86-28-85580038 / 85562905 <br />
      E-mail: olivierwagemans@hotmail.com </div></td>
  </tr>
</table>
</body>
</html>
