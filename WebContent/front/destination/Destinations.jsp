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
.STYLE5 {font-family: "黑体"; font-size: 36px; font-weight: bold; color: #990000; }
.STYLE6 {
	color: #FFFFFF;
	font-weight: bold;
}
.STYLE7 {color: #FF0000}
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
<br />
<table width="1140" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="275" valign="top"><div align="center">
      <table width="230" border="0" cellspacing="0" cellpadding="5">
          <tr>
            <td height="30" bgcolor="#990000"><div align="center" class="STYLE6">旅遊目的地</div></td>
          </tr>
          <tr>
            <td><table width="200" border="0" align="center" cellpadding="4" cellspacing="0">
                <tr>
                  <td width="10"><img src="images/arrow4-2.gif" width="10" height="10" /></td>
                  <td width="174"><strong>四川</strong></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>九寨沟<br />
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
                  <td><img src="images/arrow4-1.gif" width="10" height="10" /></td>
                  <td><strong>西藏</strong></td>
                </tr>
                <tr>
                  <td><img src="images/arrow4-1.gif" width="10" height="10" /></td>
                  <td><strong>新疆</strong></td>
                </tr>
                <tr>
                  <td><img src="images/arrow4-1.gif" width="10" height="10" /></td>
                  <td><strong>云南</strong></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
              </table></td>
          </tr>
        </table>
        <table width="230" border="0" align="center" cellpadding="5" cellspacing="0">
          <tr>
            <td width="48" valign="middle" bgcolor="#CCCCCC"><div align="center" class="STYLE2"><img src="images/search.png" width="48" height="48" /></div></td>
            <td width="162" valign="middle" bgcolor="#CCCCCC"><span class="STYLE2">线路搜索</span></td>
          </tr>
          <tr>
            <td colspan="2" bgcolor="#CCCCCC"><span class="f14-gao1">旅游区域：
              <label>
                  <select name="select5">
                    <option>区域：</option>
                    <option>四川</option>
                    <option>西藏</option>
                    <option>新疆</option>
                    <option>云南</option>
                  </select>
                  <select name="select5">
                    <option>四姑娘山</option>
                    <option>川西</option>
                    <option>大香格里拉</option>
                  </select>
                  <br />
                旅行方式：
                <select name="select5">
                  <option selected="selected">-所有-</option>
                  <option>观光摄影</option>
                  <option>徒步</option>
                  <option value=" ">登山</option>
                  <option>自驾</option>
                </select>
                <br />
                假期时间：<a href="#">所有</a> <a href="#">1-5天</a> <a href="#">6-9天</a> <a href="#">10-15天</a> <a href="#">16天+</a></label>
            </span></td>
          </tr>
          <tr>
            <td colspan="2" bgcolor="#CCCCCC"><span class="f14-gao1">
              <input type="submit" name="Submit22" value="Search" />
            </span></td>
          </tr>
        </table>
        <br />
        <span class="STYLE7">备注：向下面这个图片用灰线隔一下</span><br />
        <img src="images/未标题-2 拷贝.jpg" width="229" height="374" /></div></td>
    <td width="865" valign="top"><table width="835" border="0" align="center" cellpadding="10" cellspacing="0" bgcolor="#f0f0f0">
      <tr>
        <td width="648"><span class="STYLE5">四川</span></td>
        <td width="432"><div align="right">12个目的地 | <a href="Destinations-sc.html">显示更多</a></div></td>
      </tr>
    </table>
      <table border="0" align="center" cellpadding="5" cellspacing="0">
      <tr>
        <td rowspan="2"><img src="images/Route001.jpg" width="420" height="233" /></td>
        <td><img src="images/Route001.jpg" width="197" height="110" /></td>
        <td><img src="images/Route001.jpg" width="197" height="110" /></td>
      </tr>
      <tr>
        <td><img src="images/Route001.jpg" width="197" height="110" /></td>
        <td><img src="images/Route001.jpg" width="197" height="110" /></td>
      </tr>
    </table>
      <p>&nbsp;</p>
      <table width="835" border="0" align="center" cellpadding="10" cellspacing="0" bgcolor="#f0f0f0">
        <tr>
          <td width="648"><span class="STYLE5">西藏</span></td>
          <td width="432"><div align="right">12个目的地 | <a href="Destinations-sc.html">显示更多</a></div></td>
        </tr>
      </table>
      <table border="0" align="center" cellpadding="5" cellspacing="0">
        <tr>
          <td rowspan="2"><img src="images/Route001.jpg" width="420" height="233" /></td>
          <td><img src="images/Route001.jpg" width="197" height="110" /></td>
          <td><img src="images/Route001.jpg" width="197" height="110" /></td>
        </tr>
        <tr>
          <td><img src="images/Route001.jpg" width="197" height="110" /></td>
          <td><img src="images/Route001.jpg" width="197" height="110" /></td>
        </tr>
      </table>
      <p>&nbsp;</p>
      <table width="835" border="0" align="center" cellpadding="10" cellspacing="0" bgcolor="#f0f0f0">
        <tr>
          <td width="648"><span class="STYLE5">新疆</span></td>
          <td width="432"><div align="right">12个目的地 | <a href="Destinations-sc.html">显示更多</a></div></td>
        </tr>
      </table>
      <table border="0" align="center" cellpadding="5" cellspacing="0">
        <tr>
          <td rowspan="2"><img src="images/Route001.jpg" width="420" height="233" /></td>
          <td><img src="images/Route001.jpg" width="197" height="110" /></td>
          <td><img src="images/Route001.jpg" width="197" height="110" /></td>
        </tr>
        <tr>
          <td><img src="images/Route001.jpg" width="197" height="110" /></td>
          <td><img src="images/Route001.jpg" width="197" height="110" /></td>
        </tr>
      </table>
      <p>&nbsp;</p>
      <table width="835" border="0" align="center" cellpadding="10" cellspacing="0" bgcolor="#f0f0f0">
        <tr>
          <td width="648"><span class="STYLE5">云南</span></td>
          <td width="432"><div align="right">12个目的地 | <a href="Destinations-sc.html">显示更多</a></div></td>
        </tr>
      </table>
      <table border="0" align="center" cellpadding="5" cellspacing="0">
        <tr>
          <td rowspan="2"><img src="images/Route001.jpg" width="420" height="233" /></td>
          <td><img src="images/Route001.jpg" width="197" height="110" /></td>
          <td><img src="images/Route001.jpg" width="197" height="110" /></td>
        </tr>
        <tr>
          <td><img src="images/Route001.jpg" width="197" height="110" /></td>
          <td><img src="images/Route001.jpg" width="197" height="110" /></td>
        </tr>
      </table>
      <p>&nbsp;</p>
      <table width="835" border="0" align="center" cellpadding="10" cellspacing="0" bgcolor="#f0f0f0">
        <tr>
          <td width="648"><span class="STYLE5">黑龙江</span></td>
          <td width="432"><div align="right">12个目的地 | <a href="Destinations-sc.html">显示更多</a></div></td>
        </tr>
      </table>
      <table border="0" align="center" cellpadding="5" cellspacing="0">
        <tr>
          <td rowspan="2"><img src="images/Route001.jpg" width="420" height="233" /></td>
          <td><img src="images/Route001.jpg" width="197" height="110" /></td>
          <td><img src="images/Route001.jpg" width="197" height="110" /></td>
        </tr>
        <tr>
          <td><img src="images/Route001.jpg" width="197" height="110" /></td>
          <td><img src="images/Route001.jpg" width="197" height="110" /></td>
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
