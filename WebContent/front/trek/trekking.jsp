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
-->
</style>
</head>

<body>
<table width="200" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="images/top-menu.jpg" width="1350" height="153" /></td>
  </tr>
  <tr>
    <td><img src="images/banner-trekking.jpg" width="1350" height="598" /></td>
  </tr>
</table>
<table width="1140" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="106" valign="top" bgcolor="#fafafa"><table width="1050" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td class="h1-black">徒步登山</td>
      </tr>
      <tr>
        <td class="h1-2">專業團隊為您提供後勤保障</td>
      </tr>
      <tr>
        <td><p>帶上家人，約上朋友 </p>
          <p>登山頂峰<br />  
              <br />
            》》<a href="#">了解更多</a></p>
          <p></p></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td valign="top">&nbsp;</td>
  </tr>
</table>
<table width="1140" border="0" align="center" cellpadding="3" cellspacing="0">
  <tr>
    <td width="48" bgcolor="#CCCCCC"><img src="images/search.png" width="48" height="48" /></td>
    <td width="109" bgcolor="#CCCCCC"><div align="center" class="STYLE2">快速搜索</div></td>
    <td width="925" bgcolor="#CCCCCC" class="f14-gao1">旅游区域：
      <label>
        <select name="select">
          <option>区域：</option>
          <option>四川</option>
          <option>西藏</option>
          <option>新疆</option>
          <option>云南</option>
        </select>
        <select name="select2">
          <option>四姑娘山</option>
          <option>川西</option>
          <option>大香格里拉</option>
        </select>
        <input type="submit" name="Submit" value="Search" />
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
        假期时间：<a href="#">所有</a> <a href="#">3-5天</a> <a href="#">6-9天</a> <a href="#">10-15天</a> <a href="#">16天+</a></label></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td class="f14-gao1">&nbsp;</td>
  </tr>
