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
.STYLE140 {color: #666666}
.STYLE148 {color: #990000}
.STYLE2 {font-family: "é»ä½"; font-size: 24px; color: #990000; }
.STYLE3 {font-size: 16px; font-weight: bold; font-family: Arial, Helvetica, sans-serif; color: #990000; }
.STYLE7 {color: #990000; font-weight: bold; }
.STYLE9 {
	font-size: 14px;
	font-weight: bold;
	color: #990000;
}
.STYLE10 {color: #FF0000}
.STYLE13 {color: #999999}
.STYLE14 {color: #000000}
.STYLE16 {color: #990000; font-family: "å¾®è½¯éé»"; }
.STYLE18 {font-family: "å¾®è½¯éé»"}
.STYLE23 {color: #000000; font-weight: bold; font-family: "å¾®è½¯éé»"; }
.STYLE24 {color: #333333}
.STYLE27 {
	font-size: 24px;
	color: #990000;
}
.STYLE28 {font-family: "å¾®è½¯éé»"; font-size: 24px; color: #990000; }
.STYLE29 {font-size: 14px; font-family: "å¾®è½¯éé»"; }
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
        <td width="685"><table width="577" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="32"><img src="images/man.gif" width="32" height="32" /></td>
            <td width="545"><span class="STYLE148"><span class="STYLE24">æ¥èªï¼</span>å°æ¹¾ ååç <span class="STYLE24">å¢å·ï¼</span>itours160701a</span></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><a href="#">1.ç¬¬ä¸æ¬¡æ¹æ¡</a> <span class="STYLE140">2016-5-01</span><a href="#"><br />
              2.ç¬¬äºæ¬¡æ¹æ¡</a> <span class="STYLE140">2016-5-03</span><a href="#"><br />
                3.ç¬¬ä¸æ¬¡æ¹æ¡</a> <span class="STYLE140">2016-5-03<br />
                  <a href="#">4.ç¬¬äºæ¬¡æ¹æ¡</a> 2016-5-08</span></td>
          </tr>
        </table></td>
        <td width="415"><table width="415" border="0" align="center" cellpadding="5" cellspacing="0">
          <tr>
            <td width="32"><img src="images/ask03.png" width="32" height="32" /></td>
            <td width="99"><span class="STYLE2">è¡ç¨è¨è«</span></td>
            <td width="254">è¨è«å¯ç¢¼ï¼<span class="STYLE126">
              <input name="textfield322222" type="text" size="10" />
              <span class="STYLE140">
                <input type="submit" name="Submit222222" value="é©è­" />
              </span><a href="#">èªªæã</a></span></td>
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
    <td class="h1-black">åå§å¨å±±æµ·å­æ²å¾æ­¥ãé¿åªæ²ç©¿è¶æ¯æ£æ²<span class="STYLE27"> ç¬¬ä¸æ¬¡æ¹æ¡ 2016-5-01</span></td>
  </tr>
</table>
<br />
<table width="1140" border="0" align="center" cellpadding="10" cellspacing="0">
  <tr>
    <td width="624" valign="top"><table width="600" border="0" cellpadding="0" cellspacing="0">
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
    <td width="476" valign="top"><table border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="images/frame2-1.gif" width="480" height="7" /></td>
      </tr>
      <tr>
        <td background="images/frame2-2.gif"><table border="0" align="center" cellpadding="5" cellspacing="0">
            <tr>
              <td><div align="center"><span class="STYLE28">æ¦è¦ä¿¡æ¯</span></div></td>
            </tr>

            <tr>
              <td><table width="442" border="0" cellpadding="4" cellspacing="2" class="STYLE126">
                <tr>
                  <td width="70" class="STYLE126"><div align="right" class="STYLE18"><strong>ç±»å</strong></div></td>
                  <td width="350" class="STYLE29">å¾æ­¥ <a href="#">è¯´æ&gt;&gt;</a></td>
                </tr>
                <tr>
                  <td class="STYLE126"><div align="right" class="STYLE18"><strong>æè¡å¤©æ°</strong></div></td>
                  <td class="STYLE29">8å¤©7å¤  <a href="#">è¯´æ&gt;&gt;</a></td>
                </tr>
                <tr>
                  <td class="STYLE126"><div align="right" class="STYLE18"><strong>åºå¢æ¥æ</strong></div></td>
                  <td class="STYLE29">2016å¹´7æ1æ¥ è³ 2016å¹´7æ8æ¥</td>
                </tr>
                <tr>
                  <td class="STYLE126"><div align="right" class="STYLE18"><strong>æé«æµ·æ</strong></div></td>
                  <td class="STYLE29">4800ç±³</td>
                </tr>
                <tr>
                  <td class="STYLE126"><div align="right" class="STYLE18"><strong>èµ·å§å°</strong></div></td>
                  <td class="STYLE29">æé½ <a href="#">è¯´æ&gt;&gt;</a></td>
                </tr>
                <tr>
                  <td class="STYLE126"><div align="right" class="STYLE18"><strong>å®æå°</strong></div></td>
                  <td class="STYLE29">æé½</td>
                </tr>
                <tr>
                  <td class="STYLE126"><div align="right" class="STYLE18"><strong>è·¯çº¿</strong></div></td>
                  <td class="STYLE29">æé½âæ±¶å·âåå§å¨å±±âæé½</td>
                </tr>
                <tr>
                  <td class="STYLE126"><div align="right" class="STYLE18"><strong>äº¤éæ¹å¼</strong></div></td>
                  <td class="STYLE29">é£æºãæ±½è½¦</td>
                </tr>
                <tr>
                  <td class="STYLE126"><div align="right" class="STYLE18"><strong>å¾æ­¥é¾åº¦</strong></div></td>
                  <td class="STYLE29"><img src="images/shoe-1.gif" width="16" height="16" /> <img src="images/shoe-1.gif" width="16" height="16" /> <img src="images/shoe-1.gif" width="16" height="16" /> <img src="images/shoe-1.gif" width="16" height="16" /> <img src="images/shoe-2.gif" width="16" height="16" /> <a href="#">è¯´æ&gt;&gt;</a></td>
                </tr>
                <tr>
                  <td class="STYLE126"><div align="right" class="STYLE18"><strong>å¾æ­¥è·ç¦» </strong></div></td>
                  <td class="STYLE29">25km</td>
                </tr>
              </table>
                <span class="STYLE16">*å¯æ ¹ææ¨çææ³åéæ°èª¿æ´è¡ç¨å²~</span><br />
<table border="0" cellpadding="2" cellspacing="0" class="f12-gao1">
  <tr>
    <td><img src="images/facebook.png" width="24" height="24" /></td>
    <td><a href="#">åäº«è³FB</a></td>
    <td><img src="images/share.png" width="24" height="24" /></td>
    <td><a href="#">å¤å¶é¾æ¥</a></td>
    <td><img src="images/favorite01.png" width="24" height="24" /></td>
    <td><a href="#">æ¶èæ¬é¡µ</a></td>
    <td><img src="images/print.png" width="24" height="24" /></td>
    <td><a href="#">æå°é¡µé¢</a></td>
  </tr>
</table></td>
            </tr>
        </table></td>
      </tr>
      <tr>
        <td><img src="images/frame2-3.gif" width="480" height="7" /></td>
      </tr>
    </table></td>
  </tr>
</table>
<br />
<br />
<table width="1140" border="0" align="center" cellpadding="3" cellspacing="1">
  <tr>
    <td width="110" bgcolor="#F0F0F0"><div align="center"><span class="STYLE2">æ´ä½æ¦è§</span></div></td>
    <td width="110" bgcolor="#F0F0F0"><div align="center"><span class="STYLE2">è¯¦ç»è¡ç¨</span></div></td>
    <td width="110" bgcolor="#F0F0F0"><div align="center"><span class="STYLE2">è¡åéç¥</span></div></td>
    <td width="110"><div align="center"></div></td>
    <td width="533">&nbsp;</td>
    <td width="84">&nbsp;</td>
  </tr>
</table>
<table width="1140" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><img src="images/frame1-1.gif" width="1140" height="7" /></td>
  </tr>
  <tr>
    <td background="images/frame1-2.gif"><table width="1100" border="0" align="center" cellpadding="10" cellspacing="0">
      <tr>
        <td width="761" valign="top" class="STYLE126"><span class="STYLE3">è®¾è®¡çå¿µ</span><span class="STYLE2">ï¼</span><br />
            <br />
          * åå§å¨å±±è¢«è­½çºæ±æ¹çé¿ç¾åæ¯ï¼æ¯æ¶å¤éåèçå¤©å ãæ­¤ç·è·¯å¯ä»¥æ¬£è³é·åªæºï¼æµ·å­æºé¢¨åã<br />
          <br />
          * é·åªæºç©¿è¶ç¢æ£æºæ¯ä¸­ååå¤§æä½³å¾æ­¥ç·è·¯ä¹ä¸ã<br />
          <br />
          * å°æ¥­é éååå°çºæ¨æä¾åå¤è£çµ¦åç©¿è¶ä¿éãæ¨åªéè¦è¼è£ä¸é£å³å¯ ï¼ï¼<br />
          <br />
          <span class="STYLE16">âæ³å»åª~å¸¶ä½ å»ï¼å»å¹¾å¤©~é¨ä¾¿æ¨ï¼ä¸å©åäººOKï¼ä¸äºå¥½åäº¦å¯ï¼å¤äººåè¡ä¹è¡ã<br />
â<strong>æ²¡ææå¥½çè¡ç¨ï¼åªææéåæ¨çæç¨ï¼æ¯æ¢ç·è·¯åå¯éæ°å®è£½ã</strong><br />
âæä»¬äºè§£æ¨ççèï¼æ¨åªè² è²¬æè¡ï¼å¶å®çäº¤çµ¦ä¸»è§æè¡å§ã <br />
          </span><br />
          <br />
        </td>
        <td width="299" valign="top" class="STYLE126"><div align="center"><span class="STYLE3">è¡ç¨å°å¾</span><br />
                <img src="img-test/map-002.jpg" width="260" height="127" /><br />
          ç¹å»å¾çæ¾å¤§</div>
            <br />
            <br />
        </td>
      </tr>
    </table>
      <table width="1100" border="0" align="center" cellpadding="10" cellspacing="0">
        <tr>
          <td width="761" valign="top" class="STYLE126"><span class="STYLE3">ç®è¦è¡ç¨</span><span class="STYLE2">ï¼</span></td>
        </tr>
      </table>
      <table width="1100" border="0" align="center" cellpadding="5" cellspacing="1">
        <tr>
          <td height="31" valign="middle" bgcolor="#F0F0F0" class="STYLE129"><div align="center" class="STYLE18">
            <div align="center"><strong><strong>å¤©æ°</strong></strong></div>
          </div></td>
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
        </tr>
        <tr>
          <td width="40" valign="middle" class="STYLE126"><div align="center">1</div></td>
          <td width="431" valign="middle" class="STYLE126">æé½-åå§å¨å±±</td>
          <td width="45" valign="middle" class="STYLE126">310km</td>
          <td width="372" valign="middle" class="STYLE126">ãå·´éå±±ã</td>
          <td width="106" valign="middle" class="STYLE126">&nbsp;</td>
          <td width="106" valign="middle" class="STYLE126">åå§å¨å±±é</td>
          <td width="106" valign="middle" class="STYLE126">&nbsp;</td>
        </tr>
        <tr>
          <td valign="middle" class="STYLE126"><div align="center">2</div></td>
          <td valign="middle" class="STYLE126">å¾æ­¥ï¼æµ·å­æº</td>
          <td valign="middle" class="STYLE126">30km</td>
          <td valign="middle" class="STYLE126">ãæµ·å­æ²ã</td>
          <td valign="middle" class="STYLE126">&nbsp;</td>
          <td valign="middle" class="STYLE126">åå§å¨å±±é</td>
          <td valign="middle" class="STYLE126">&nbsp;</td>
        </tr>
        <tr>
          <td valign="middle" class="STYLE126"><div align="center">3</div></td>
          <td valign="middle" class="STYLE126">æ¥é-10km-ååå¯º-5km-æ¯æ æ»©-7km-æ¨éª¡å­</td>
          <td valign="middle" class="STYLE126">22Km</td>
          <td valign="middle" class="STYLE126">ã<a href="Destinations-sgnscpg.html" target="_blank">é¿åªæ²</a>ã</td>
          <td valign="middle" class="STYLE126">&nbsp;</td>
          <td valign="middle" class="STYLE126">é²è¥</td>
          <td valign="middle" class="STYLE126">&nbsp;</td>
        </tr>
        <tr>
          <td valign="middle" class="STYLE126"><div align="center">4</div></td>
          <td valign="middle" class="STYLE126">æ¨éª¡å­-3km-æ°´æå-11m-åå­æ²å°¾è¥å° Â </td>
          <td valign="middle" class="STYLE126">14km</td>
          <td valign="middle" class="STYLE126">&nbsp;</td>
          <td valign="middle" class="STYLE126">&nbsp;</td>
          <td valign="middle" class="STYLE126">é²è¥</td>
          <td valign="middle" class="STYLE126">&nbsp;</td>
        </tr>
        <tr>
          <td valign="middle" class="STYLE126"><div align="center">5</div></td>
          <td valign="middle" class="STYLE126">åå­æ²å°¾-å­å£-ä¸é¢æ -ç½é¾çå¸-åçæ¹-ä¸æµ·å­æ¥å¾ç«-çå¿</td>
          <td valign="middle" class="STYLE126">23km</td>
          <td valign="middle" class="STYLE126">ãæ¯æ£æ²ã</td>
          <td valign="middle" class="STYLE126">&nbsp;</td>
          <td valign="middle" class="STYLE126">çå¿/æ±¶å·</td>
          <td valign="middle" class="STYLE126">&nbsp;</td>
        </tr>
        <tr>
          <td valign="middle" class="STYLE126"><div align="center">6</div></td>
          <td valign="middle" class="STYLE126">è¿åæé½</td>
          <td valign="middle" class="STYLE126">200k</td>
          <td valign="middle" class="STYLE126">&nbsp;</td>
          <td valign="middle" class="STYLE126">&nbsp;</td>
          <td valign="middle" class="STYLE126">&nbsp;</td>
          <td valign="middle" class="STYLE126">&nbsp;</td>
        </tr>
      </table>
      <br />
      <table width="1100" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td><span class="STYLE7">æ³¨ï¼ä»¥ä¸è¡ç¨åä¾åèï¼å¯æ ¹æ®æ¨çåæéæ°è°æ´è®¾è®¡ã</span></td>
        </tr>
      </table>  
      <br /></td>
  </tr>
  <tr>
    <td><img src="images/frame1-3.gif" width="1140" height="7" /></td>
  </tr>
</table>
<br />
<br />
<table width="1120" border="0" align="center" cellpadding="5" cellspacing="0">
  <tr>
    <td width="32"><img src="images/heart02.png" width="32" height="32" /></td>
    <td width="1028"><span class="h2-24"><span class="STYLE148"><span class="STYLE14"><span class="STYLE2">æå¡åæ¥ä»·</span></span></span></span></td>
  </tr>
</table>
<table width="1140" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><img src="images/frame1-1.gif" width="1140" height="7" /></td>
  </tr>
  <tr>
    <td background="images/frame1-2.gif"><table width="1100" border="0" align="center" cellpadding="10" cellspacing="0">
        <tr>
          <td valign="top"><br />
          <table width="1100" border="0" align="center" cellpadding="4" cellspacing="2">
              <tr>
                <td width="95" bgcolor="#f0f0f0"><p align="right"><strong>é¨ç¥¨ï¼</strong></p></td>
                <td width="529"><span class="STYLE126"> 1.</span>æµ·å­æ²é¨ç¥¨50å<br />
                    <span class="STYLE126">2.</span>é¿åªæ²æ·å¤é¨ç¥¨150å<br />
                    <span class="STYLE126">3.æ¯æ£æ²é¨ç¥¨80å/äºº
                      è§åè½¦ 70å/äºº</span></td>
                <td width="444">350å/äºº</td>
              </tr>
              <tr>
                <td bgcolor="#f0f0f0"><div align="right"><strong>å¯¼æ¸¸ï¼</strong></div></td>
                <td><span class="STYLE126"> å¨ç¨ä¸­æå¯¼æ¸¸ </span></td>
                <td>450å/äºº</td>
              </tr>
              <tr>
                <td bgcolor="#f0f0f0"><div align="right"><strong>éåºï¼<br />
                </strong></div></td>
                <td>1.è´µå±±åå¡éåº 2å¤<br />
                  2.é²è¥ 2å¤ <br />
                  3.æ±¶å·å¤§éåº 1å¤<br />
                  <span class="STYLE10"></span></td>
                <td>420å/äºº</td>
              </tr>
              <tr>
                <td bgcolor="#f0f0f0"><div align="right"><strong>ç¨è½¦ï¼<br />
                </strong></div></td>
                <td><span class="STYLE126"> å¨ç¨ç¨è½¦</span><br /></td>
                <td>1100å/äºº</td>
              </tr>
              <tr>
                <td bgcolor="#f0f0f0"><div align="right"><strong>ç¨é¤ï¼<br />
                          <br />
                </strong></div></td>
                <td><label> æ©é¤éåºç¨<br />
                  æ­£é¤ å±11é¤ï¼ç¹è²é¤2é¤ï¼<span class="STYLE126">é¦åæè¯è³ç«é </span>ãéå°åå·ç«éï¼</label>              </td>
                <td>500å/äºº</td>
              </tr>
              <tr>
                <td bgcolor="#f0f0f0"><div align="right"><strong>ä¿é©ï¼</strong></div></td>
                <td><span class="STYLE126">
                  <label></label>
                </span><span class="STYLE126">åå®¾ææ¸¸æå¤ä¿é© </span></td>
                <td>10å/äºº</td>
              </tr>
              <tr>
                <td bgcolor="#f0f0f0"><div align="right"><strong>ç»¼è´¹</strong><strong>ï¼</strong></div></td>
                <td><span class="STYLE126">æè¡ç¤¾ç»¼åæå¡è´¹</span></td>
                <td>200å/äºº</td>
              </tr>
              <tr>
                <td bgcolor="#f0f0f0"><div align="right"><strong>å¨±ä¹ï¼</strong></div></td>
                <td>æé½å·å§è¡¨æ¼ </td>
                <td>200å/äºº</td>
              </tr>

              <tr>
                <td bgcolor="#f0f0f0"><div align="center"><strong>æ¥ä»·</strong></div></td>
                <td>å¤§äººï¼3230å/äºº*4äºº<br />
                  å°å­©ï¼2330å/äºº*2äººï¼å°å­©ä¸å«é¨ç¥¨ï¼ </td>
                <td>&nbsp;</td>
              </tr>

            </table>          
            <br /></td></tr>
      </table></td>
  </tr>
  <tr>
    <td><img src="images/frame1-3.gif" width="1140" height="7" /></td>
  </tr>
</table>
<br />
<br />
<br />
<table width="1120" border="0" align="center" cellpadding="5" cellspacing="0">
  <tr>
    <td width="32"><span class="h2-24"><img src="images/detail.png" width="32" height="32" /></span></td>
    <td width="1028"><span class="h2-24"><span class="STYLE148">è¯¦ç»æ¥ç¨</span></span></td>
  </tr>
</table>
<table width="1140" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><img src="images/frame1-1.gif" width="1140" height="7" /></td>
  </tr>
  <tr>
    <td background="images/frame1-2.gif"><table width="1100" border="0" align="center" cellpadding="10" cellspacing="0">
          <tr>
            <td width="78" class="STYLE148"><strong>Day 01 </strong></td>
            <td width="972"><span class="STYLE9">æé½-åå§å¨å±±</span><span class="STYLE148"><strong> 310km ä½ï¼åå§å¨å±±é® </strong></span></td>
          </tr>
          <tr>
            <td valign="top">&nbsp;</td>
            <td valign="top"><span class="STYLE126">æé½åºç¼ï¼ç¿»è¶å·´éå±±ï¼æµéåå§å¨å±±ï¼é©æé«åæµ·æã<br />
                  <br />
              ãå·´éå±±ãæµ·æ5040ç±³ï¼ä½å¶æ¯è²æä¸ºç¾ä¸½ï¼ç½äºå¦æµ·ï¼éªå±±è¿ç»µï¼èç¸èµ·ä¼<span class="STYLE10">ãï¼å¤æ³¨ï¼è°ç¨æ¯åºçç®è¿°åå¾ç å¯éå¾çï¼<br />
                <br />
                </span></span>
                <table width="300" border="0" cellspacing="1" cellpadding="5">
                  <tr>
                    <td><div align="center"><img src="images/Route001.jpg" width="271" height="152" /></div></td>
                  </tr>
                  <tr>
                    <td class="STYLE126"><div align="center">å·´éå±±</div></td>
                  </tr>
              </table></td>
          </tr>
        </table>
        <table width="1100" border="0" align="center" cellpadding="10" cellspacing="0">
          <tr>
            <td width="78" class="STYLE148"><strong>Day 02 </strong></td>
            <td width="972"><span class="STYLE148"><strong><span class="STYLE126">å¾æ­¥ï¼æµ·å­æº</span> 30km ä½ï¼åå§å¨å±±é</strong></span></td>
          </tr>
          <tr>
            <td valign="top">&nbsp;</td>
            <td valign="top">æµ·å­æ²å£å¾æ­¥ä¸å¤©ãå¯å¸¦ä¸äºå¹²ç²®ï¼æä¸ååå§å¨å±±éä¸ä½ã<br />
                <br />
                <span class="STYLE126">ãæµ·å­æ²ã</span>ï¼é£æ¯å¦ç»<br />
                <table width="300" border="0" cellspacing="1" cellpadding="5">
                  <tr>
                    <td><div align="center"><img src="images/Route001.jpg" width="271" height="152" /></div></td>
                    <td><div align="center"><img src="images/Route001.jpg" width="271" height="152" /></div></td>
                    <td><div align="center"><img src="images/Route001.jpg" width="271" height="152" /></div></td>
                  </tr>
                  <tr>
                    <td class="STYLE126"><div align="center">æµ·å­æ²</div></td>
                    <td class="STYLE126"><div align="center">æµ·å­æ²å¾æ­¥</div></td>
                    <td><div align="center">å¾æ­¥</div></td>
                  </tr>
              </table></td>
          </tr>
        </table>
        <table width="1100" border="0" align="center" cellpadding="10" cellspacing="0">
          <tr>
            <td width="78" class="STYLE148"><strong>Day 03 </strong></td>
            <td width="972"><span class="STYLE148"><strong><span class="STYLE126">åå§å¨å±±é-10km-ååå¯º-5km-æ¯æ æ»©-7km-æ¨éª¡å­ 22km ä½ï¼æ¨éª¡å­è¥å° </span></strong></span></td>
          </tr>
          <tr>
            <td valign="top">&nbsp;</td>
            <td valign="top">æµ·å­æ²å£å¾æ­¥ä¸å¤©ãå¯å¸¦ä¸äºå¹²ç²®ï¼æä¸ååå§å¨å±±éä¸ä½ã<br />
                <br />
                <span class="STYLE126">ãæµ·å­æ²ã</span>ï¼é£æ¯å¦ç»<br />
                <table width="300" border="0" cellspacing="1" cellpadding="5">
                  <tr>
                    <td><div align="center"><img src="images/Route001.jpg" width="271" height="152" /></div></td>
                    <td><div align="center"><img src="images/Route001.jpg" width="271" height="152" /></div></td>
                    <td><div align="center"></div></td>
                  </tr>
                  <tr>
                    <td class="STYLE126"><div align="center">é¿åªæ²å¾æ­¥</div></td>
                    <td class="STYLE126"><div align="center">é¿åªæ²</div></td>
                    <td><div align="center"></div></td>
                  </tr>
              </table></td>
          </tr>
        </table>
        <table width="1100" border="0" align="center" cellpadding="10" cellspacing="0">
          <tr>
            <td width="78" class="STYLE148"><strong>Day 04</strong></td>
            <td width="972"><span class="STYLE148"><strong><span class="STYLE126">åå§å¨å±±é-10km-ååå¯º-5km-æ¯æ æ»©-7km-æ¨éª¡å­ 22km ä½ï¼æ¨éª¡å­è¥å° </span></strong></span></td>
          </tr>
          <tr>
            <td valign="top">&nbsp;</td>
            <td valign="top">æµ·å­æ²å£å¾æ­¥ä¸å¤©ãå¯å¸¦ä¸äºå¹²ç²®ï¼æä¸ååå§å¨å±±éä¸ä½ã<br />
                <br />
                <span class="STYLE126">ãæµ·å­æ²ã</span>ï¼é£æ¯å¦ç»<br />
                <table width="300" border="0" cellspacing="1" cellpadding="5">
                  <tr>
                    <td><div align="center"><img src="images/Route001.jpg" width="271" height="152" /></div></td>
                    <td><div align="center"><img src="images/Route001.jpg" width="271" height="152" /></div></td>
                    <td><div align="center"><img src="images/Route001.jpg" width="271" height="152" /></div></td>
                  </tr>
                  <tr>
                    <td class="STYLE126"><div align="center">æµ·å­æ²</div></td>
                    <td class="STYLE126"><div align="center">æµ·å­æ²å¾æ­¥</div></td>
                    <td><div align="center">å¾æ­¥</div></td>
                  </tr>
                </table></td>
          </tr>
        </table>
        <table width="1100" border="0" align="center" cellpadding="10" cellspacing="0">
          <tr>
            <td width="78" class="STYLE148"><strong>Day 05</strong></td>
            <td width="972"><span class="STYLE3"><strong><span class="STYLE126">åå§å¨å±±é-10km-ååå¯º-5km-æ¯æ æ»©-7km-æ¨éª¡å­ 22km ä½ï¼æ¨éª¡å­è¥å° </span></strong></span></td>
          </tr>
          <tr>
            <td valign="top">&nbsp;</td>
            <td valign="top">æµ·å­æ²å£å¾æ­¥ä¸å¤©ãå¯å¸¦ä¸äºå¹²ç²®ï¼æä¸ååå§å¨å±±éä¸ä½ã<br />
                <br />
                <span class="STYLE126">ãæµ·å­æ²ã</span>ï¼é£æ¯å¦ç»<br />
                <table width="300" border="0" cellspacing="1" cellpadding="5">
                  <tr>
                    <td><div align="center"><img src="images/Route001.jpg" width="271" height="152" /></div></td>
                    <td><div align="center"><img src="images/Route001.jpg" width="271" height="152" /></div></td>
                    <td><div align="center"></div></td>
                  </tr>
                  <tr>
                    <td class="STYLE126"><div align="center">é¿åªæ²å¾æ­¥</div></td>
                    <td class="STYLE126"><div align="center">é¿åªæ²</div></td>
                    <td><div align="center"></div></td>
                  </tr>
              </table></td>
          </tr>
        </table>
        <table width="1100" border="0" align="center" cellpadding="10" cellspacing="0">
          <tr>
            <td width="78" class="STYLE148"><strong>Day 06</strong></td>
            <td width="972"><span class="STYLE148"><strong><span class="STYLE126">åå§å¨å±±é-10km-ååå¯º-5km-æ¯æ æ»©-7km-æ¨éª¡å­ 22km ä½ï¼æ¨éª¡å­è¥å° </span></strong></span></td>
          </tr>
          <tr>
            <td valign="top">&nbsp;</td>
            <td valign="top">æµ·å­æ²å£å¾æ­¥ä¸å¤©ãå¯å¸¦ä¸äºå¹²ç²®ï¼æä¸ååå§å¨å±±éä¸ä½ã<br />
                <br />
                <span class="STYLE126">ãæµ·å­æ²ã</span>ï¼é£æ¯å¦ç»<br />
                <table width="300" border="0" cellspacing="1" cellpadding="5">
                  <tr>
                    <td><div align="center"><img src="images/Route001.jpg" width="271" height="152" /></div></td>
                    <td><div align="center"><img src="images/Route001.jpg" width="271" height="152" /></div></td>
                    <td><div align="center"></div></td>
                  </tr>
                  <tr>
                    <td class="STYLE126"><div align="center">é¿åªæ²å¾æ­¥</div></td>
                    <td class="STYLE126"><div align="center">é¿åªæ²</div></td>
                    <td><div align="center"></div></td>
                  </tr>
              </table></td>
          </tr>
      </table></td></tr>
  <tr>
    <td><img src="images/frame1-3.gif" width="1140" height="7" /></td>
  </tr>
</table>
<br />
<br />
<table width="1120" border="0" align="center" cellpadding="5" cellspacing="0">
  <tr>
    <td width="32"><img src="images/document2.png" width="32" height="32" /></td>
    <td width="1028"><span class="h2-24"><span class="STYLE148">è¡åéç¥</span></span></td>
  </tr>
</table>
<table width="1140" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><img src="images/frame1-1.gif" width="1140" height="7" /></td>
  </tr>
  <tr>
    <td background="images/frame1-2.gif"><table width="1100" border="0" align="center" cellpadding="10" cellspacing="0">
        <tr>
          <td>âè¡£ï¼é«åçé½åå¾ç¾ä¹æå·äººï¼å¢¨é¡å¸¶æ²¿çå¸½å­é²æ¬é²ç­æ¯å¿è¦çï¼å¸¶ä»¶å¤å¥ï¼é½åä¸çæº«åº¦åé°æ¶¼èé½æå¾å¤§çå·®å¥ï¼é¨æå è¡£ï¼<br />
âé£ï¼é£²é£åå§å°å·®å¥ä¸å¤§ï¼åç¨®èç³»åºæ¬é½æï¼æèè¶£éå¯ä»¥ååå°éçèé¤ä»¥åå°åº¦å°¼æ³ç¾ç­é¢¨å³ï¼åå¥æ¯é»éè¦æåçºæ¨æºåè·¯é¤ï¼<br />
âä½ï¼éåºèå§å°å¥ç¡äºè´ï¼éåºéå¥è¨­æ½ç¥å°ä¸äºï¼ä½å®¢æ¿åå§å°åæ¨£èé©ï¼æç´éåºéåæ°§æ°£ç¶ç­ä¾æ°§è¨­åï¼<br />
âè¡ï¼æåçå¸¸è¦è§åè¡ç¨æéä¹èï¼è·¯æ³é½éå¸¸å¥½ä¸è¬é½ä½¿ç¨ç©ºèª¿å·å·´ï¼æéä¸­ï¼åå¨èé©çåº§æ¤ä¸ï¼çªå¤å¨æ¯é¢¨æ¯ã<br />
<br />
åèè³æï¼<br />
1.<a href="#">é«åæéæ³¨æé ç®</a><br />
2.<a href="#">é«ååæ</a></td>
        </tr>
      </table>
    <p>&nbsp;</p></td>
  </tr>
  <tr>
    <td><img src="images/frame1-3.gif" width="1140" height="7" /></td>
  </tr>
</table>
è¾å¥è®¨è®ºå¯ç ååºç°ä¸é¢çè®¨è®ºåºï¼ä¸¦ä¸å±å¹é¡¯ç¾èªååæå°éåä½ç½®é¡¯ç¤ºï¼ï¼æªè¾å¥å¯ç æ¶ä¸æ¾ç¤ºè®¨è®ºåºåå®¹ï¼
<table width="1140" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><img src="images/frame1-1.gif" width="1140" height="7" /></td>
  </tr>
  <tr>
    <td background="images/frame1-2.gif"><table width="1100" border="0" align="center" cellpadding="10" cellspacing="0">
      <tr>
        <td width="327" valign="top"><table width="303" border="0" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
          <tr>
            <td height="30" colspan="2" bgcolor="#CCCCCC" class="STYLE140"><div align="center" class="STYLE3">è¡ç¨è¨è«</div>
                    <div align="center"></div></td>
          </tr>
          <tr>
            <td width="51" bgcolor="#F0F0F0" class="STYLE140"><div align="right" class="STYLE126"><strong>*å§å</strong>:</div></td>
            <td width="249" bgcolor="#F0F0F0" class="STYLE126"><input type="text" name="textfield3222" />
                    <select name="select5" id="select">
                      <option value="Mr">åç</option>
                      <option value="Ms">å¥³å£«</option>
                    </select>
            </td>
          </tr>
          <tr>
            <td bgcolor="#F0F0F0" class="STYLE140"><div align="right" class="STYLE126"><strong>*çµé®</strong>:</div></td>
            <td bgcolor="#F0F0F0" class="STYLE126"><input type="text" name="textfield24222" /></td>
          </tr>
          <tr>
            <td bgcolor="#F0F0F0" class="STYLE140"><div align="right"><strong>çµè¯</strong>:</div></td>
            <td bgcolor="#F0F0F0" class="STYLE126"><input type="text" name="textfield222222" /></td>
          </tr>
          <tr>
            <td bgcolor="#F0F0F0" class="STYLE140"><div align="right"><strong>åå®¹</strong>:</div></td>
            <td bgcolor="#F0F0F0" class="STYLE140"><label>
              <textarea name="textarea" cols="30" rows="5"></textarea>
            </label></td>
          </tr>
          <tr>
            <td bgcolor="#F0F0F0" class="STYLE140">éªè¯ç </td>
            <td bgcolor="#F0F0F0" class="STYLE126"><input name="textfield232222" type="text" size="8" />
              Confirm Code:3052</td>
          </tr>
          <tr>
            <td bgcolor="#F0F0F0" class="STYLE140">&nbsp;</td>
            <td bgcolor="#F0F0F0" class="STYLE140"><input type="submit" name="Submit2222" value="Send" /></td>
          </tr>
          <tr>
            <td bgcolor="#F0F0F0" class="STYLE140">&nbsp;</td>
            <td bgcolor="#F0F0F0" class="STYLE148">*æä»¬ä¼å¯¹æ¨çèµæä¿å¯ã</td>
          </tr>
        </table></td>
        <td width="733" valign="top"><table width="715" border="0" cellpadding="2" cellspacing="2" class="STYLE126">
          <tr>
            <td width="32"><img src="images/man.gif" width="32" height="32" /></td>
            <td width="669"><strong>å¼µä¸è±</strong> <span class="STYLE140">2016å¹´2æ1æ¥ 23ï¼30 </span></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><span class="STYLE148">è«åææ³9æå»éæ¢ç·è·¯å¯ä»¥åï¼æåå¤§æ¦ä¸è¡25äººã</span></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td><strong>ä¸»è§æè¡</strong>ï¼2016-6-16ï¼Reï¼9ææ¯ç§å­£ï¼æ­£å¥½æ¯æä½³æ¶æ</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table>
              <table width="715" border="0" cellpadding="2" cellspacing="2" class="STYLE126">
                <tr>
                  <td width="32"><div align="center"><img src="images/woman.png" width="32" height="32" /></div></td>
                  <td width="669"><strong>æ´å­</strong> <span class="STYLE13">2016å¹´5æ12æ¥ 12ï¼11 </span></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><span class="STYLE148">è«åææ³9æå»éæ¢ç·è·¯å¯ä»¥åï¼æåå¤§æ¦ä¸è¡25äººã</span></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><strong>ä¸»è§æè¡</strong>ï¼2016-6-16ï¼<strong>Reï¼</strong>9ææ¯ç§å­£ï¼æ­£å¥½æ¯æä½³æ¶æ</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
              </table>
          <table width="715" border="0" cellpadding="2" cellspacing="2" class="STYLE126">
                <tr>
                  <td width="32"><img src="images/man.gif" width="32" height="32" /></td>
                  <td width="669"><strong>å¼µä¸è±</strong> <span class="STYLE140">2016å¹´2æ1æ¥ 23ï¼30 </span></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><span class="STYLE148">è«åææ³9æå»éæ¢ç·è·¯å¯ä»¥åï¼æåå¤§æ¦ä¸è¡25äººã</span></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td><strong>ä¸»è§æè¡</strong>ï¼2016-6-16ï¼Reï¼9ææ¯ç§å­£ï¼æ­£å¥½æ¯æä½³æ¶æ</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
            </table>
          <a href="#"><img src="images/page.gif" width="503" height="32" /><br />
            </a><span class="STYLE10">å¤æ³¨ï¼æ¯é¡µ3æ¡ï¼ææ¥æä»åå¾åæï¼æçè¨åé®ç®±éç¥</span></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><img src="images/frame1-3.gif" width="1140" height="7" /></td>
  </tr>
</table>
<br />
<br />
<br />
<table width="1140" border="0" align="center" cellpadding="5" cellspacing="0">
  <tr>
    <td width="48" bgcolor="#CCCCCC"><img src="images/search.png" width="48" height="48" /></td>
    <td width="61" bgcolor="#CCCCCC"><div align="center" class="STYLE2">å¿«éæç´¢</div></td>
    <td width="179" bgcolor="#CCCCCC" class="f14-gao1">ææ¸¸åºåï¼
      <label>
        <select name="select">
          <option>å¨é¨åå</option>
          <option>åå·</option>
          <option>è¥¿è</option>
          <option>æ°ç</option>
          <option>äºå</option>
        </select>
        <br />
        æè¡æ¹å¼ï¼
        <select name="select3">
          <option selected="selected">-ææ-</option>
          <option>è§åæå½±</option>
          <option>å¾æ­¥</option>
          <option value=" ">ç»å±±</option>
          <option>èªé©¾</option>
        </select>
        <br />
        åææ¶é´ï¼<a href="#">
          <select name="select2">
            <option selected="selected">-ææ-</option>
            <option>1-5å¤©</option>
            <option>6-9å¤©</option>
            <option value=" ">10-15å¤©</option>
            <option>16å¤©+</option>
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
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-57621520128a2c5c"></script>




</body>
</html>
