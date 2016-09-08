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
.STYLE126 {font-size: 14px}
.STYLE129 {	color: #000000;
	font-weight: bold;
}
.STYLE130 {color: #000000}
.STYLE131 {color: #333333}
.STYLE133 {color: #000000; font-weight: bold; font-size: 12px; }
.STYLE134 {font-size: 14px; color: #000000; }
.STYLE135 {font-size: 18px}
.STYLE136 {font-size: 20px; line-height: 30px; font-weight: bold; text-decoration: none; word-spacing: normal; font-variant: normal; letter-spacing: normal; font-family: "Arial", "Helvetica", "sans-serif";}
.STYLE139 {font-size: 14px; color: #666666; }
.STYLE140 {color: #666666}
.STYLE144 {color: #FFFFFF}
.STYLE144 {font-size: 16px;
	font-weight: bold;
	font-family: Arial, Helvetica, sans-serif;
	color: #FFFFFF;
}
.STYLE145 {font-size: 16px; font-weight: bold; font-family: Arial, Helvetica, sans-serif;}
.STYLE146 {line-height: 22px}
.STYLE148 {color: #990000}
.STYLE149 {font-size: 18px; color: #990000; }
.STYLE150 {font-size: 20px; line-height: 30px; font-weight: bold; text-decoration: none; word-spacing: normal; font-variant: normal; letter-spacing: normal; font-family: "Arial", "Helvetica", "sans-serif"; color: #990000; }
.STYLE151 {color: #990000; font-weight: bold; font-size: 14; }
.STYLE152 {font-size: 16px; font-weight: bold; font-family: Arial, Helvetica, sans-serif; color: #000000; }
.STYLE155 {	line-height: 22px;
	color: #990000;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<table width="200" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="images/top-menu.jpg" width="1350" height="153" /></td>
  </tr>
</table>
<table width="1100" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td class="h1-black">四川徒步+四姑娘山穿越7日</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
<table width="1100" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="614"><table width="600" border="0" cellpadding="0" cellspacing="0">
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

    </table></td>
    <td width="486">&nbsp;</td>
  </tr>
</table>
<table width="1100" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><table width="900" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="640" valign="top"> <span class="h1-black">线路设计理念：</span><br />
          。體驗同里、烏鎮、宏村慢生活，悠然自得<br />
。欣賞自然美景黃山，素有“五嶽歸來不看山，黃山歸來不看嶽之稱”<br />
。個性定製小包團，自由自在 </td>
        <td width="260"><div align="center">旅游地图<br />
            <img src="img-test/map-002.jpg" width="260" height="127" /></div></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><table width="900" border="0" cellpadding="0" cellspacing="4">
      <tr>
        <td height="36" valign="middle" bgcolor="#B91B1B" class="STYLE129"><div align="center"><strong><strong>天数</strong></strong></div></td>
        <td valign="middle" bgcolor="#B91B1B" class="STYLE129"><div align="center"><strong><strong>行程</strong></strong></div></td>
        <td valign="middle" bgcolor="#B91B1B" class="STYLE129"><div align="center">景点</div></td>
        <td valign="middle" bgcolor="#B91B1B" class="STYLE129"><div align="center">住宿</div></td>
      </tr>
      <tr>
        <td width="51" valign="middle" class="STYLE126"><div align="center">1</div></td>
        <td width="397" valign="middle" class="STYLE126">接机，－约80分钟--同里-约1小时-烏鎮</td>
        <td width="338" valign="middle" class="STYLE126">烏鎮</td>
        <td width="94" valign="middle" class="STYLE126">烏鎮</td>
      </tr>
      <tr>
        <td valign="middle" class="STYLE126"><div align="center">2</div></td>
        <td valign="middle" class="STYLE126">烏鎮 </td>
        <td valign="middle" class="STYLE126">【烏鎮西柵景區】乘船遊覽【水鄉古鎮】</td>
        <td valign="middle" class="STYLE126">烏鎮 </td>
      </tr>
      <tr>
        <td valign="middle" class="STYLE126"><div align="center">3</div></td>
        <td valign="middle" class="STYLE126">烏鎮－杭州</td>
        <td valign="middle" class="STYLE126">【西湖】【雷峰塔】</td>
        <td valign="middle" class="STYLE126">杭州</td>
      </tr>
      <tr>
        <td valign="middle" class="STYLE126"><div align="center">4</div></td>
        <td valign="middle" class="STYLE126">杭州－宏村</td>
        <td valign="middle" class="STYLE126">【木坑竹海】、【塔川】</td>
        <td valign="middle" class="STYLE126">宏村</td>
      </tr>
      <tr>
        <td valign="middle" class="STYLE126"><div align="center">5</div></td>
        <td valign="middle" class="STYLE126">宏村－黃山景區</td>
        <td valign="middle" class="STYLE126">【黃山】</td>
        <td valign="middle" class="STYLE126">黃山</td>
      </tr>
      <tr>
        <td valign="middle" class="STYLE126"><div align="center">6</div></td>
        <td valign="middle" class="STYLE126">黃山景區－黃山市</td>
        <td valign="middle" class="STYLE126">【西海大峽穀】，屯溪老街</td>
        <td valign="middle" class="STYLE126">黃山市</td>
      </tr>
      <tr>
        <td valign="middle" class="STYLE126"><div align="center">7</div></td>
        <td valign="middle" class="STYLE126">黃山市/上海虹橋</td>
        <td valign="middle" class="STYLE126">途中</td>
        <td valign="middle" class="STYLE126">&nbsp;</td>
      </tr>

    </table>
      <p>&nbsp;</p>    </td>
  </tr>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="4">
  <tr>
    <td height="26" valign="middle" bgcolor="#B91B1B" class="STYLE129"><div align="center"><strong><strong>Days</strong></strong></div></td>
    <td valign="middle" bgcolor="#B91B1B" class="STYLE129"><div align="center"><strong><strong>Trip Outline </strong></strong></div></td>
    <td valign="middle" bgcolor="#B91B1B" class="STYLE129"><div align="center">Activity</div></td>
    <td valign="middle" bgcolor="#B91B1B" class="STYLE129"><div align="center">Accommodation</div></td>
  </tr>
  <tr>
    <td width="52" valign="middle" class="STYLE126"><span class="STYLE146"><strong>Day 1 : </strong></span></td>
    <td width="482" valign="middle" class="STYLE126"><span class="neirong01">Pick up from Dehradun railway station 6AM in the morning.</span></td>
    <td width="258" valign="middle" class="STYLE126">Jiuzhaivalley</td>
    <td width="93" valign="middle" class="STYLE126"><div align="center">Chengdu</div></td>
  </tr>
  <tr>
    <td valign="middle" class="STYLE126"><span class="STYLE146"><strong>Day 2 : </strong></span></td>
    <td valign="middle" class="STYLE126"><span class="neirong01">Daula (5,500 ft) to Sewa (6,300 ft), 7 kms, 6 hrs</span></td>
    <td valign="middle" class="STYLE126">&nbsp;</td>
    <td valign="middle" class="STYLE126"><div align="center">Chengdu</div></td>
  </tr>
  <tr>
    <td valign="middle" class="STYLE126"><span class="STYLE146"><strong>Day 3 : </strong></span></td>
    <td valign="middle" class="STYLE126"><span class="neirong01">Sewa (6,300 ft) to Jhaka (8,700 ft), 9 kms, 7 hrs</span></td>
    <td valign="middle" class="STYLE126">Jiuzhaivalley</td>
    <td valign="middle" class="STYLE126"><div align="center">Chengdu</div></td>
  </tr>
  <tr>
    <td valign="middle" class="STYLE126"><span class="STYLE146"><strong>Day 4 : </strong></span></td>
    <td valign="middle" class="STYLE126"><span class="neirong01">Jhaka (8,700 ft) to Saruwas thatch (11,150 ft), 6 kms. 5 hrs</span></td>
    <td valign="middle" class="STYLE126">&nbsp;</td>
    <td valign="middle" class="STYLE126"><div align="center">Chengdu</div></td>
  </tr>
  <tr>
    <td valign="middle" class="STYLE126"><span class="STYLE146"><strong>Day 5 : </strong></span></td>
    <td valign="middle" class="STYLE126"><span class="neirong01">Saruwas thatch (11,150 ft) to Dhanderas thatch (lower water fall (11,680 ft), 5 kms, 4 hrs</span></td>
    <td valign="middle" class="STYLE126">Jiuzhaivalley</td>
    <td valign="middle" class="STYLE126"><div align="center">Chengdu</div></td>
  </tr>
  <tr>
    <td valign="middle" class="STYLE126"><span class="STYLE146"><strong>Day 6 : </strong></span></td>
    <td valign="middle" class="STYLE126"><span class="neirong01">Dhanderas thatch (11,680 ft) to UpperWaterfall camp (13,120 ft), 3 hrs. (2 hrs steep climb)</span></td>
    <td valign="middle" class="STYLE126">&nbsp;</td>
    <td valign="middle" class="STYLE126"><div align="center">Chengdu</div></td>
  </tr>
  <tr>
    <td valign="middle" class="STYLE126"><span class="STYLE146"><strong>Day 7 : </strong></span></td>
    <td valign="middle" class="STYLE126"><span class="neirong01">Upper Waterfall (13,120 ft) to Rupin Pass (15,250 ft) to Ronti Gad (13,420 ft) 10 km, 11 hrs</span></td>
    <td valign="middle" class="STYLE126">&nbsp;</td>
    <td valign="middle" class="STYLE126"><div align="center">Chengdu</div></td>
  </tr>
  <tr>
    <td valign="middle" class="STYLE126"><span class="STYLE146"><strong>Day 8 : </strong></span></td>
    <td valign="middle" class="STYLE126"><span class="neirong01">Ronti Gad (13,420 ft to (Sangla 8,800 ft ) 12 kms, 6 hrs</span></td>
    <td valign="middle" class="STYLE126">&nbsp;</td>
    <td valign="middle" class="STYLE126"><div align="center">/</div></td>
  </tr>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<table width="1140" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="94" bgcolor="#CCCCCC"><div align="center"><strong>快速搜索</strong></div></td>
    <td width="956" bgcolor="#CCCCCC" class="f14-gao1">区域：
      <label>
        <select name="select3">
          <option>旅行方式：</option>
          <option>旅行</option>
          <option>徒步</option>
          <option value=" ">登山</option>
          <option>自驾</option>
      </select>
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
        <br />
        天数：<a href="#">所有</a> <a href="#">3-5天</a> <a href="#">6-9天</a> <a href="#">10-15天</a> <a href="#">16天+</a></label></td>
  </tr>
  <tr>
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
<table width="900" height="60" border="0" align="center" cellpadding="0" cellspacing="0" class="title">
  <tr>
    <td width="623" height="30" background="image/menu-back1.gif"><div align="center" class="right">
      <table border="0" align="center" cellpadding="10" cellspacing="0">
        <tr>
          <td class="STYLE144">Home</td>
          <td bgcolor="#CCCCCC" class="headline"><a href="Hiking-trekking-china.html">Hiking &amp;Trekking</a></td>
          <td class="headline"><span class="STYLE144">Self-drive</span></td>
          <td class="headline"><span class="STYLE144">China Tours </span></td>
          <td class="headline"><span class="STYLE144">Tailor-made</span></td>
          <td class="STYLE145"><a href="Feedbacks.html"><strong>Feedbacks</strong></a></td>
          <td class="STYLE145"><span class="STYLE144">Why Us </span></td>
        </tr>
      </table>
    </div></td>
  </tr>
  <tr>
    <td height="40" bgcolor="#CCCCCC"><div align="center" class="right02"><a href="#">Tekking in Sichuan </a>| <a href="#">Trekking in Yunnan</a> | <a href="#">Trekking in Tibet </a></div></td>
  </tr>
</table>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0" class="lefttxt">
  <tr>
    <td colspan="2"> EasyChinaTravel &gt; Hiking &amp; Trekking &gt; Trekking in Sichuan </td>
  </tr>
</table>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="5">
  <tr>
    <td><h1 class="STYLE131"> Trekking from Lugu Lake to Yading 15 Days</h1></td>
  </tr>
  <tr>
    <td><span class="STYLE151">&gt; All the tour itineraries are flexible and can be tailor-made according to your schedule and specific ideas or requests. &lt; </span></td>
  </tr>
</table>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0" class="lefttxt">
  <tr>
    <td width="611" valign="top"><table width="500" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="img-test/Route-01.jpg" width="600" height="338" /></td>
      </tr>
    </table>
        <table width="600" border="0" cellpadding="4" cellspacing="0" bgcolor="#CCCCCC">
          <tr>
            <td class="STYLE130">Trekking from Lugu</td>
          </tr>
      </table></td>
    <td width="289" valign="top"><table border="0" align="right" cellpadding="3" cellspacing="0">
      <tr>
        <td><label>
              <div align="center"><img src="image/arrow3-2.gif" width="50" height="16" /></div>
          </label></td>
      </tr>
      <tr>
        <td><div align="center">
          <table border="0" cellspacing="0" cellpadding="4">
            <tr>
              <td><div align="center"><img src="img-test/001.jpg" width="130" height="70" /></div></td>
              <td><div align="center"><img src="img-test/001.jpg" width="130" height="70" /></div></td>
            </tr>
            <tr>
              <td><div align="center"><img src="img-test/001.jpg" width="130" height="70" /></div></td>
              <td><div align="center"><img src="img-test/001.jpg" width="130" height="70" /></div></td>
            </tr>
            <tr>
              <td><div align="center"><img src="img-test/001.jpg" width="130" height="70" /></div></td>
              <td><div align="center"><img src="img-test/001.jpg" width="130" height="70" /></div></td>
            </tr>
            <tr>
              <td><div align="center"><img src="img-test/001.jpg" width="130" height="70" /></div></td>
              <td><div align="center"></div></td>
            </tr>
          </table>
        </div></td>
      </tr>
      <tr>
        <td><div align="center"><img src="image/arrow3-1.gif" width="50" height="16" /></div></td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="900" border="0" align="center" cellpadding="4" cellspacing="0">
  <tr>
    <td width="600"><span class="STYLE136"><span class="STYLE126"><strong><span class="STYLE149">Trip Overview: </span><br />
              <span class="STYLE148">Tour Highlights：</span><br />
      </strong></span></span><span class="neirong01"><span class="STYLE148"><strong> &gt;</strong></span> Ethical culture：Matriarchal Mosuo ethnic group, Tibetan culture. 
        -<br />
                <span class="STYLE148"><strong>&gt;</strong></span> The places where few people tread <br />
                <span class="STYLE148"><strong>&gt;</strong></span> Most beautiful snow mountains in China-The Three Peaks of Yading <br />
                <span class="STYLE148"><strong>&gt;</strong></span> The entry city is flexible. <br />
                <span class="STYLE148"><strong>&gt;</strong></span> Sightseeing or hiking in Lijiang, Tiger Leaping Gorge, Meili snow mountain etc are also available according to your request and schedule. <br />
                <br />
        Trekking from Lugu Lake to Yading is just like walking in a beautiful paradise, to experience a variety of ethnic customs. On the way, you will pass the villages of Mosuo, Pumi, Naxi and Tibetans, and each one is with unique customs and culture. <br />
        <br />
        The nature scenery changes with the seasons. Blossom spring, freshly green summer, colorful autumn, and white winter travel around on this plateau make it charming all over the year. <br />
        <br />
        Lugu Lake is known as the &quot;Pearl of the plateau&quot;,  for it’s blue and clean water and the beautiful island, The US scholar Rock also once traveled and lived here. <br />
        <br />
        Yading is one of China's most amazing nature reserves.  Every stunning vista here is celebrated with a gompa, prayer flags or Mani Stones. On this adventurous trip you will take in relatively remote areas of Tibetan culture - small towns reminiscent of the wild west, rolling landscapes characterized by wheat and barley fields and Tibetan houses.<br />
        注：一个文本框即可，可以加粗和加链接。<br />
        <span class="STYLE130"><br />
          <strong><span class="STYLE148">Route map:</span><br />
          </strong> <img src="img-test/map-002.jpg" width="600" height="295" /></span></span></td>
    <td width="23" valign="top">&nbsp;</td>
    <td width="545" valign="top"><span class="STYLE131"><br />
      </span>
        <table width="281" border="0" cellpadding="2" cellspacing="2" bgcolor="#CCCCCC">
          <tr>
            <td width="92" class="STYLE129"><div align="right"><span class="STYLE126"><span class="STYLE133">Duration：</span> </span></div></td>
            <td width="175" class="STYLE130"><div align="center" class="STYLE140">
                <div align="left"><span class="STYLE134">15 Days</span></div>
            </div></td>
          </tr>
          <tr>
            <td class="STYLE129"><div align="right">Best Seasons：</div></td>
            <td class="STYLE130"><span class="STYLE134">May-Jun，Sep-Oct（Best in Oct）</span></td>
          </tr>
          <tr>
            <td class="STYLE129"><div align="right"><strong>Start Point：</strong></div></td>
            <td class="STYLE130"><div align="center"></div></td>
          </tr>
          <tr>
            <td class="STYLE129"><div align="right"><strong>End Point：</strong></div></td>
            <td class="STYLE130">&nbsp;</td>
          </tr>
          <tr>
            <td class="STYLE129"><div align="right"><strong>Transport： </strong></div></td>
            <td class="STYLE130">&nbsp;</td>
          </tr>
          <tr>
            <td class="STYLE129"><div align="right">Grade：</div></td>
            <td class="STYLE130"><img src="image/shoe-1.gif" width="16" height="16" /> <img src="image/shoe-1.gif" width="16" height="16" /> <img src="image/shoe-1.gif" width="16" height="16" /> <img src="image/shoe-3.gif" width="16" height="16" /> <img src="image/shoe-3.gif" width="16" height="16" /></td>
          </tr>
          <tr>
            <td class="STYLE129"><div align="right">Max Altitude：</div></td>
            <td class="STYLE130"><span class="STYLE134">4800m 15,750Ft</span></td>
          </tr>
          <tr>
            <td class="STYLE129"><div align="right">Approx Trekking Km：</div></td>
            <td class="STYLE130">52 Kms.</td>
          </tr>
        </table>
      <table width="281" border="0" cellpadding="2" cellspacing="2">
          <tr>
            <td colspan="2" class="STYLE140"><div align="center"><span class="STYLE139"><strong><span class="STYLE130"><br />
              Price for Private tour</span></strong></span></div></td>
          </tr>
          <tr>
            <td width="90" bgcolor="#999999" class="STYLE140"><div align="center" class="STYLE130"><strong>travelers</strong></div></td>
            <td bgcolor="#999999" class="STYLE140"><div align="center" class="STYLE130"><strong>Price for Reference </strong></div></td>
          </tr>
          <tr>
            <td bgcolor="#CCCCCC" class="STYLE140"><div align="center" class="STYLE140">2-5</div></td>
            <td bgcolor="#CCCCCC" class="STYLE140"><div align="center">from CNY 2,355 p.p </div></td>
          </tr>
          <tr>
            <td bgcolor="#CCCCCC" class="STYLE140"><div align="center" class="STYLE140">6-9</div></td>
            <td bgcolor="#CCCCCC" class="STYLE140"><div align="center"></div></td>
          </tr>
          <tr>
            <td bgcolor="#CCCCCC" class="STYLE140"><div align="center" class="STYLE140">10+</div></td>
            <td bgcolor="#CCCCCC" class="STYLE140"><div align="center"></div></td>
          </tr>
        </table>
      <br />
        <table width="281" border="0" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
          <tr>
            <td height="30" colspan="2" bgcolor="#990000" class="STYLE140"><div align="center" class="STYLE152"><strong>QUICK INQUIRY</strong></div>
                <div align="center"></div></td>
          </tr>
          <tr>
            <td class="STYLE140"><div align="right"><span class="STYLE126"><strong>Name</strong>:</span></div></td>
            <td class="STYLE140"><span class="STYLE126">
              <input type="text" name="textfield322" />
              <select name="select4" id="select3">
                <option value="Mr">Mr</option>
                <option value="Ms">Ms</option>
              </select>
            </span></td>
          </tr>
          <tr>
            <td class="STYLE140"><div align="right"><span class="STYLE126"><strong>Mail</strong>:</span></div></td>
            <td class="STYLE140"><span class="STYLE126">
              <input type="text" name="textfield2422" />
            </span></td>
          </tr>
          <tr>
            <td class="STYLE140"><div align="right"><strong>Phone</strong>:</div></td>
            <td class="STYLE140"><span class="STYLE126">
              <input type="text" name="textfield22222" />
            </span></td>
          </tr>
          <tr>
            <td class="STYLE140"><div align="right"><strong>Note</strong>:</div></td>
            <td class="STYLE140"><label>
              <textarea name="textarea3" cols="30" rows="5"></textarea>
            </label></td>
          </tr>
          <tr>
            <td class="STYLE140">&nbsp;</td>
            <td class="STYLE140"><span class="STYLE126">
              <input name="textfield23222" type="text" size="8" />
              Confirm Code:3052</span></td>
          </tr>
          <tr>
            <td class="STYLE140">&nbsp;</td>
            <td class="STYLE140"><input type="submit" name="Submit222" value="Send" /></td>
          </tr>
        </table>
      <span class="STYLE131"><br />
        </span><br />
        <table width="281" border="0" cellpadding="5" cellspacing="0" bgcolor="#CCCCCC">
          <tr>
            <td><span class="headline">All the tour itineraries are flexible and can be tailor-made according to your schedule and specific ideas or requests. </span></td>
          </tr>
          <tr>
            <td><div align="center"><a href="#"><img src="image/tailor-made.gif" width="122" height="32" border="0" /></a></div></td>
          </tr>
      </table></td>
  </tr>
</table>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="882"><span class="STYLE150">Brief Itinerary:</span></td>
  </tr>
</table>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="4">
  <tr>
    <td height="26" valign="middle" bgcolor="#B91B1B" class="STYLE129"><div align="center"><strong><strong>Days</strong></strong></div></td>
    <td valign="middle" bgcolor="#B91B1B" class="STYLE129"><div align="center"><strong><strong>Trip Outline </strong></strong></div></td>
    <td valign="middle" bgcolor="#B91B1B" class="STYLE129"><div align="center">Activity</div></td>
    <td valign="middle" bgcolor="#B91B1B" class="STYLE129"><div align="center">Accommodation</div></td>
  </tr>
  <tr>
    <td width="52" valign="middle" class="STYLE126"><span class="STYLE146"><strong>Day 1 : </strong></span></td>
    <td width="482" valign="middle" class="STYLE126"><span class="neirong01">Pick up from Dehradun railway station 6AM in the morning.</span></td>
    <td width="258" valign="middle" class="STYLE126">Jiuzhaivalley</td>
    <td width="93" valign="middle" class="STYLE126"><div align="center">Chengdu</div></td>
  </tr>
  <tr>
    <td valign="middle" class="STYLE126"><span class="STYLE146"><strong>Day 2 : </strong></span></td>
    <td valign="middle" class="STYLE126"><span class="neirong01">Daula (5,500 ft) to Sewa (6,300 ft), 7 kms, 6 hrs</span></td>
    <td valign="middle" class="STYLE126">&nbsp;</td>
    <td valign="middle" class="STYLE126"><div align="center">Chengdu</div></td>
  </tr>
  <tr>
    <td valign="middle" class="STYLE126"><span class="STYLE146"><strong>Day 3 : </strong></span></td>
    <td valign="middle" class="STYLE126"><span class="neirong01">Sewa (6,300 ft) to Jhaka (8,700 ft), 9 kms, 7 hrs</span></td>
    <td valign="middle" class="STYLE126">Jiuzhaivalley</td>
    <td valign="middle" class="STYLE126"><div align="center">Chengdu</div></td>
  </tr>
  <tr>
    <td valign="middle" class="STYLE126"><span class="STYLE146"><strong>Day 4 : </strong></span></td>
    <td valign="middle" class="STYLE126"><span class="neirong01">Jhaka (8,700 ft) to Saruwas thatch (11,150 ft), 6 kms. 5 hrs</span></td>
    <td valign="middle" class="STYLE126">&nbsp;</td>
    <td valign="middle" class="STYLE126"><div align="center">Chengdu</div></td>
  </tr>
  <tr>
    <td valign="middle" class="STYLE126"><span class="STYLE146"><strong>Day 5 : </strong></span></td>
    <td valign="middle" class="STYLE126"><span class="neirong01">Saruwas thatch (11,150 ft) to Dhanderas thatch (lower water fall (11,680 ft), 5 kms, 4 hrs</span></td>
    <td valign="middle" class="STYLE126">Jiuzhaivalley</td>
    <td valign="middle" class="STYLE126"><div align="center">Chengdu</div></td>
  </tr>
  <tr>
    <td valign="middle" class="STYLE126"><span class="STYLE146"><strong>Day 6 : </strong></span></td>
    <td valign="middle" class="STYLE126"><span class="neirong01">Dhanderas thatch (11,680 ft) to UpperWaterfall camp (13,120 ft), 3 hrs. (2 hrs steep climb)</span></td>
    <td valign="middle" class="STYLE126">&nbsp;</td>
    <td valign="middle" class="STYLE126"><div align="center">Chengdu</div></td>
  </tr>
  <tr>
    <td valign="middle" class="STYLE126"><span class="STYLE146"><strong>Day 7 : </strong></span></td>
    <td valign="middle" class="STYLE126"><span class="neirong01">Upper Waterfall (13,120 ft) to Rupin Pass (15,250 ft) to Ronti Gad (13,420 ft) 10 km, 11 hrs</span></td>
    <td valign="middle" class="STYLE126">&nbsp;</td>
    <td valign="middle" class="STYLE126"><div align="center">Chengdu</div></td>
  </tr>
  <tr>
    <td valign="middle" class="STYLE126"><span class="STYLE146"><strong>Day 8 : </strong></span></td>
    <td valign="middle" class="STYLE126"><span class="neirong01">Ronti Gad (13,420 ft to (Sangla 8,800 ft ) 12 kms, 6 hrs</span></td>
    <td valign="middle" class="STYLE126">&nbsp;</td>
    <td valign="middle" class="STYLE126"><div align="center">/</div></td>
  </tr>
</table>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><span class="STYLE150">Detailed Itinerary：</span></td>
  </tr>
</table>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="4">
  <tr>
    <td width="60" valign="middle" class="STYLE126"><span class="STYLE155">Day 1 : </span></td>
    <td width="828" valign="middle" class="STYLE126"><span class="STYLE148 neirong01"><strong>Pick up from Dehradun railway station 6AM in the morning.</strong></span></td>
  </tr>
  <tr>
    <td valign="middle" class="STYLE126">&nbsp;</td>
    <td valign="middle" class="STYLE126">Your trip begins today in Nairobi, Kenya. Upon arrival at Nairobi's Jomo Kenyatta International Airport, you are met by our transfer guide and transported to a comfortable guesthouse in the quiet n</td>
  </tr>
  <tr>
    <td valign="middle" class="STYLE126"><span class="STYLE155">Day 2 : </span></td>
    <td valign="middle" class="STYLE126"><span class="STYLE148 neirong01"><strong>Pick up from Dehradun railway station 6AM in the morning.</strong></span></td>
  </tr>
  <tr>
    <td valign="middle" class="STYLE126">&nbsp;</td>
    <td valign="middle" class="STYLE126">Your trip begins today in Nairobi, Kenya. Upon arrival at Nairobi's Jomo Kenyatta International Airport, you are met by our transfer guide and transported to a comfortable guesthouse in the quiet nn. After a short orientation, the remainder of the day will be at leisure providing the opportunity to relax after your international flight. Dinner on your own tonight.</td>
  </tr>
  <tr>
    <td valign="middle" class="STYLE126"><span class="STYLE155">Day 3: </span></td>
    <td valign="middle" class="STYLE126"><span class="STYLE148 neirong01"><strong>Pick up from Dehradun railway station 6AM in the morning.</strong></span></td>
  </tr>
  <tr>
    <td valign="middle" class="STYLE126">&nbsp;</td>
    <td valign="middle" class="STYLE126">Your trip begins today in Nairobi, Kenya. Upon arrival at Nairobi's Jomo Kenyatta International Airport, you are met b</td>
  </tr>
  <tr>
    <td valign="middle" class="STYLE126"><span class="STYLE155">Day 4 : </span></td>
    <td valign="middle" class="STYLE126"><span class="STYLE148 neirong01"><strong>Pick up from Dehradun railway station 6AM in the morning.</strong></span></td>
  </tr>
  <tr>
    <td valign="middle" class="STYLE126">&nbsp;</td>
    <td valign="middle" class="STYLE126">Your trip begins today in Nairobi, Kenya. Upon arrival at Nairobi's Jomo Kenyatta International Airport, you are met by our transfer guide and transported to a comfortable guesthouse in the quiet neighborhood of Karen. After a short orientation, the</td>
  </tr>
  <tr>
    <td valign="middle" class="STYLE126"><span class="STYLE155">Day 5 : </span></td>
    <td valign="middle" class="STYLE126"><span class="STYLE148 neirong01"><strong>Pick up from Dehradun railway station 6AM in the morning.</strong></span></td>
  </tr>
  <tr>
    <td valign="middle" class="STYLE126">&nbsp;</td>
    <td valign="middle" class="STYLE126">Your trip begins today in Nairobi, Kenya. Upon arrival at Nairobi's Jomo Kenyatta International Airport, you are met by our transfer guide and transported to a comfortable guesthouse in the quiet neighborhood of </td>
  </tr>
  <tr>
    <td valign="middle" class="STYLE126"><span class="STYLE155">Day 6 : </span></td>
    <td valign="middle" class="STYLE126"><span class="STYLE148 neirong01"><strong>Pick up from Dehradun railway station 6AM in the morning.</strong></span></td>
  </tr>
  <tr>
    <td valign="middle" class="STYLE126">&nbsp;</td>
    <td valign="middle" class="STYLE126">Your trip begins today in Nairobi, Kenya. Upon arrival at Nairobi's Jomo Kenyatta International Airport, you are met by our transfer guide and transported to a comfortable guesthouse in the quiet neighborhood of Karen. After a short orientation, the remainder of the day will be at leisure providing the opportunity to relax after your international flight.</td>
  </tr>
</table>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="4">
  <tr>
    <td width="828" valign="middle" class="STYLE126"><span class="STYLE148 neirong01 STYLE135"><strong>What's included:</strong></span></td>
  </tr>
  <tr>
    <td valign="middle" class="STYLE126"><p>- all transport, including airport pick-up and transfers<br />
      - Tibet Travel Permit (TTP)<br />
      - private vehicle and driver with foreign guide.<br />
      - all meals with wine included at dinner (as selected by Extravagant Yak)<br />
      - complimentary use of a cell phone with local number for the duration of the trip<br />
      - all accommodation based on double occupancy<br />
      - all activities and entrance fees enroute (per the itinerary)<br />
      All accommodations and meals as noted in the daily itinerary; airport transfers when arriving and departing with the group; skilled bi-lingual climbing guide(s), cook, and porters on the mountain; tent and foam sleeping pad; cooking and eating utensils; waterproof duffel for the climb; filtered/treated drinking water; Kilimanjaro National Park fees and taxes.<br />
      注：一个文本框内容即可</p></td>
  </tr>
</table>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="4">
  <tr>
    <td width="828" valign="middle" class="STYLE126"><span class="STYLE148 neirong01 STYLE135"><strong>Excluded:</strong></span></td>
  </tr>
  <tr>
    <td valign="middle" class="STYLE126"><p>- international airfare<br />
      - medical, travel, and trip interruption insurance<br />
      - passport and visa fees<br />
      - activities not included on the trip itinerary<br />
      - souvenirs, laundry, items of a personal nature <br />
      Airfare to Arusha, Tanzania; 2 lunches and 1 dinner; sleeping bag; gratuities to guides and climbing support staff; excess baggage charges; airport taxes; items of a personal nature such as soft drinks, bottled water or liquor, laundry fees, internet fees; cost of obtaining a passport and visa; immunizations; insurance of any kind.<br />
      注：一个文本框内容即可</p></td>
  </tr>
</table>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="4">
  <tr>
    <td width="828" valign="middle" class="STYLE126"><span class="STYLE148 neirong01 STYLE135"><strong>Additional Information：</strong></span></td>
  </tr>
  <tr>
    <td valign="middle" class="STYLE126"><p>Special Payment, Cancellation, and Transfer Policy<br />
      A deposit of $400 per person must be paid at the time of signup; the deposit is fully refundable up to 91 days prior to departure. Final payment is due 90 days prior to departure. At 60-31 days prior to departure, 50% of the land cost is non-refundable and non-transferrable. At 30 days or less prior to departure all costs are non-refundable and non-transferrable.</p>
        <p>Single Accommodations<br />
          There is no single supplement fee for those willing to share accommodations with a same-gender roommate. If you are willing to share but we are unable to pair you with a same-gender roommate, you will not be charged the single supplement fee. If you do not wish to share and request single accommodations, you will be required to pay the single supplement fee. Please be advised that there are a limited number of single accommodations available. For more details about traveling solo, see our Solo Travelers page.</p>
      <p>General Information<br />
        This trip is subject to the booking information set forth in the current REI Adventures Reservation Information. Please read this information carefully and call us if you have any questions. Additional trip information will be provided upon sign up. We highly recommend the purchase of travel insurance through REI Adventures. If coverage is purchased at the time of your initial reservation, the 'Pre-existing Conditions Exclusion' is waived (certain exclusions apply).</p>
      <p>We look forward to having you join us for the trip of a lifetime! Why wait? Space is limited, reserve your adventure today.</p></td>
  </tr>
</table>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="4">
  <tr>
    <td width="828" valign="middle" class="STYLE126"><span class="STYLE148 neirong01 STYLE135"><strong>相关线路：</strong></span></td>
  </tr>
  <tr>
    <td valign="middle" class="STYLE126"><p>Special Payment, Cancellation, and Transfer Policy<br />
      A deposit of $400 per person must be paid at the time of signup;<br />
      the deposit is fully refundable up to 91 days prior to departure. <br />
      Final payment is due 90 days prior to departure. <br />
      At 60-31 days prior to departure, 50% of the land cost is non-refundable and non-transferrable. <br />
      At 30 days or less prior to departure all costs are non-refundable and non-transferrable.</p>
        <p>&nbsp;</p></td>
  </tr>
</table>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0" class="lefttxt">
  <tr>
    <td height="105" valign="top" bgcolor="#666666"><strong>;lkajsdflladsf;</strong>
        <table width="883" height="60" border="0" align="center" cellpadding="0" cellspacing="0">
          <tbody>
            <tr>
              <td width="883" height="30" bgcolor="#EFEFEF"><div align="center">www.EasyChinaTravel.com</div></td>
            </tr>
            <tr>
              <td height="30" bgcolor="#EFEFEF"><div align="center">Add: Huaqiao Building, #15 South Three Sections of Yihuan Road, Chengdu, Sichuan, China<br />
                Tel: +86-28-85580038 / 85562905?<br />
                E-mail: olivierwagemans@hotmail.com</div></td>
            </tr>
          </tbody>
      </table></td>
  </tr>
  <tr>
    <td width="611" valign="top" bgcolor="#666666"><strong><br />
    </strong></td>
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
