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
.STYLE1 {color: #FF0000}
.STYLE2 {font-family: "黑体"; font-size: 24px; color: #990000; }
.STYLE3 {
	color: #990000;
	font-weight: bold;
}
.STYLE6 {	color: #FFFFFF;
	font-weight: bold;
}
.STYLE7 {color: #CCCCCC}
.STYLE9 {font-size: 14px; line-height: 30px; color: #333333; font-family: "微软雅黑"; }
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
<table width="1140" border="0" align="center" cellpadding="5" cellspacing="0">
  <tr>
    <td width="297" valign="top">
      
      <div align="left">
        <table width="220" border="0" cellspacing="0" cellpadding="5">
          <tr>
            <td height="30" bgcolor="#990000"><div align="center" class="STYLE6">旅遊目的地</div></td>
          </tr>
          <tr>
            <td><table width="220" border="0" align="center" cellpadding="4" cellspacing="1">
                <tr>
                  <td width="10" bgcolor="#CCCCCC"><img src="images/arrow4-2.gif" width="10" height="10" /></td>
                  <td width="174" bgcolor="#CCCCCC"><strong>四川</strong></td>
                </tr>
                <tr>
                  <td bgcolor="#f0f0f0"><span class="STYLE7"></span></td>
                  <td bgcolor="#f0f0f0">九寨沟<br />
                    四姑娘山双桥沟<br />
                    四姑娘山长坪沟<br />
                    四姑娘山海子沟<br />
                    亚丁<br />
                    海螺沟<br />
                    五须海<br />
                    九寨沟<br />
                    四姑娘山双桥沟<br />
                    四姑娘山长坪沟<br />
                    四姑娘山海子沟<br />
                    亚丁<br />
                    海螺沟<br />
                    五须海<br />
                  。。。</td>
                </tr>
                <tr>
                  <td bgcolor="#CCCCCC"><img src="images/arrow4-1.gif" width="10" height="10" /></td>
                  <td bgcolor="#CCCCCC"><strong>西藏</strong></td>
                </tr>
                <tr>
                  <td bgcolor="#CCCCCC"><img src="images/arrow4-1.gif" width="10" height="10" /></td>
                  <td bgcolor="#CCCCCC"><strong>新疆</strong></td>
                </tr>
                <tr>
                  <td bgcolor="#CCCCCC"><img src="images/arrow4-1.gif" width="10" height="10" /></td>
                  <td bgcolor="#CCCCCC"><strong>云南</strong></td>
                </tr>
            </table></td>
          </tr>
        </table>
        <br />
        <span class="STYLE1">备注：向下面这个图片用灰线隔一下</span><br />
      <img src="images/未标题-2 拷贝.jpg" width="220" height="374" /></div></td>
    <td width="843" valign="top" bgcolor="#f0f0f0"><table border="0" cellspacing="0" cellpadding="5">
      <tr>
        <td><span class="h1-black">四姑娘山长坪沟</span></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td valign="top"><table width="600" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="600"><img src="images/Route001.jpg" width="600" height="338" /></td>
            </tr>
            <tr>
              <td height="69"><table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><img src="images/arrow01-1.gif" width="20" height="40" /></td>
                    <td><div align="center"><img src="images/Route001.jpg" width="100" height="55" /></div></td>
                    <td><div align="center"><img src="images/Route001.jpg" width="100" height="55" /></div></td>
                    <td><div align="center"><img src="images/Route001.jpg" width="100" height="55" /></div></td>
                    <td><div align="center"><img src="images/Route001.jpg" width="100" height="55" /></div></td>
                    <td><div align="center"><img src="images/Route001.jpg" width="100" height="55" /></div></td>
                    <td><img src="images/arrow01-2.gif" width="20" height="40" /></td>
                  </tr>
              </table></td>
            </tr>
          </table>
            <span class="STYLE9"><br />
            <br />
            <strong>四姑娘山长坪沟：</strong><br />
              长坪沟全长29公里，面积约为100平方公里，峡谷长天、平缓悠长，四姑娘山就坐落在沟内16公里处。景区内有古柏幽道、喇嘛寺、干海子及高数十米的飞瀑，并有奇石之景。<br />
              <br />
              长坪沟主要以森林、峡谷及峡谷顶上的雪山组成，景色比较好，但景区内只供马匹及人行走，不通车，所以以骑马为其主要特色。如果愿意，还可背上帐篷在长坪沟内的草地上宿营。需要注意，进入沟中最好自带干粮和矿泉水，不太好找吃饭的地方。<br />
              长坪沟全长29公里，面积约为100平方公里，峡谷长天、平缓悠长，四姑娘山就坐落在沟内16公里处。景区内有古柏幽道、喇嘛寺、干海子及高数十米的飞瀑，并有奇石之景。<br />
              <br />
              长坪沟主要以森林、峡谷及峡谷顶上的雪山组成，景色比较好，但景区内只供马匹及人行走，不通车，所以以骑马为其主要特色。如果愿意，还可背上帐篷在长坪沟内的草地上宿营。需要注意，进入沟中最好自带干粮和矿泉水，不太好找吃饭的地方。<br />
              长坪沟全长29公里，面积约为100平方公里，峡谷长天、平缓悠长，四姑娘山就坐落在沟内16公里处。景区内有古柏幽道、喇嘛寺、干海子及高数十米的飞瀑，并有奇石之景。<br />
              <br />
              长坪沟主要以森林、峡谷及峡谷顶上的雪山组成，景色比较好，但景区内只供马匹及人行走，不通车，所以以骑马为其主要特色。如果愿意，还可背上帐篷在长坪沟内的草地上宿营。需要注意，进入沟中最好自带干粮和矿泉水，不太好找吃饭的地方。<br />
              长坪沟全长29公里，面积约为100平方公里，峡谷长天、平缓悠长，四姑娘山就坐落在沟内16公里处。景区内有古柏幽道、喇嘛寺、干海子及高数十米的飞瀑，并有奇石之景。</span></td>
        <td valign="top"><table width="280" border="0" cellspacing="0" cellpadding="5">
            <tr>
              <td width="30"><img src="images/ticket.png" width="30" height="30" /></td>
              <td width="286"><span class="STYLE3">四姑娘山长坪沟门票信息（CNY）：</span></td>
            </tr>
          </table>
            <table width="280" border="0" cellpadding="5" cellspacing="2" class="f12-gao1">
              <tr>
                <td width="115" bgcolor="#f0f0f0"><div align="center"><strong>淡季</strong><br />
                  11月16日~2月28日</div></td>
                <td width="197">门票：50元<br />
                  观光车：20元<br />
                  户外门票：150元</td>
              </tr>
              <tr>
                <td bgcolor="#f0f0f0"><div align="center"><strong>旺季</strong><br />
                  3月1日~11月15日</div></td>
                <td>门票：70元<br />
                  观光车：20元<br />
                  户外门票：150元</td>
              </tr>
            </table>
          <br />
            <br />
            <table width="280" border="0" cellspacing="0" cellpadding="5">
              <tr>
                <td width="49"><span class="h2-24"><img src="images/route2.png" width="48" height="48" /></span></td>
                <td width="951"><span class="STYLE3">相关旅游线路</span>：</td>
              </tr>
            </table>
          <table width="280" border="0" cellpadding="5" cellspacing="0" class="f14-gao1">
              <tr>
                <td width="66"><img src="images/Route001.jpg" width="91" height="50" /></td>
                <td width="384" class="f12-gao1">【徒步】四姑娘山海子沟徒步、长坪沟穿越毕棚沟8日</td>
              </tr>
              <tr>
                <td><img src="images/Route001.jpg" width="91" height="50" /></td>
                <td>【徒步】四姑娘山海子沟徒步8日</td>
              </tr>
              <tr>
                <td><img src="images/Route001.jpg" width="91" height="50" /></td>
                <td>【徒步】四姑娘山海子沟徒步、长坪沟穿越毕棚沟8日</td>
              </tr>
              <tr>
                <td><img src="images/Route001.jpg" width="91" height="50" /></td>
                <td>【徒步】四姑娘山海子沟徒步、长坪沟穿越毕棚沟8日</td>
              </tr>
              <tr>
                <td><img src="images/Route001.jpg" width="91" height="50" /></td>
                <td>【徒步】四姑娘山海子沟徒步、长坪沟穿越毕棚沟8日</td>
              </tr>
              <tr>
                <td><a href="#">More》》</a></td>
                <td>&nbsp;</td>
              </tr>
          </table></td>
      </tr>
    </table></td>
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
<br />
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
