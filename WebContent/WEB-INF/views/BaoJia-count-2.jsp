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


<title>åå§å¨å±±æµ·å­æ²å¾æ­¥ãé¿åªæ²ç©¿è¶æ¯æ£æ²</title>



<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.h1-black {
	font-family: "é»ä½";
	font-size: 36px;
	font-weight: bold;
	color: #333333;
}
.h1-2 {
	font-family: "é»ä½";
	font-size: 36px;
	color: #666666;
}
.f24 {
	font-size: 24px;
	line-height: 40px;
}
.h2-24 {
	font-family: "é»ä½";
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
.STYLE148 {color: #990000}
.STYLE2 {font-family: "é»ä½"; font-size: 24px; color: #990000; }
.STYLE3 {font-size: 16px; font-weight: bold; font-family: Arial, Helvetica, sans-serif; color: #990000; }
.STYLE10 {color: #FF0000}
.STYLE18 {font-family: "å¾®è½¯éé»"}
.STYLE23 {color: #000000; font-weight: bold; font-family: "å¾®è½¯éé»"; }
.STYLE27 {
	font-size: 24px;
	color: #990000;
}
.STYLE136 {font-size: 20px; line-height: 30px; font-weight: bold; text-decoration: none; word-spacing: normal; font-variant: normal; letter-spacing: normal; font-family: "Arial", "Helvetica", "sans-serif";}
.STYLE149 {font-size: 14px; color: #990000; }
.STYLE150 {color: #000000}
.STYLE24 {color: #333333}
-->
</style>
</head>

<body>
<table width="200" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="images/top-menu.jpg" width="1350" height="153" /></td>
  </tr>
</table>
<br />
<table width="1140" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><img src="images/frame1-1.gif" width="1140" height="7" /></td>
  </tr>
  <tr>
    <td background="images/frame1-2.gif"><table width="1100" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="685"><table width="1053" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="32"><img src="images/man.gif" width="32" height="32" /></td>
            <td width="1021"><span class="STYLE148"><span class="STYLE24">æ¥èªï¼</span>å°æ¹¾ ååç <span class="STYLE24">å¢å·ï¼</span>itours160701a <span class="STYLE150">åºå¢æ¥æï¼</span>2016-7-2 <span class="STYLE150">äººæ°ï¼</span>4å¤§2å° </span></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><img src="images/frame1-3.gif" width="1140" height="7" /></td>
  </tr>
</table>
<table width="1140" border="0" align="center" cellpadding="10" cellspacing="0">
  <tr>
    <td class="h1-black">åå§å¨å±±æµ·å­æ²å¾æ­¥ãé¿åªæ²ç©¿è¶æ¯æ£æ²<span class="STYLE27"> ç¬¬ä¸æ¬¡æ¹æ¡ </span></td>
  </tr>
</table>
<br />
<table width="1140" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><img src="images/frame1-1.gif" width="1140" height="7" /></td>
  </tr>
  <tr>
    <td background="images/frame1-2.gif"><table width="1100" border="0" align="center" cellpadding="10" cellspacing="0">
        <tr>
          <td width="761" valign="top" class="STYLE126"><span class="STYLE3">ç®è¦è¡ç¨</span><span class="STYLE2">ï¼</span></td>
        </tr>
      </table>
      <table width="1100" border="0" align="center" cellpadding="5" cellspacing="1">
        <tr>
          <td height="31" valign="middle" bgcolor="#F0F0F0" class="STYLE129"><div align="center" class="STYLE18">
              <div align="center"><strong><strong>å¤©æ°</strong></strong></div>
          </div></td>
          <td valign="middle" bgcolor="#F0F0F0" class="STYLE23">æ¥æ</td>
          <td valign="middle" bgcolor="#F0F0F0" class="STYLE23">ææ</td>
          <td valign="middle" bgcolor="#F0F0F0" class="STYLE129"><div align="center" class="STYLE18">
              <div align="center"><strong><strong>è¡ç¨</strong></strong></div>
          </div></td>
          <td valign="middle" bgcolor="#F0F0F0" class="STYLE129"><div align="center" class="STYLE18">
              <div align="center">éç¨</div>
          </div></td>
          <td valign="middle" bgcolor="#F0F0F0" class="STYLE129"><div align="center" class="STYLE18">
              <div align="center">æ¯ç¹</div>
          </div></td>
          <td valign="middle" bgcolor="#F0F0F0" class="STYLE23"><div align="center">é¤é£</div></td>
          <td valign="middle" bgcolor="#F0F0F0" class="STYLE129"><div align="center" class="STYLE18">
              <div align="center">ä½å®¿</div>
          </div></td>
          <td valign="middle" bgcolor="#F0F0F0" class="STYLE23"><div align="center">éåº</div></td>
          <td valign="middle" bgcolor="#F0F0F0" class="STYLE23"><div align="center">å/é´</div></td>
        </tr>
        <tr>
          <td width="32" valign="middle" class="STYLE126"><div align="center">1</div></td>
          <td width="53" valign="middle" class="STYLE126">2016-7-2</td>
          <td width="33" valign="middle" class="STYLE126">å¨å­</td>
          <td width="341" valign="middle" class="STYLE126">æé½-åå§å¨å±±</td>
          <td width="49" valign="middle" class="STYLE126">310km</td>
          <td width="90" valign="middle" class="STYLE126">ãå·´éå±±ã</td>
          <td width="109" valign="middle" class="STYLE126"><input name="checkbox73243222" type="checkbox" value="checkbox" checked="checked" />
              <input name="checkbox73244222" type="checkbox" value="checkbox" checked="checked" />
              <input name="checkbox73245222" type="checkbox" value="checkbox" checked="checked" /></td>
          <td width="66" valign="middle" class="STYLE126">åå§å¨å±±é</td>
          <td width="114" valign="middle" class="STYLE126">è´µå±±åå¡éåº</td>
          <td width="102" valign="middle" class="STYLE126">120</td>
        </tr>
        <tr>
          <td valign="middle" class="STYLE126"><div align="center">2</div></td>
          <td valign="middle" class="STYLE126">2016-7-3</td>
          <td valign="middle" class="STYLE126">å¨æ¥</td>
          <td valign="middle" class="STYLE126">å¾æ­¥ï¼æµ·å­æº</td>
          <td valign="middle" class="STYLE126">30km</td>
          <td valign="middle" class="STYLE126">ãæµ·å­æ²ã</td>
          <td valign="middle" class="STYLE126"><input name="checkbox7324322" type="checkbox" value="checkbox" checked="checked" />
              <input name="checkbox7324422" type="checkbox" value="checkbox" checked="checked" />
              <input name="checkbox7324522" type="checkbox" value="checkbox" checked="checked" /></td>
          <td valign="middle" class="STYLE126">åå§å¨å±±é</td>
          <td valign="middle" class="STYLE126">è´µå±±åå¡éåº</td>
          <td valign="middle" class="STYLE126">120</td>
        </tr>
        <tr>
          <td valign="middle" class="STYLE126"><div align="center">3</div></td>
          <td valign="middle" class="STYLE126">2016-7-4</td>
          <td valign="middle" class="STYLE126">å¨ä¸</td>
          <td valign="middle" class="STYLE126">æ¥é-10km-ååå¯º-5km-æ¯æ æ»©-7km-æ¨éª¡å­</td>
          <td valign="middle" class="STYLE126">22Km</td>
          <td valign="middle" class="STYLE126">ã<a href="Destinations-sgnscpg.html" target="_blank">é¿åªæ²</a>ã</td>
          <td valign="middle" class="STYLE126"><input name="checkbox7324332" type="checkbox" value="checkbox" checked="checked" />
              <input name="checkbox7324432" type="checkbox" value="checkbox" checked="checked" />
              <input name="checkbox7324532" type="checkbox" value="checkbox" checked="checked" /></td>
          <td valign="middle" class="STYLE126">é²è¥</td>
          <td valign="middle" class="STYLE126">é²è¥</td>
          <td valign="middle" class="STYLE126">0</td>
        </tr>
        <tr>
          <td valign="middle" class="STYLE126"><div align="center">4</div></td>
          <td valign="middle" class="STYLE126">2016-7-5</td>
          <td valign="middle" class="STYLE126">å¨äº</td>
          <td valign="middle" class="STYLE126">æ¨éª¡å­-3km-æ°´æå-11m-åå­æ²å°¾è¥å° Â </td>
          <td valign="middle" class="STYLE126">14km</td>
          <td valign="middle" class="STYLE126">&nbsp;</td>
          <td valign="middle" class="STYLE126"><input name="checkbox7324342" type="checkbox" value="checkbox" checked="checked" />
              <input name="checkbox7324442" type="checkbox" value="checkbox" checked="checked" />
              <input name="checkbox7324542" type="checkbox" value="checkbox" checked="checked" /></td>
          <td valign="middle" class="STYLE126">é²è¥</td>
          <td valign="middle" class="STYLE126">é²è¥</td>
          <td valign="middle" class="STYLE126">0</td>
        </tr>
        <tr>
          <td valign="middle" class="STYLE126"><div align="center">5</div></td>
          <td valign="middle" class="STYLE126">2016-7-6</td>
          <td valign="middle" class="STYLE126">å¨ä¸</td>
          <td valign="middle" class="STYLE126">åå­æ²å°¾-å­å£-ä¸é¢æ -ç½é¾çå¸-åçæ¹-ä¸æµ·å­æ¥å¾ç«-çå¿</td>
          <td valign="middle" class="STYLE126">23km</td>
          <td valign="middle" class="STYLE126">ãæ¯æ£æ²ã</td>
          <td valign="middle" class="STYLE126"><input name="checkbox7324352" type="checkbox" value="checkbox" checked="checked" />
              <input name="checkbox7324452" type="checkbox" value="checkbox" checked="checked" />
              <input name="checkbox7324552" type="checkbox" value="checkbox" checked="checked" /></td>
          <td valign="middle" class="STYLE126">çå¿/æ±¶å·</td>
          <td valign="middle" class="STYLE126">æ±¶å·å¤§éåº</td>
          <td valign="middle" class="STYLE126">200</td>
        </tr>
        <tr>
          <td valign="middle" class="STYLE126"><div align="center">6</div></td>
          <td valign="middle" class="STYLE126">2016-7-7</td>
          <td valign="middle" class="STYLE126">å¨å</td>
          <td valign="middle" class="STYLE126">è¿åæé½</td>
          <td valign="middle" class="STYLE126">200k</td>
          <td valign="middle" class="STYLE126">&nbsp;</td>
          <td valign="middle" class="STYLE126"><input name="checkbox7324362" type="checkbox" value="checkbox" checked="checked" />
              <input name="checkbox7324462" type="checkbox" value="checkbox" checked="checked" />
              <input name="checkbox7324562" type="checkbox" value="checkbox" checked="checked" /></td>
          <td valign="middle" class="STYLE126">æé½</td>
          <td valign="middle" class="STYLE126">&nbsp;</td>
          <td valign="middle" class="STYLE126">&nbsp;</td>
        </tr>
        <tr>
          <td valign="middle" class="STYLE126">&nbsp;</td>
          <td valign="middle" class="STYLE126">&nbsp;</td>
          <td valign="middle" class="STYLE126">&nbsp;</td>
          <td valign="middle" class="STYLE126">&nbsp;</td>
          <td valign="middle" class="STYLE126">&nbsp;</td>
          <td valign="middle" class="STYLE126">&nbsp;</td>
          <td valign="middle" class="STYLE126">å¨éãå¨ä¸é </td>
          <td valign="middle" class="STYLE126">&nbsp;</td>
          <td valign="middle" class="STYLE126">*æ²¡éåè¡¨ç¤ºä¸å«</td>
          <td valign="middle" class="STYLE126">&nbsp;</td>
        </tr>
      </table>
      <br />
      <br /></td>
  </tr>
  <tr>
    <td><img src="images/frame1-3.gif" width="1140" height="7" /></td>
  </tr>
</table>
<br />
<table width="1217" border="1" align="center" cellpadding="8" cellspacing="2">
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td colspan="2">ææ¬</td>
    <td colspan="2">åé¡¹å ä»·</td>
    <td><span class="STYLE10">ãå·¦è¾¹çé¡¹ç®å¨æªçææ­£å¼çæ¥ä»·è¡¨ä¹åé½åä¿ççï¼ä»¥åæéæ¼çé¡¹ç®</span></td>
  </tr>
  <tr>
    <td width="78"><strong>é¡¹ç®</strong></td>
    <td width="471"><div align="center"><strong>ææ¬åè®¡ç®</strong></div></td>
    <td width="61">å¤§äºº</td>
    <td width="53"><div align="center">å°å­©</div></td>
    <td width="40">&nbsp;</td>
    <td width="25">&nbsp;</td>
    <td width="345"><div align="center" class="STYLE10"><strong>è¯´æ</strong></div></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>äººæ°ï¼ </strong></div></td>
    <td><label>
      å¤§äººï¼4äºº å°å­©ï¼2äººï¼æå°å­©ä»·æ ¼æ ¸ç®ï¼</label></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><span class="STYLE10">ãæåé¢ ä¸é¡µå¡«åçæ°æ® <br />
      ãåé¡¹æ¥ä»·çåå®¹</span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><p align="right"><strong>é¨ç¥¨ï¼</strong></p></td>
    <td><span class="STYLE126"> 1.</span>æµ·å­æ²é¨ç¥¨50å<br />
      <span class="STYLE126">2.</span>é¿åªæ²æ·å¤é¨ç¥¨150å<br />
      <span class="STYLE126">3.æ¯æ£æ²é¨ç¥¨80å/äºº
è§åè½¦ 70å/äºº</span></td>
    <td>350</td>
    <td>
      0</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><span class="STYLE10">å°å­© æªå¾éï¼åææ¬ ä¸º0 </span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>æè¡è¯ä»¶</strong></div></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><span class="STYLE10"></span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>å¯¼æ¸¸ï¼</strong></div></td>
    <td><span class="STYLE126"> å¨ç¨ä¸­æå¯¼æ¸¸ 300å/å¤© *6å¤©=1800å</span><br /></td>
    <td>450</td>
    <td>0</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><span class="STYLE10">å°å­©æªå¾éï¼åæäºé¡¹ç®å¹³æå°å¤§äºº1800/4äºº</span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>éåºï¼<br />
    </strong></div></td>
    <td>1.è´µå±±åå¡éåº 120å/é´/å¤ * 2å¤ <br />
      2.é²è¥ 0å/é´/å¤ *2å¤ <br />
      3.æ±¶å·å¤§éåº 200å/é´å¤ * 1å¤ <br />
    <span class="STYLE10"></span></td>
    <td>220</td>
    <td>220</td>
    <td><span class="STYLE126">
      200
    </span></td>
    <td><span class="STYLE126">
      200
    </span></td>
    <td><span class="STYLE10">1é´æ¿æ2äººç®<br />
      åä¸ºï¼ï¼120*2+200*1ï¼/2<br />
    å°å­©å¾éäºï¼æä»¥æå°å­© çææ¬ </span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>ç¨è½¦ï¼<br />
    </strong></div></td>
    <td><span class="STYLE126"> 1.
      å¨ç¨ç¨è½¦</span> 1000å/å¤©*6å¤©=6000å <br /></td>
    <td>1000</td>
    <td>1000</td>
    <td><span class="STYLE126">
      100
    </span></td>
    <td>&nbsp;</td>
    <td><span class="STYLE10">å°å­©å¾éäºï¼æä»¥è½¦ä»·é¤ä»¥å¤§äººåå°å­© çå<br />
      6000/(4+2)=1000</span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>å¤§äº¤éï¼<br />
    </strong></div></td>
    <td><span class="STYLE126">
      <label></label>
    </span></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><span class="STYLE10">æ²¡å¡«ååæ²¡æ</span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>ç¨é¤ï¼<br />
              <br />
    </strong></div></td>
    <td><label>
      æ©é¤éåºç¨<br />
      æ­£é¤ å±11é¤ï¼40åé¤æ 9é¤ï¼ç¹è²é¤2é¤ï¼<span class="STYLE126">é¦åæè¯è³ç«é 60å/äºº</span>ãéå°åå·ç«é80å/äººï¼<br />
    </label>      </td>
    <td>500</td>
    <td>500</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><span class="STYLE10">æå¡«ååå¾éçæ¥<br />
      æ©é¤é»è®¤éåºç¨<br />
      åé¤åæä¸æä¸é¢æ¯11é¤ï¼å¶ä¸­2é¤ç¹è²é¤<br />
      å¡«åäº40åé¤æ ï¼åä¸º<br />
      ï¼11é¤-2é¤ç¹è²ï¼*40å+60+80=500<br />
      å°å­© å¾éäº</span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>ä¿é©ï¼</strong></div></td>
    <td><span class="STYLE126">
      <label></label>
      </span><span class="STYLE126">åå®¾ææ¸¸æå¤ä¿é© 10å/äºº </span></td>
    <td>10</td>
    <td>10</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><span class="STYLE10"></span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>ç»¼è´¹</strong>ï¼</div></td>
    <td><span class="STYLE126">æè¡ç¤¾ç»¼åæå¡è´¹</span></td>
    <td>0</td>
    <td>0</td>
    <td><span class="STYLE126">
      200
    </span></td>
    <td>200</td>
    <td><span class="STYLE10"></span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>å¨±ä¹ï¼</strong></div></td>
    <td>æé½å·å§è¡¨æ¼ 200å/äºº </td>
    <td>200</td>
    <td>200</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><span class="STYLE10"></span></td>
  </tr>
  <tr>
    <td colspan="7"><div align="center"></div></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>åå¯¼</strong></div></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><span class="STYLE10"></span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>é©®é©¬è´¹</strong></div></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><span class="STYLE10"></span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>éªé©¬è´¹</strong></div></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><span class="STYLE10"></span></td>
  </tr>
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>ç»å±±æ³¨åè´¹</strong></div></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><span class="STYLE10"></span></td>
  </tr>
  
  <tr>
    <td bgcolor="#f0f0f0"><div align="right"><strong>å¶å® </strong></div></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><span class="STYLE10"></span></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><span class="STYLE10"></span></td>
  </tr>
  <tr>
    <td><div align="right">åè®¡</div></td>
    <td>&nbsp;</td>
    <td>2730</td>
    <td>1930</td>
    <td>500</td>
    <td>400</td>
    <td><span class="STYLE10"></span></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><span class="STYLE10"></span></td>
  </tr>
  <tr>
    <td>æ¥ä»·</td>
    <td colspan="6">å¤§äººï¼3230å/äºº*4äºº<br />
      å°å­©ï¼2330å/äºº*2äººï¼å°å­©ä¸å«é¨ç¥¨ï¼ æ³¨ï¼å°å­©æªå¾å¼éé¨ç¥¨æ ã </td>
  </tr>
  <tr>
    <td><div align="right">ï¼</div></td>
    <td><label></label>
      <br />
      <table border="0" cellspacing="0" cellpadding="3">
        <tr>
          <td><input type="submit" name="Submit2" value="è¿åä¸é¡µä¿®æ¹" /></td>
          <td><input type="submit" name="Submit22" value="é¢è§ä¸ä¸" /></td>
          <td><span class="STYLE149">
            <input name="checkbox732437" type="checkbox" value="checkbox" />
          </span><span class="STYLE148">æ¥ä»·åä¸­æ¾ç¤ºæç»å¸ç®</span></td>
        </tr>
        <tr>
          <td><a href="BaoJia-count-1.html">é¾æ¥1</a></td>
          <td><a href="BaoJia-count-3.html">é¢è§</a></td>
          <td>&nbsp;</td>
        </tr>
      </table></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><span class="STYLE10">ä¸¤ç§æ ¸ç®ä»·æ ¼çæ¹å¼ï¼åºæ¥ä¸¤ä¸ªä¸åçé¡µé¢</span></td>
  </tr>
  <tr>
    <td><div align="right"></div></td>
    <td>**çº¿è·¯å¨å¤é¢å®åçä»·æ ¼å¯è½éè¿è¿å¥ç³»ç»æ¥è¯ä¼°<br />
      **å¯éå¿ç«¥ä¸å åºï¼ä¸å«é¨ç¥¨ï¼ä¸å«è½¦è´¹ã </td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><span class="STYLE10"></span></td>
  </tr>
  <tr>
    <td colspan="7"><p><a href="#" class="STYLE136">ç®ä»·ç®¡çï¼é¨ç¥¨å¨æ¯ç¹åç®¡çï¼</a></p>    </td>
  </tr>
</table>
<br />
</body>
</html>
