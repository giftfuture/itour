<%@ page language="java" import="java.lang.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%    
String path = request.getContextPath();    
// 获得本项目的地址(例如: http://localhost:8080/MyApp/)赋值给basePath变量    
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";    
// 将 "项目路径basePath" 放入pageContext中，待以后用EL表达式读出。    
pageContext.setAttribute("basePath",basePath);    
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎访问主角旅行</title>
 <link href="css/index.css" rel="stylesheet" type="text/css" />
 <script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
 <!-- <script src="http://code.jquery.com/jquery-migrate-1.2.1.js"></script> -->
 <script type="text/javascript">
 jQuery.browser={};(function(){jQuery.browser.msie=false; jQuery.browser.version=0;if(navigator.userAgent.match(/MSIE ([0-9]+)./)){ jQuery.browser.msie=true;jQuery.browser.version=RegExp.$1;}})();
 </script>
</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>
		 <jsp:include page="/front/header.jsp" />
    </td>
  </tr>
  <tr>
    <td><img id="banner-index"  src="images/Route001.jpg" width="100%" height="598" /></td>
  </tr>
    <tr><td><input style="background:red;" type="button" value="1" onclick="changePho(this)" /><input style="background:red;" type="button" value="2" onclick="changePho(this)" /><input style="background:red;" type="button" value="3" onclick="changePho(this)" />
    <input style="background:red;" type="button" value="4" onclick="changePho(this)" /><input style="background:red;" type="button" value="5" onclick="changePho(this)" /><input style="background:red;" type="button" value="6" onclick="changePho(this)" /></td></tr>
  <tr><td><!--<video width="602px" height="345px" controls="controls">
<source src="video/boshijie.mpg" type="video/mpg"></source>
your browser does not support the video tag
</video>  --></td></tr>
<tr><td><!-- <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="624" height="351" style="margin-top: -10px;margin-left: -8px;" id="FLVPlayer1"
 title="此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。">
		<param name="movie" value="FLVPlayer_Progressive.swf" />
		<param name="quality" value="high" />
		<param name="wmode" value="opaque" />
		<param name="scale" value="noscale" />
		<param name="salign" value="lt" />
		<param name="FlashVars" value="&amp;MM_ComponentVersion=1&amp;skinName=public/swf/Clear_Skin_3&amp;streamName=video/boshijie.mpg&amp;autoPlay=false&amp;autoRewind=false" />
		<param name="swfversion" value="8,0,0,0" />
		
		<param name="expressinstall" value="expressInstall.swf" />
</object>  -->
<!--此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 
<script type="text/javascript">
if($.browser.msie){ 
	document.write('<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="624" height="351" style="margin-top: -10px;margin-left: -8px;" id="FLVPlayer1">'+
			'<param name="movie" value="FLVPlayer_Progressive.swf" />'+
			'<param name="quality" value="high" />'+
			'<param name="wmode" value="opaque" />'+
			'<param name="scale" value="noscale" />'+
			'<param name="salign" value="lt" />'+
			'<param name="FlashVars" value="&amp;MM_ComponentVersion=1&amp;skinName=public/swf/Clear_Skin_3&amp;streamName=public/video/test&amp;autoPlay=false&amp;autoRewind=false" />'+
			'<param name="swfversion" value="8,0,0,0" />'+
			'<param name="expressinstall" value="expressInstall.swf" />'+
			'</object>');
	}else{
		document.write('<video width="602px" height="345px" controls="controls">'+
		'<source src="video/sc_135567145825hd_qqvga.mp4" type="video/mp4"></source>'+
		'your browser does not support the video tag'+
		'</video>');
	}
