<%@ page language="java" import="java.lang.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%    
String path = request.getContextPath();    
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";    
pageContext.setAttribute("basePath",basePath);    
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
<meta name="keywords" content="Southwest China Adventures:Trekking & Hiking , Peak Climbing , Off raod　overland, Motercycle tours ">
<meta name="description" content="Southwest China Adventures Trekking,Southwest China Peak Climbing,Southwest China Off raod,Southwest China Motercycle tours">
<script type="text/javascript" src="${basePath}Scripts/flashobject.js"></script>
<script src="${basePath}Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
<link href="${basePath}css/qzx.css" rel="stylesheet" type="text/css" />
<link href="${basePath}css/bodylink.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body {
	background-color: #993333;
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
.STYLE126 {font-size: 14px}
.STYLE129 {
	color: #000000;
	font-weight: bold;
}
.STYLE130 {color: #000000}
.STYLE134 {font-size: 24px}
-->
</style>
</head>
<body>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
   <tr>
    <td>
		 <jsp:include page="/front/header.jsp" />
    </td>
  </tr>
<!--   <tr>
    <td width="10" background="image/shadowleft.gif"><img src="image/shadowleft.gif" width="10" height="8" /></td>
    <td valign="top" class="title"><table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="845" height="40"><p class="righttxt"><strong><font size="+3">Southwest-China-Adventures.com</font> </strong></p></td>
        <td width="115"><img src="img-test/China.jpg" width="40" height="24" /><img src="img-test/ok.gif" width="31" height="24" /><img src="img-test/Belgium.jpg" width="32" height="24" /></td>
      </tr>
    </table></td>
    <td width="10" background="image/shadowright.gif"><img src="image/shadowright.gif" width="10" height="8" /></td>
  </tr> -->
</table>
<!-- <table width="996" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  DWLayoutTable
  <tr>
    <td width="10" height="16" background="image/shadowleft.gif"><img src="image/shadowleft.gif" width="10" height="8" /></td>
    <td width="758" valign="top" class="title">DWLayoutEmptyCell&nbsp;</td>
    <td width="218" valign="bottom" class="righttxt">language: English | French </td>
    <td width="10" background="image/shadowright.gif"><img src="image/shadowright.gif" width="10" height="8" /></td>
  </tr>
  <tr>
    <td background="image/shadowleft.gif">DWLayoutEmptyCell&nbsp;</td>
    <td colspan="2" valign="top"><table width="960" height="23" border="0" align="center" cellpadding="0" cellspacing="0" class="title">
      <tr>
        <td width="623" height="30" bgcolor="#EFEFEF"><div align="center" class="STYLE134"><a href="trekking.html">Trekking</a>　 |　 <a href="offroad.html">Off road</a>　| 　 <a href="Classic.html">Classic Tours</a>　  |   　<a href="Customized-Tours.html">Customized Tours </a><a href="http://www.itours.com.cn/booking/booking-swca.php"></a>　| 　<a href="aboutus.html">Why Us</a></div></td>
      </tr>
    </table></td>
    <td background="image/shadowright.gif">DWLayoutEmptyCell&nbsp;</td>
  </tr>
</table> -->
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <!--DWLayoutTable-->
  <tr>
    <td width="10" background="${basePath}images/shadowleft.gif"><img src="${basePath}images/shadowleft.gif" width="10" height="8" /></td>
    <td class="rightlinks"><table width="960" border="0" align="center" cellpadding="0" cellspacing="0" class="lefttxt">
        <tr> 
          <td colspan="2"> Southwest-China-Adventures &gt; Trekking &gt;</td>
        </tr>
      </table>
      <table width="960" border="0" align="center" cellpadding="0" cellspacing="5">
        <tr> 
          <td> <h1> ${item.item }</h1></td>
        </tr>
      </table>
      <table width="960" border="0" align="center" cellpadding="0" cellspacing="10" bgcolor="#CCCCCC" class="lefttxt">

        <tr>
          <td width="600" valign="top"><img src="${basePath}images/img/yading-03.jpg" width="600" height="338" /></td>
          <td width="330" valign="middle"><p class="STYLE126"><span class="STYLE129">线路特色：</span><br />
            <strong><!-- *民族风情：母系氏族摩梭族，藏族风情<br />
          *沿线人迹罕致<br />
          *亚丁的三座雪山被誉为中国最美的雪山<br />
          *也可根据时间调整抵达或离开的城市<br />
          *可加入丽江、虎跳峡、梅里雪山等地的观光或徒步，依你的情况来调整日程。 --> ${item.feature }</strong></p>
            <p class="STYLE126"><span class="STYLE129">天数：</span> ${item.rcdDays}天 (徒步8天，此行程可调整为13-25天&nbsp;)
            　　<span class="STYLE129"><br />
难度：</span>${item.difficultyRate} 　　　　<br />
<span class="STYLE129">最高海拔：</span> ${item.mileage }米<span class="STYLE129"><br />
季节：</span>${item.season}<br />
<span class="STYLE129">人数：</span>${item.recommandCrowd}</p>
        <!--   <p class="rightlinks"><a href="http://www.itours.com.cn/booking/booking-swca.php"><strong>开始私人定制</strong></a>&gt;&gt;</p> -->
          </td>
        </tr>
      </table>
      <table width="960" border="0" align="center" cellpadding="0" cellspacing="10" class="lefttxt">
        <tr> 
          <td width="620" valign="top"><p><br />
           ${item.item}</p>
            <p>${item.content } </p>
            <p><span class="right">行程 ：</span><br />
            ${item.itinerary }
            <p><br />
              <img src="${basePath}images/img/yading-05.jpg" width="600" height="338" /></p>
            <p><img src="${basePath}images/img/yading-02.jpg" width="600" height="338" /></p>
            <p><img src="${basePath}images/img/yading-04.jpg" width="600" height="338" /></p>
            <p><img src="${basePath}images/img/yading-01.jpg" width="600" height="338" /><br />
            </p></td>
          <td valign="top">行程地图：<br />
            <img src="${basePath}images/img/EYmap_ChinaTours_EBC.jpg" width="328" height="239" /> 
            <br />
            <br />
            -------------------------------------------------------------------------------<br />
            <br />
            <p><strong><span class="STYLE130">配备:</span><br />
				${item.equip}
             </strong></p>
            <p><span class="STYLE130"><strong>不包括:</strong></span><br />
             	${item.exclude }
              <br />
              </p>
              <p>
              -------------------------------------------------------------------------------<br />
              <br />
              <span class="STYLE130"><strong>建议装备：</strong></span><br />
              ${item.recommandEquip }
            </p>
            -------------------------------------------------------------------------------<br />
            <br />
            <strong>Fill in this form and you'll hear back from us in 48 hrs!：</strong><br />
            First Name:
            <input type="text" name="textfield" />
            <br />
            Last　Name: 
            <input type="text" name="textfield2" />
            <br />
            Number in my party:
            <input name="textfield3" type="text" size="10" />
            <br />
            Preferred Date:
            <input name="textfield4" type="text" size="15" />
            <br />
            Phone:
            <input type="text" name="textfield5" />
            <br />
            Email: <input type="text" name="textfield6" />
            <p>Do you have any specific requests or questions?<br />
              <textarea name="textarea" cols="45" rows="5"></textarea>
              <br />
              <input type="submit" name="Submit" value="提交" />
              <input type="reset" name="Submit2" value="重置" />
              <br />
              <br />
            -------------------------------------------------------------------------------<br />
            <br />
            相关线路：<br />
            【Trekking】贡嘎小环线5日<br />
            【Off road】大香格里拉九日游 <br />
            ..........</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p><br />
            </p></td>
        </tr>
        <tr> 
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
      </table></td>
    <td width="10" background="${basePath}images/shadowright.gif"><img src="${basePath}images/shadowright.gif" width="10" height="8" /></td>
  </tr>
</table>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <!--DWLayoutTable-->
  <tr>
    <td width="10" background="${basePath}images/shadowleft.gif"><img src="${basePath}images/shadowleft.gif" width="10" height="8" /></td>
    <td class="rightlinks"><!--DWLayoutEmptyCell-->&nbsp;</td>
    <td width="10" background="${basePath}images/shadowright.gif"><img src="${basePath}images/shadowright.gif" width="10" height="8" /></td>
  </tr>
</table>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <!--DWLayoutTable-->
  <tr>
    <td width="10" height="16" background="${basePath}images/shadowleft.gif"><img src="${basePath}images/shadowleft.gif" width="10" height="8" /></td>
    <td width="200" valign="top" class="title"><!--DWLayoutEmptyCell-->&nbsp;</td>
    <td valign="bottom"><!--DWLayoutEmptyCell-->&nbsp;</td>
    <td width="10" background="${basePath}images/shadowright.gif"><img src="${basePath}images/shadowright.gif" width="10" height="8" /></td>
  </tr>
  <tr>
    <td background="${basePath}images/shadowleft.gif"><!--DWLayoutEmptyCell-->&nbsp;</td>
    <td colspan="2" valign="top">
    <table width="100%" height="60" border="0" align="center" cellpadding="0" cellspacing="0" class="title">
      <tr>
        <td width="623" height="30" bgcolor="#EFEFEF"><div align="center">Southwest-China-Adventures.com</div></td>
      </tr>
      <tr>
        <td height="30" bgcolor="#EFEFEF" class="TP05"><div align="center"> Add: Huaqiao Building, #15 South Three Sections of Yihuan Road, Chengdu, Sichuan, China<br />
          Tel: +86-28-85580038 / 85562905 <br />
          E-mail: olivierwagemans@hotmail.com </div></td>
      </tr>
    </table>
        <br /></td>
    <td background="${basePath}images/shadowright.gif"><!--DWLayoutEmptyCell-->&nbsp;</td>
  </tr>
</table>
<jsp:include page="/front/footer.jsp" />
</body>
</html>