</table>
<table width="1140" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top"><table width="353" border="0" align="left" cellpadding="0" cellspacing="0">
      <tr>
        <td><table width="300" border="0" align="left" cellpadding="0" cellspacing="0">
            <tr>
              <td width="57"><img src="images/icon-01.jpg" width="57" height="43" /></td>
              <td width="296" class="h2-24">四姑娘山</td>
            </tr>
        </table></td>
      </tr>
      <tr>
        <td class="f12-gao1">四姑娘山是户外天堂，非常适合开展徒步登山活动，人生必去。</td>
      </tr>
      <tr>
        <td><img src="images/ad-index-01.gif" width="353" height="166" /></td>
      </tr>
      <tr>
        <td><span class="f14-gao1">&gt;&gt;四姑娘山长坪沟穿越毕棚沟经典7日<br />
          &gt;&gt;四姑娘山二峰攀登+长坪沟徒步8日</span></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table></td>
    <td valign="top"><table width="353" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td><table width="300" border="0" align="left" cellpadding="0" cellspacing="0">
            <tr>
              <td width="57"><img src="images/icon-01.jpg" width="57" height="43" /></td>
              <td width="296" class="h2-24">贡嘎山</td>
            </tr>
        </table></td>
      </tr>
      <tr>
        <td class="f12-gao1">四姑娘山是户外天堂，非常适合开展徒步登山活动，人生必去。</td>
      </tr>
      <tr>
        <td><img src="images/ad-index-01.gif" width="353" height="166" /></td>
      </tr>
      <tr>
        <td><span class="f14-gao1">&gt;&gt;四姑娘山长坪沟穿越毕棚沟经典7日<br />
          &gt;&gt;四姑娘山二峰攀登+长坪沟徒步8日</span></td>
      </tr>
    </table></td>
    <td valign="top"><table width="353" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td><table width="300" border="0" align="left" cellpadding="0" cellspacing="0">
            <tr>
              <td width="57"><img src="images/icon-01.jpg" width="57" height="43" /></td>
              <td width="296" class="h2-24">稻城亚丁</td>
            </tr>
        </table></td>
      </tr>
      <tr>
        <td class="f12-gao1">四姑娘山是户外天堂，非常适合开展徒步登山活动，人生必去。</td>
      </tr>
      <tr>
        <td><img src="images/ad-index-01.gif" width="353" height="166" /></td>
      </tr>
      <tr>
        <td><span class="f14-gao1">&gt;&gt;重走洛克道：泸沽湖穿越亚丁13日<br />
          &gt;&gt;深入亚丁雪山大转山</span></td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="1140" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top"><table width="353" border="0" align="left" cellpadding="0" cellspacing="0">
        <tr>
          <td><table width="300" border="0" align="left" cellpadding="0" cellspacing="0">
              <tr>
                <td width="57"><img src="images/icon-01.jpg" width="57" height="43" /></td>
                <td width="296" class="h2-24">喀纳斯</td>
              </tr>
          </table></td>
        </tr>
        <tr>
          <td class="f12-gao1">四姑娘山是户外天堂，非常适合开展徒步登山活动，人生必去。</td>
        </tr>
        <tr>
          <td><img src="images/ad-index-01.gif" width="353" height="166" /></td>
        </tr>
        <tr>
          <td><span class="f14-gao1">&gt;&gt;四姑娘山长坪沟穿越毕棚沟经典7日<br />
            &gt;&gt;四姑娘山二峰攀登+长坪沟徒步8日</span></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
    </table></td>
    <td valign="top"><table width="353" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td><table width="300" border="0" align="left" cellpadding="0" cellspacing="0">
              <tr>
                <td width="57"><img src="images/icon-01.jpg" width="57" height="43" /></td>
                <td width="296" class="h2-24">牛背山</td>
              </tr>
          </table></td>
        </tr>
        <tr>
          <td class="f12-gao1">四姑娘山是户外天堂，非常适合开展徒步登山活动，人生必去。</td>
        </tr>
        <tr>
          <td><img src="images/ad-index-01.gif" width="353" height="166" /></td>
        </tr>
        <tr>
          <td><span class="f14-gao1">&gt;&gt;四姑娘山长坪沟穿越毕棚沟经典7日<br />
            &gt;&gt;四姑娘山二峰攀登+长坪沟徒步8日</span></td>
        </tr>
    </table></td>
    <td valign="top"><table width="353" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td><table width="300" border="0" align="left" cellpadding="0" cellspacing="0">
              <tr>
                <td width="57"><img src="images/icon-01.jpg" width="57" height="43" /></td>
                <td width="296" class="h2-24">稻城亚丁</td>
              </tr>
          </table></td>
        </tr>
        <tr>
          <td class="f12-gao1">四姑娘山是户外天堂，非常适合开展徒步登山活动，人生必去。</td>
        </tr>
        <tr>
          <td><img src="images/ad-index-01.gif" width="353" height="166" /></td>
        </tr>
        <tr>
          <td><span class="f14-gao1">&gt;&gt;重走洛克道：泸沽湖穿越亚丁13日<br />
            &gt;&gt;深入亚丁雪山大转山</span></td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td valign="top">&nbsp;</td>
    <td valign="top">&nbsp;</td>
    <td valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td valign="top"><table width="353" border="0" align="left" cellpadding="0" cellspacing="0">
      <tr>
        <td><img src="images/ad-index-01.gif" width="353" height="166" /></td>
      </tr>
      <tr>
        <td bgcolor="#fafafa" class="f24">贡嘎西坡徒步15日</td>
      </tr>
      <tr>
        <td bgcolor="#fafafa" class="f14-gao1">。體驗少數民族風情<br />
          。無人之境</td>
      </tr>
      <tr>
        <td class="f14-gao1">&nbsp;</td>
      </tr>
    </table></td>
    <td valign="top"><table width="353" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td><img src="images/ad-index-02.jpg" width="353" height="166" /></td>
      </tr>
      <tr>
        <td bgcolor="#fafafa" class="f14-gao1"><span class="f24">贡嘎西坡徒步15日</span></td>
      </tr>
      <tr>
        <td bgcolor="#fafafa" class="f14-gao1">。體驗少數民族風情<br />
          。無人之境</td>
      </tr>
    </table></td>
    <td valign="top"><table width="353" border="0" align="right" cellpadding="0" cellspacing="0">
      <tr>
        <td><img src="images/ad-index-02.jpg" width="353" height="166" /></td>
      </tr>
      <tr>
        <td bgcolor="#fafafa" class="f14-gao1"><span class="f24">贡嘎西坡徒步15日</span></td>
      </tr>
      <tr>
        <td bgcolor="#fafafa" class="f14-gao1">。體驗少數民族風情<br />
          。無人之境</td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="1140" border="0" align="center" cellpadding="5" cellspacing="0">
  <tr>
    <td width="48" bgcolor="#CCCCCC"><img src="images/search.png" width="48" height="48" /></td>
    <td width="61" bgcolor="#CCCCCC"><div align="center" class="STYLE2">快速搜索</div></td>
    <td width="179" bgcolor="#CCCCCC" class="f14-gao1">旅游区域：
      <label>
        <select name="select4">
          <option>全部區域</option>
          <option>四川</option>
          <option>西藏</option>
          <option>新疆</option>
          <option>云南</option>
        </select>
        <br />
        旅行方式：
        <select name="select4">
          <option selected="selected">-所有-</option>
          <option>观光摄影</option>
          <option>徒步</option>
          <option value=" ">登山</option>
          <option>自驾</option>
        </select>
        <br />
        假期时间：<a href="#">
          <select name="select4">
            <option selected="selected">-所有-</option>
            <option>1-5天</option>
            <option>6-9天</option>
            <option value=" ">10-15天</option>
            <option>16天+</option>
          </select>
        </a></label></td>
    <td width="812" bgcolor="#CCCCCC" class="f14-gao1"><input type="submit" name="Submit2" value="Search" /></td>
  </tr>
</table>
<p>&nbsp;</p>
<table width="1140" border="0" align="center" cellpadding="0" cellspacing="0">
  
  <tr>
    <td height="106" valign="top" bgcolor="#fafafa"><table width="1050" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>页脚待定</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td><p>四川旅游</p>          </td>
        <td>九寨淘友 </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td valign="top">&nbsp;</td>
  </tr>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>