</script> -->
</td></tr>
</table>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="106" valign="top" bgcolor="#fafafa">
    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td class="STYLE9">主角旅行——定製旅行服務商</td>
      </tr>
      <tr>
        <td class="STYLE10">您才是旅行的主角</td>
      </tr>
      <tr>
        <td><p>人生是由大大小小不同的旅程串連而成的， 我們覺得每次的旅程，旅人的角色都應該凌駕於所有之上，每次的旅程都應該獨特而美好，沒有勉強，沒有委曲求全 ... 您，是主人，一切以您的想法及需求為依歸。</p>
          <p>我們衷心希望，每一個旅途都能為您創造幸福而美好的回憶 。將來，不管您憶起哪一個片段，都能打從心底泛起笑顏。<br />
            <br />
          主角旅行是隶属于中旅旗下的专业定制旅行服务团队。 我們有強大的信心來履行對您的承諾，因為我們</p>
          <p>》》<a href="front/whyus/Why.jsp">了解更多</a></p>
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
</table>
<br />
<table width="1140" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="766" valign="top"><table border="0" align="center" cellpadding="15" cellspacing="0">
      <tr>
        <td valign="top"><table width="353" border="0" align="left" cellpadding="0" cellspacing="0" class="f14-gao1">
            <tr>
              <td><table width="300" border="0" align="left" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="57"><img src="images/icon-01.jpg" width="57" height="43" /></td>
                    <td width="296" class="h2-24"><a href="front/trek/Trekkings.jsp" class="STYLE3">徒步</a></td>
                  </tr>
              </table></td>
            </tr>
            <tr>
              <td><span class="STYLE7">一步一步，探索未知<br />
                尋找我的祕密花園</span></td>
            </tr>
            <tr>
              <td><img src="images/trekking.jpg" width="353" height="166" /></td>
            </tr>
            <tr>
              <td class="STYLE8">&gt;&gt;<a href="Route00.html">四姑娘山海子沟徒步+长坪沟穿越毕棚沟6日</a><br />
                &gt;&gt;重走洛克路——泸沽湖穿越亚丁18日</td>
            </tr>

        </table></td>
        <td valign="top"><table width="353" border="0" cellpadding="0" cellspacing="0" class="f14-gao1">
            <tr>
              <td><table width="300" border="0" align="left" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="57"><img src="images/icon-02.jpg" width="57" height="43" /></td>
                    <td width="296" class="STYLE2">登山</td>
                  </tr>
              </table></td>
            </tr>
            <tr>
              <td>傲氣決定我的高度；高度決定我的視野；<br />
                視野多寬，心就有多廣。</td>
            </tr>
            <tr>
              <td><img src="images/climb.jpg" width="353" height="166" /></td>
            </tr>
            <tr>
              <td>&gt;&gt;贡嘎西坡徒步15日<br />&gt;&gt;重走洛克路——泸沽湖穿越亚丁18日</td>
            </tr>
        </table></td>
      </tr>
      <tr>
        <td valign="top"><table width="353" border="0" cellpadding="0" cellspacing="0" class="f14-gao1">
            <tr>
              <td><table width="300" border="0" align="left" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="57"><img src="images/icon-02.jpg" width="57" height="43" /></td>
                    <td width="296" class="STYLE2">自驾</td>
                  </tr>
              </table></td>
            </tr>
            <tr>
              <td>用車輪丈量世界 <br />
                縱橫天地間，自在任我行</td>
            </tr>
            <tr>
              <td><img src="images/ride.jpg" width="353" height="166" /></td>
            </tr>
            <tr>
              <td>&gt;&gt;贡嘎西坡徒步15日<br />&gt;&gt;重走洛克路——泸沽湖穿越亚丁18日</td>
            </tr>
        </table></td>
        <td valign="top"><table width="353" border="0" cellpadding="0" cellspacing="0" class="f14-gao1">
            <tr>
              <td><table width="300" border="0" align="left" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="57"><img src="images/icon-04.jpg" width="57" height="43" /></td>
                    <td width="296" class="STYLE2">轻旅行</td>
                  </tr>
              </table></td>
            </tr>
            <tr>
              <td>放逐靈魂 <br />
                靜靜看著日昇月落</td>
            </tr>
            <tr>
              <td><img src="images/ad-index-01.gif" width="353" height="166" /></td>
            </tr>
            <tr>
              <td>&gt;&gt;贡嘎西坡徒步15日<br />&gt;&gt;重走洛克路——泸沽湖穿越亚丁18日</td>
            </tr>
        </table></td>
      </tr>
    </table></td>
    <td width="374" valign="top" bgcolor="#f0f0f0"><br />
      <table width="353" border="0" align="center" cellpadding="0" cellspacing="0" class="f12-gao1">
      <tr>
        <td><table width="300" border="0" align="left" cellpadding="5" cellspacing="0">
            <tr>
              <td width="32"><img src="images/heart02.png" width="32" height="32" /></td>
              <td width="268" class="h2-24">回憶幸福</td>
            </tr>
        </table></td>
      </tr>

      <tr>
        <td><img src="images/huiyi.jpg" width="353" height="166" /></td>
      </tr>
      <tr>
        <td><p class="f12-gao1">“此次出遊，飽覽大自然，擴張我的生命深度與廣度。<span class="STYLE6">   
               或許是有許多第一次的經歷 特有感觸吧！
          此次行程迥異於以往的觀光旅遊團，所以感覺與想法特多。。。”　　 <a href="#">More》》</a></span></p>
       </td>
      </tr>
    </table>
      <br />
      <table width="353" border="0" align="center" cellpadding="5" cellspacing="0">
        <tr>
          <td width="32"><img src="images/earth.png" width="32" height="32" /></td>
          <td width="301" class="h2-24">热门景点</td>
        </tr>
      </table>
      <table border="0" align="center" cellpadding="1" cellspacing="0">
        <tr>
          <td><img src="images/ad-index-02.jpg" width="175" height="168" /></td>
          <td><table border="0" cellspacing="0" cellpadding="2">
            <tr>
              <td><img src="images/ad-index-02.jpg" width="175" height="82" /></td>
            </tr>
            <tr>
              <td><img src="images/ad-index-02.jpg" width="175" height="82" /></td>
            </tr>
          </table></td>
        </tr>
      </table>
      <table width="353" border="0" align="center" cellpadding="0" cellspacing="0">
			
        <tr>
          <td>九寨沟 四姑娘山 海螺沟。。。。 </td>
        </tr>
      </table></td>
  </tr>
</table>
<br />
<br />
<jsp:include page="/front/footer.jsp" />
<script type="text/javascript" src="js/commons/index.js"></script>
</body>
</html>
