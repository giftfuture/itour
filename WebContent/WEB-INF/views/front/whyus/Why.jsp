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
<title>Why Us</title>
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
	font-size: 30px;
	color: #666666;
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
.STYLE10 {font-family: "微软雅黑"; font-size: 30px; color: #666666; }
.STYLE148 {
	color: #990000;
	font-family: "微软雅黑";
}
.STYLE17 {font-family: "微软雅黑"; font-size: 36px; font-weight: bold; color: #990000; }
.STYLE19 {	color: #990000;
	font-family: "微软雅黑";
	font-weight: bold;
}
.STYLE13 {font-size: 36px}
-->
</style>
</head>

<body>
<jsp:include page="/front/header.jsp" />
<table width="1140" border="0" align="center" cellpadding="30" cellspacing="0">
  <tr>
    <td class="STYLE17"><div align="center"><span class="STYLE19"><span class="STYLE13">Why Us </span></span></div></td>
  </tr>
</table>
<table width="1140" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><img src="images/frame1-1.gif" width="1140" height="7" /></td>
  </tr>
  <tr>
    <td background="images/frame1-2.gif"><table width="1100" border="0" align="center" cellpadding="10" cellspacing="0">
      <tr>
        <td valign="top"><table width="1050" border="0" align="center" cellpadding="0" cellspacing="0">

          <tr>
            <td class="STYLE10">&nbsp;</td>
          </tr>
          <tr>
            <td><p class="STYLE148"> ** 旅行中最難的部分，應該是收拾行李吧.....😊 **</p>
                <p class="STYLE148">許多年前，中國的旅遊市場充斥著良莠不齊的商品， 其中甚至存在著不少的旅遊陷阱，旅人非但沒有自主性，還可能成為待宰的羔羊，趁興而出，敗興而返的情況屢見不鮮...<br />
                  這種狀況令我們憂心忡忡， 生命本該用在追求美好的事物上，而非浪費在後悔與抱怨中呀！</p>
              <p class="STYLE148">秉持著這種想法，** 主角旅行 ** 誕生了。</p>
              <p class="STYLE148">我們的信念是~ <strong>旅人才是旅行的主角</strong></p>
              <p class="STYLE148">人生是由大大小小不同的旅程串連而成的， 我們覺得每次的旅程，旅人的角色都應該凌駕於所有之上，每次的旅程都應該獨特而美好，沒有勉強，沒有委曲求全 ... 您，是主人，一切以您的想法及需求為依歸。</p>
              <p class="STYLE148">我們衷心希望，每一個旅途都能為您創造幸福而美好的回憶 。將來，不管您憶起哪一個片段，都能打從心底泛起笑顏。</p>
              <p class="STYLE148">主角旅行是隶属于中旅旗下的专业定制旅行服务团队。 我們有強大的信心來履行對您的承諾，因為我們有</p>
              <p class="STYLE148"><strong>三大保證 :</strong></p>
              <p class="STYLE148">1. 主角旅行隶属中旅旗下，正规公司更有保障<br />
                2. 十多年专业定制旅行服务经验，更懂您的需求 <br />
                3. 资深旅行定制师，熟悉旅行线路，为您设计独一无二的旅程</p>
              <p class="STYLE148"><strong>三大好處 :</strong><br />
                1. 网上信息良莠不齐，节约您宝贵的时间<br />
                2. 只需提出您的想法，剩下的我们帮你搞定<br />
                3. 小团出行，灵活机动，满足个性需求</p>
              <p class="STYLE148"><strong>二大優點：</strong><br />
                1. 中旅系统采购，具有价格优势<br />
                2. 只有美景，絕不购物，杜绝旅游陷阱</p>
              <p class="STYLE148">我們的旅遊品質也絕不馬虎 :</p>
              <p class="STYLE148">。吃：品嚐地道美食<br />
                。住：我们更了解各地酒店的真实情况<br />
                。行：单独安排用车，灵活方便<br />
                。游：深入腹地，探索鲜为人知的美景 <br />
                ※※ 更重要的是，我們会在您的预算内为您作最优的搭配</p>
              <p class="STYLE148">** 選擇我們 ，帶著遇見幸福的 心 ，來與自然邂逅吧！**<br />
                </p>
              <p class="STYLE148"></p></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><img src="images/frame1-3.gif" width="1140" height="7" /></td>
  </tr>
</table>
<br />
<jsp:include page="/front/footer.jsp" />
</body>
</html>
