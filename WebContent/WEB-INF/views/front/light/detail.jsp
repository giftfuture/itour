<%@ page language="java" import="java.lang.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="/WEB-INF/views/server/resource.jsp"  %>
<!DOCTYPE html>
<html>
<head>
<title>轻旅行路线</title>
<link rel="stylesheet" href="${basePath}css/easyzoom/example.css" />
<link rel="stylesheet" href="${basePath}css/easyzoom/pygments.css" />
<link rel="stylesheet" href="${basePath}css/easyzoom/easyzoom.css" />  
<link rel="stylesheet" href="${basePath}css/bootstrap/bootstrapv3.css" />
<link rel="stylesheet" href="${basePath}css/bootstrap/qunit-1.11.0.css" />  
<link rel="stylesheet" type="text/css" href="${basePath}css/ScrollPic.css">
<script type="text/javascript" src="${basePath}js/commons/ScrollPic.js"></script>
<script type="text/javascript" src="${basePath}js/plug-in/easing.js"></script>
<script type="text/javascript" src="${basePath}js/plug-in/easyzoom.js"></script>
<script type="text/javascript" src="${basePath}js/plug-in/easytab/jquery.easytabs.min.js"></script>
<script type="text/javascript" src="${basePath}js/plug-in/easytab/jquery.hashchange.min.js"></script>
<script type="text/javascript" src="${basePath}js/plug-in/bootstrap/bootstrapv3.js"></script>
<script type="text/javascript" src="${basePath}js/plug-in/bootstrap/bootstrap-paginator.js"></script>
<script type="text/javascript" src="${basePath}js/plug-in/bootstrap/qunit-1.11.0.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
 <%@include file="/front/header.jsp"  %>
<table width="100%" border="0" align="center" cellpadding="10" cellspacing="0">
  <tr>
    <td class="h1-black">${rt.title}<input type="hidden" name="idrt" value="${rt.routeCode}"></td>
  </tr>
</table>
<table width="100%" border="0" align="center" cellpadding="10" cellspacing="0">
  <tr>
    <td width="624"><table width="600" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="600"><img src="${basePath}images/Route001.jpg" width="600" height="338" /></td>
      </tr>
      <tr>
        <td height="69"><table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
            <div align="center">
<!--滚动图片 start-->
<DIV class=rollphotos>
<DIV class=blk_29>
<DIV class=LeftBotton id=LeftArr><img src="${basePath}images/arrow01-1.gif" width="20" height="40" /></DIV>
<DIV class=Cont id=ISL_Cont_1><!-- 图片列表 begin -->
<c:forEach items="${rt.photoList}" var="photo">
<div class=box><A class=imgBorder target=_blank><IMG height=84 alt="landscape" src="${basePath }${photo}" width=124 border=0></A> 
</div>
</c:forEach>
<!-- 图片列表 end --></DIV>
<DIV class=RightBotton id=RightArr><img src="${basePath}images/arrow01-2.gif" width="20" height="40" /></DIV></DIV>
<SCRIPT language=javascript type=text/javascript>
		<!--//--><![CDATA[//><!--
		var scrollPic_02 = new ScrollPic();
		scrollPic_02.scrollContId   = "ISL_Cont_1"; //内容容器ID
		scrollPic_02.arrLeftId      = "LeftArr";//左箭头ID
		scrollPic_02.arrRightId     = "RightArr"; //右箭头ID
		scrollPic_02.frameWidth     = 908;//显示框宽度
		scrollPic_02.pageWidth      = 152; //翻页宽度
		scrollPic_02.speed          = 10; //移动速度(单位毫秒，越小越快)
		scrollPic_02.space          = 10; //每次移动像素(单位px，越大越快)
		scrollPic_02.autoPlay       = false; //自动播放
		scrollPic_02.autoPlayTime   = 3; //自动播放间隔时间(秒)
		scrollPic_02.initialize(); //初始化
		//--><!]]>
</SCRIPT>
</DIV>
<!--滚动图片 end-->
</div>
      </tr></table></td>
      </tr></table></td>
    <td width="476" valign="top"><div align="center"><span class="STYLE2">这条线路适合我吗？</span>
    </div>
      <table width="442" border="0" cellpadding="4" cellspacing="2" class="STYLE126">
        <tr>
          <td class="STYLE126"><div align="right"><strong>类型</strong></div></td>
          <td class="STYLE126"><strong>${rt.travelStyle} </strong><a href="#">Explain&gt;&gt;</a></td>
        </tr>
        <tr>
          <td width="70" class="STYLE126"><div align="right"><strong>线路编号</strong></div></td>
          <td width="350" class="STYLE126">${rt.routeCode}</td>
        </tr>
        <tr>
          <td class="STYLE126"><div align="right"><strong>旅行天数</strong></div></td>
          <td class="STYLE126">${rt.rcdDays}天<strong> </strong><a href="#">Explain&gt;&gt;</a></td>
        </tr>
        <tr>
          <td class="STYLE126"><div align="right"><strong>最高海拔</strong></div></td>
          <td class="STYLE126">${rt.mileage}米</td>
        </tr>
        <tr>
          <td class="STYLE126"><div align="right"><strong>起始地</strong></div></td>
          <td class="STYLE126">${rt.departure }<a href="#">Explain&gt;&gt;</a></td>
        </tr>
        <tr>
          <td class="STYLE126"><div align="right"><strong>完成地</strong></div></td>
          <td class="STYLE126">${rt.arrive }</td>
        </tr>
        <tr>
          <td class="STYLE126"><div align="right"><strong>交通方式</strong></div></td>
          <td class="STYLE126">${rt.transportation }</td>
        </tr>
        <tr>
          <td class="STYLE126"><div align="right"><strong>徒步难度</strong></div></td>
          <td class="STYLE126">
          <c:forEach items="${rt.diffRate}" var="dr">
          	 <img src="${basePath}images/shoe-1.gif" width="16" height="16" />
          </c:forEach>
          <c:forEach items="${rt.undiffRate}" var="rd">
         	 <img src="${basePath}images/shoe-2.gif" width="16" height="16" />
          </c:forEach>
           <a href="#">Explain&gt;&gt;</a></td>
        </tr>
        <tr>
          <td class="STYLE126"><div align="right"><strong>徒步距离 </strong></div></td>
          <td class="STYLE126">${rt.trekDistance }km</td>
        </tr>
        <tr>
          <td class="STYLE126"><div align="right"><strong>山峰类型</strong></div></td>
          <td class="STYLE126">${rt.mountStyle } <a href="#">Explain&gt;&gt; </a></td>
        </tr>
      </table>
      <span class="STYLE148"><br />
    注：每个团的需求都不同，可根据您的假期重新调整设计行程。</span><br />
    <br />
    <table border="0" cellpadding="2" cellspacing="0" class="f12-gao1">
      <tr>
        <td><img src="${basePath}images/facebook.png" width="24" height="24" /></td>
        <td><a target="_blank" href="https://www.facebook.com/dialog/feed">分享至FB</a></td>
        <td><img src="${basePath}images/share.png" width="24" height="24" /></td>
        <td><a target="_blank" href="javascript:itour.hiking.copyUrl()">复制链接</a></td>
        <td><img src="${basePath}images/favorite01.png" width="24" height="24" /></td>
        <td><a target="_blank"  href="javascript:itour.hiking.addFavorite()">收藏本页</a></td>
        <td><img src="${basePath}images/print.png" width="24" height="24" /></td>
        <td><a target="_blank"  href="javascript:itour.hiking.printff()">打印页面</a></td>
      </tr>
    </table></td>
  </tr>
</table>
<br />
<br />
<br />
<div id="tab-container" class='tab-container' width="100%" border="0" cellpadding="3" cellspacing="1">
 <ul class='etabs'>
   <li width="110" bgcolor="#F0F0F0" class='tab'><a href="#review">整体概览</a></li>
   <li width="110" bgcolor="#F0F0F0" class='tab'><a href="#detail-route">详细行程</a></li>
   <li width="110" bgcolor="#F0F0F0" class='tab'><a href="#need-know">行前需知</a></li>
   <li width="110" bgcolor="#F0F0F0" class='tab'><a href="#feed-back">客户反馈</a></li>
   <li width="110" bgcolor="#F0F0F0" class='tab'><a href="#consulting">咨询预定</a></li>
 </ul>
 <div class='panel-container'>
 <div id="review">
  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><img src="${basePath}images/frame1-1.gif" width="100%" height="7" /></td>
  </tr>
  <tr>
    <td background="${basePath}images/frame1-2.gif"><table width="100%" border="0" align="center" cellpadding="10" cellspacing="0">
      <tr>
        <td width="761" valign="top" class="STYLE126"><span class="STYLE3">设计理念</span><span class="STYLE2">：</span><br />
            <br />
          * 四姑娘山被譽為東方的阿爾卑斯，是戶外運動者的天堂。此線路可以欣賞長坪溝，海子溝風光。<br />
          <br />
          * 長坪溝穿越畢棚溝是中國十大最佳徒步線路之一。<br />
          <br />
          * 專業領隊及向導為您提供后勤補給及穿越保障。您只需要輕裝上陣即可 ：）<br />
          <br />
          <span class="STYLE148"><strong>主角旅行團隊定製服務：</strong><br />
            。想去哪~帶你去<br />
            。去幾天~隨便您<br />
            。一兩個人OK，三五好友也行，公司出行更好<br />
            。隨時為您安排私密出團 </span><br />
          <br />  
        </td>
        <td width="299" valign="top" class="STYLE126"><div align="center"><span class="STYLE3">行程地图</span><br />
   			<div class="easyzoom easyzoom--overlay">
				<a href="${basePath}images/map-002.jpg">
					<img src="${basePath}images/map-002.jpg" alt="" width="640" height="360" />
				</a>
			</div>
          </div>
        </td>
      </tr>
    </table>
	</td>
	</tr>
	</table>
  </div>
  <div id="detail-route" style="display:none">
  <script type="text/javascript">
 	$("#detail-route").load();
  </script>
<!--       <table width="100%" border="0" align="center" cellpadding="5" cellspacing="1">
        <tr>
          <td height="31" valign="middle" bgcolor="#F0F0F0" class="STYLE129"><div align="center"><strong><strong>天数</strong></strong></div></td>
          <td valign="middle" bgcolor="#F0F0F0" class="STYLE129"><div align="center"><strong><strong>行程</strong></strong></div></td>
          <td valign="middle" bgcolor="#F0F0F0" class="STYLE129"><div align="center">里程</div></td>
          <td valign="middle" bgcolor="#F0F0F0" class="STYLE129"><div align="center">景点</div></td>
          <td valign="middle" bgcolor="#F0F0F0" class="STYLE129"><div align="center">住宿</div></td>
        </tr>
        <tr>
          <td width="40" valign="middle" class="STYLE126"><div align="center">1</div></td>
          <td width="431" valign="middle" class="STYLE126">成都-四姑娘山</td>
          <td width="45" valign="middle" class="STYLE126">310km</td>
          <td width="372" valign="middle" class="STYLE126">【巴郎山】</td>
          <td width="106" valign="middle" class="STYLE126">四姑娘山镇</td>
        </tr>
        <tr>
          <td valign="middle" class="STYLE126"><div align="center">2</div></td>
          <td valign="middle" class="STYLE126">徒步：海子溝</td>
          <td valign="middle" class="STYLE126">30km</td>
          <td valign="middle" class="STYLE126">【海子沟】</td>
          <td valign="middle" class="STYLE126">四姑娘山镇</td>
        </tr>
        <tr>
          <td valign="middle" class="STYLE126"><div align="center">3</div></td>
          <td valign="middle" class="STYLE126">日隆-10km-喇嘛寺-5km-枯树滩-7km-木骡子</td>
          <td valign="middle" class="STYLE126">22Km</td>
          <td valign="middle" class="STYLE126">【<a href="Destinations-sgnscpg.html" target="_blank">长坪沟</a>】</td>
          <td valign="middle" class="STYLE126">露营</td>
        </tr>
        <tr>
          <td valign="middle" class="STYLE126"><div align="center">4</div></td>
          <td valign="middle" class="STYLE126">木骡子-3km-水打坝-11m-叉子沟尾营地  </td>
          <td valign="middle" class="STYLE126">14km</td>
          <td valign="middle" class="STYLE126">&nbsp;</td>
          <td valign="middle" class="STYLE126">露营</td>
        </tr>
        <tr>
          <td valign="middle" class="STYLE126"><div align="center">5</div></td>
          <td valign="middle" class="STYLE126">叉子沟尾-垭口-三颗树-白龙瀑布-卓玛湖-上海子接待站-理县</td>
          <td valign="middle" class="STYLE126">23km</td>
          <td valign="middle" class="STYLE126">【毕棚沟】</td>
          <td valign="middle" class="STYLE126">理县/汶川</td>
        </tr>
        <tr>
          <td valign="middle" class="STYLE126"><div align="center">6</div></td>
          <td valign="middle" class="STYLE126">返回成都</td>
          <td valign="middle" class="STYLE126">200k</td>
          <td valign="middle" class="STYLE126">&nbsp;</td>
          <td valign="middle" class="STYLE126">&nbsp;</td>
        </tr>
      </table> -->
<table width="100%" border="0" align="center" cellpadding="5" cellspacing="0">
  <tr>
    <td width="32"><span class="h2-24"><img src="${basePath}images/detail.png" width="32" height="32" /></span></td>
    <td width="1028"><span class="h2-24"><span class="STYLE148">详细日程</span></span></td>
  </tr>
</table>
<%-- <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><img src="${basePath}images/frame1-1.gif" width="1140" height="7" /></td>
  </tr>
  <tr>
    <td background="${basePath}images/frame1-2.gif"><table width="1100" border="0" align="center" cellpadding="10" cellspacing="0">
          <tr>
            <td width="78" class="STYLE148"><strong>Day 01 </strong></td>
            <td width="972"><span class="STYLE9">成都-四姑娘山</span><span class="STYLE148"><strong> 310km 住：四姑娘山鎮 </strong></span></td>
          </tr>
          <tr>
            <td valign="top">&nbsp;</td>
            <td valign="top"><span class="STYLE126">成都出發，翻越巴郎山，抵達四姑娘山，適應高原海拔。<br />
                  <br />
              【巴郎山】海拔5040米，但其景色极为美丽，白云如海，雪山连绵，草甸起伏<span class="STYLE10">。（备注：调用景区的简述和图片 可选图片）<br />
                <br />
                </span></span>
                <table width="300" border="0" cellspacing="1" cellpadding="5">
                  <tr>
                    <td><div align="center"><img src="${basePath}images/Route001.jpg" width="271" height="152" /></div></td>
                  </tr>
                  <tr>
                    <td class="STYLE126"><div align="center">巴郎山</div></td>
                  </tr>
              </table></td>
          </tr>
        </table>
        <table width="100%" border="0" align="center" cellpadding="10" cellspacing="0">
          <tr>
            <td width="78" class="STYLE148"><strong>Day 02 </strong></td>
            <td width="972"><span class="STYLE148"><strong><span class="STYLE126">徒步：海子溝</span> 30km 住：四姑娘山镇</strong></span></td>
          </tr>
          <tr>
            <td valign="top">&nbsp;</td>
            <td valign="top">海子沟口徒步一天。可带一些干粮，晚上回四姑娘山镇上住。<br />
                <br />
                <span class="STYLE126">【海子沟】</span>：风景如画<br />
                <table width="300" border="0" cellspacing="1" cellpadding="5">
                  <tr>
                    <td><div align="center"><img src="${basePath}images/Route001.jpg" width="271" height="152" /></div></td>
                    <td><div align="center"><img src="${basePath}images/Route001.jpg" width="271" height="152" /></div></td>
                    <td><div align="center"></div></td>
                  </tr>
                  <tr>
                    <td class="STYLE126"><div align="center">海子沟</div></td>
                    <td class="STYLE126"><div align="center">海子沟徒步</div></td>
                    <td><div align="center"></div></td>
                  </tr>
              </table></td>
          </tr>
        </table>
        <table width="100%" border="0" align="center" cellpadding="10" cellspacing="0">
          <tr>
            <td width="78" class="STYLE148"><strong>Day 03 </strong></td>
            <td width="972"><span class="STYLE148"><strong><span class="STYLE126">四姑娘山镇-10km-喇嘛寺-5km-枯树滩-7km-木骡子 22km 住：木骡子营地 </span></strong></span></td>
          </tr>
          <tr>
            <td valign="top">&nbsp;</td>
            <td valign="top">海子沟口徒步一天。可带一些干粮，晚上回四姑娘山镇上住。<br />
                <br />
                <span class="STYLE126">【海子沟】</span>：风景如画<br />
                <table width="300" border="0" cellspacing="1" cellpadding="5">
                  <tr>
                    <td><div align="center"><img src="images/Route001.jpg" width="271" height="152" /></div></td>
                    <td><div align="center"><img src="images/Route001.jpg" width="271" height="152" /></div></td>
                    <td><div align="center"></div></td>
                  </tr>
                  <tr>
                    <td class="STYLE126"><div align="center">长坪沟徒步</div></td>
                    <td class="STYLE126"><div align="center">长坪沟</div></td>
                    <td><div align="center"></div></td>
                  </tr>
              </table></td>
          </tr>
        </table>
        <table width="100%" border="0" align="center" cellpadding="10" cellspacing="0">
          <tr>
            <td width="78" class="STYLE148"><strong>Day 04</strong></td>
            <td width="972"><span class="STYLE148"><strong><span class="STYLE126">四姑娘山镇-10km-喇嘛寺-5km-枯树滩-7km-木骡子 22km 住：木骡子营地 </span></strong></span></td>
          </tr>
          <tr>
            <td valign="top">&nbsp;</td>
            <td valign="top">海子沟口徒步一天。可带一些干粮，晚上回四姑娘山镇上住。<br />
                <br />
                <span class="STYLE126">【海子沟】</span>：风景如画<br />
                <table width="300" border="0" cellspacing="1" cellpadding="5">
                  <tr>
                    <td><div align="center"><img src="images/Route001.jpg" width="271" height="152" /></div></td>
                    <td><div align="center"><img src="images/Route001.jpg" width="271" height="152" /></div></td>
                    <td><div align="center"></div></td>
                  </tr>
                  <tr>
                    <td class="STYLE126"><div align="center">长坪沟徒步</div></td>
                    <td class="STYLE126"><div align="center">长坪沟</div></td>
                    <td><div align="center"></div></td>
                  </tr>
              </table></td>
          </tr>
        </table>
        <table width="100%" border="0" align="center" cellpadding="10" cellspacing="0">
          <tr>
            <td width="78" class="STYLE148"><strong>Day 05</strong></td>
            <td width="972"><span class="STYLE148"><strong><span class="STYLE126">四姑娘山镇-10km-喇嘛寺-5km-枯树滩-7km-木骡子 22km 住：木骡子营地 </span></strong></span></td>
          </tr>
          <tr>
            <td valign="top">&nbsp;</td>
            <td valign="top">海子沟口徒步一天。可带一些干粮，晚上回四姑娘山镇上住。<br />
                <br />
                <span class="STYLE126">【海子沟】</span>：风景如画<br />
                <table width="300" border="0" cellspacing="1" cellpadding="5">
                  <tr>
                    <td><div align="center"><img src="images/Route001.jpg" width="271" height="152" /></div></td>
                    <td><div align="center"><img src="images/Route001.jpg" width="271" height="152" /></div></td>
                    <td><div align="center"></div></td>
                  </tr>
                  <tr>
                    <td class="STYLE126"><div align="center">长坪沟徒步</div></td>
                    <td class="STYLE126"><div align="center">长坪沟</div></td>
                    <td><div align="center"></div></td>
                  </tr>
              </table></td>
          </tr>
        </table>
        <table width="100%" border="0" align="center" cellpadding="10" cellspacing="0">
          <tr>
            <td width="78" class="STYLE148"><strong>Day 06</strong></td>
            <td width="972"><span class="STYLE148"><strong><span class="STYLE126">四姑娘山镇-10km-喇嘛寺-5km-枯树滩-7km-木骡子 22km 住：木骡子营地 </span></strong></span></td>
          </tr>
          <tr>
            <td valign="top">&nbsp;</td>
            <td valign="top">海子沟口徒步一天。可带一些干粮，晚上回四姑娘山镇上住。<br />
                <br />
                <span class="STYLE126">【海子沟】</span>：风景如画<br />
                <table width="300" border="0" cellspacing="1" cellpadding="5">
                  <tr>
                    <td><div align="center"><img src="images/Route001.jpg" width="271" height="152" /></div></td>
                    <td><div align="center"><img src="images/Route001.jpg" width="271" height="152" /></div></td>
                    <td><div align="center"></div></td>
                  </tr>
                  <tr>
                    <td class="STYLE126"><div align="center">长坪沟徒步</div></td>
                    <td class="STYLE126"><div align="center">长坪沟</div></td>
                    <td><div align="center"></div></td>
                  </tr>
              </table></td>
          </tr>
      </table></td></tr>
  <tr>
    <td><img src="images/frame1-3.gif" width="100%" height="7" /></td>
  </tr>
</table> --%>
      <br />
      <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td><span class="STYLE7">注：以上行程僅供參考，可根据您的假期重新调整设计。</span></td>
        </tr>
      </table>  
<%-- <table width="100%" border="0" align="center" cellpadding="5" cellspacing="0">
  <tr>
    <td width="32"><img src="${basePath}images/msg02.png" width="32" height="32" /></td>
    <td width="1028"><span class="h2-24"><span class="STYLE148">详细日程回忆幸福<span class="STYLE14">——将幸福定格</span></span></span></td>
  </tr>
</table>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><img src="${basePath}images/frame1-1.gif" width="100%" height="7" /></td>
  </tr>
  <tr>
    <td background="${basePath}images/frame1-2.gif">
    <table width="1100" border="0" align="center" cellpadding="10" cellspacing="0">
        <tr>
          <td valign="top"><span class="STYLE126"><strong><br />
            </strong></span>
              <table width="1000" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="569" valign="top"><table width="547" border="0" cellpadding="2" cellspacing="2" class="STYLE126">
                      <tr>
                        <td width="78" bgcolor="#f0f0f0"><div align="center"><strong>线路：</strong></div></td>
                        <td width="455"><a href="#">四姑娘山海子沟徒步、长坪沟穿越毕棚沟</a></td>
                      </tr>
                      <tr>
                        <td bgcolor="#f0f0f0"><div align="center"><strong>客户：</strong></div></td>
                        <td>台湾 文斐 4人</td>
                      </tr>
                      <tr>
                        <td bgcolor="#f0f0f0"><div align="center"><strong>日期：</strong></div></td>
                        <td>2016年6月16日</td>
                      </tr>
                      <tr>
                        <td bgcolor="#f0f0f0"><div align="center"><span class="STYLE12">内容：</span></div></td>
                        <td>此次出遊，飽覽大自然，擴張我的生命深度與廣度。 <br />
                          或許是有許多第一次的經歷 特有感觸吧！<br />
                          此次行程迥異於以往的觀光旅遊團，所以感覺與想法特多。<br />
                          <a href="#">展开</a>》》</td>
                      </tr>
                  </table></td>
                  <td width="431"><table width="260" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="260"><div align="center"><img src="${basePath}images/Route001.jpg" width="305" height="165" /></div></td>
                      </tr>
                  </table></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
              </table>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="569" valign="top"><table width="547" border="0" cellpadding="2" cellspacing="2" class="STYLE126">
                      <tr>
                        <td width="78" bgcolor="#f0f0f0"><div align="center"><strong>线路：</strong></div></td>
                        <td width="455"><a href="#">四姑娘山海子沟徒步、长坪沟穿越毕棚沟</a></td>
                      </tr>
                      <tr>
                        <td bgcolor="#f0f0f0"><div align="center"><strong>客户：</strong></div></td>
                        <td>台湾 文斐 4人</td>
                      </tr>
                      <tr>
                        <td bgcolor="#f0f0f0"><div align="center"><strong>日期：</strong></div></td>
                        <td>2016年6月16日</td>
                      </tr>
                      <tr>
                        <td bgcolor="#f0f0f0"><div align="center"><span class="STYLE12">内容：</span></div></td>
                        <td>此次出遊，飽覽大自然，擴張我的生命深度與廣度。 <br />
                          或許是有許多第一次的經歷 特有感觸吧！<br />
                          此次行程迥異於以往的觀光旅遊團，所以感覺與想法特多。<br />
                          <a href="#">展开</a>》》</td>
                      </tr>
                  </table></td>
                  <td width="431"><table width="260" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="260"><div align="center"><img src="${basePath}images/Route001.jpg" width="305" height="165" /></div></td>
                      </tr>
                  </table></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
              </table>
            <span class="STYLE126"><a href="#">更多》》</a><br />
              注：更多则转到专门的客反馈页面<br />
              <br />
              </span>
              <div align="center"></div></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td><img src="${basePath}images/frame1-3.gif" width="1140" height="7" /></td>
  </tr>
</table> --%>
  </div>
  <div id="need-know" style="display:none">
  <table width="100%" border="0" align="center" cellpadding="5" cellspacing="0">
  <tr>
    <td width="32"><img src="images/document2.png" width="32" height="32" /></td>
    <td width="1028"><span class="h2-24"><span class="STYLE148">行前需知</span></span></td>
  </tr>
</table>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><img src="${basePath }images/frame1-1.gif" width="1140" height="7" /></td>
  </tr>
  <tr>
    <td background="${basePath }images/frame1-2.gif"><table width="1100" border="0" align="center" cellpadding="10" cellspacing="0">
        <tr>
          <td>★衣：高原的陽光很美也易傷人，墨鏡帶沿的帽子防曬露等是必要的，帶件外套，陽光下的溫度和陰涼處都有很大的差別，隨時加衣；<br />
★食：飲食和內地差別不大，各種菜系基本都有，有興趣還可以品嘗地道的藏餐以及印度尼泊爾等風味，個別景點需要我們為您準備路餐；<br />
★住：酒店與內地別無二致，酒店配套設施略少一些，但客房和內地同樣舒適，星級酒店配備氧氣瓶等供氧設備；<br />
★行：我們的常規觀光行程所達之處，路況都非常好一般都使用空調冷巴，旅途中，坐在舒適的座椅上，窗外全是風景。</td>
        </tr>
      </table>
    <p>&nbsp;</p></td>
  </tr>
  <tr>
    <td><img src="${basePath }images/frame1-3.gif" width="100%" height="7" /></td>
  </tr>
</table>
  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><img src="${basePath}images/frame1-1.gif" width="1140" height="7" /></td>
  </tr>
  <tr>
    <td background="${basePath}images/frame1-2.gif"><table width="1100" border="0" align="center" cellpadding="10" cellspacing="0">
        <tr>
          <td valign="top"><p>★<strong>没有最好的行程，只有最适合您的旅程。</strong><br />
            ★我们了解您的疑虑，所以只需告诉我们您的需求，其它 的我们帮你搞定。 <br />
            ★想去哪~帶你去，去幾天~隨便您，一兩個人OK，三五好友亦可，多人同行也行。<br />
            ★用车：越野車、商務車、旅行巴士，要什么随你挑。經驗豐富的司機為您保駕護航。<br />
            ★酒店：三至五星級酒店，你說了算。<br />
            ★用餐：享用各種美食。<br />
            ★導遊：專業導遊服務 <br />
            <br />
            <span class="STYLE7">No Shopping， No 自费。</span><br />
            <br />
            <span class="STYLE7">害怕这样的行程所费不赀吗？ 
              2016~2017 经济型的参考价格：</span></p>
              <table width="541" border="0" cellspacing="0" cellpadding="2">
                <tr>
                  <td width="84"><div align="right" class="STYLE126">4人：</div></td>
                  <td width="457" class="STYLE126">淡季价（几月-几月）400元/人，旺季价（几月-几月）600元/人 起 </td>
                </tr>
                <tr>
                  <td><div align="right" class="STYLE126">6人：</div></td>
                  <td class="STYLE126">淡季价（几月-几月）400元/人，旺季价（几月-几月）600元/人 起 </td>
                </tr>
                <tr>
                  <td><div align="right" class="STYLE126">10人以上：</div></td>
                  <td class="STYLE126">淡季价（几月-几月）400元/人，旺季价（几月-几月）600元/人 起 </td>
                </tr>
              </table>
            <span class="STYLE126"> 备注：以上价格包含行程策划、全程用车及基3星级酒店。暂未包含美食、门票、导游等其它服务 。需要更多的服务？告诉我们就行。<br />
              <br />
              <span class="STYLE148">随时出发，随时联系，你负责旅行，杂事儿我们搞定：）</span><br />
            </span>
            <table width="600" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="336"><span class="STYLE3">告诉我们您的需求，免费为您策划方案 GO! </span></td>
                <td width="264"><span class="STYLE3"><img src="${basePath}images/tailor.gif" width="134" height="32" /></span></td>
              </tr>
            </table></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td><img src="${basePath}images/frame1-3.gif" width="100%" height="7" /></td>
  </tr>
</table>
  </div>
  <div id="feed-back" style="display:none">
  <table width="100%" border="0" align="center" cellpadding="5" cellspacing="0">
  <tr>
    <td width="32"><img src="${basePath}images/ask03.png" width="32" height="32" /></td>
    <td width="1028"><span class="h2-24"><span class="STYLE148"><span class="STYLE14"><span class="STYLE2">还想了解什么吗？快来跟我们说说：</span><a href="#"></a></span></span></span></td>
  </tr>
</table>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><img src="${basePath}images/frame1-1.gif" width="1140" height="7" /></td>
  </tr>
  <tr>
    <td background="${basePath}images/frame1-2.gif">
    <form name="fastask"  class="ui-form">
    <table width="100%" border="0" align="center" cellpadding="10" cellspacing="0">
        <tr>
          <td width="327" valign="top"><table width="303" border="0" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
              <tr>
                <td height="30" colspan="2" bgcolor="#CCCCCC" class="STYLE140"><div align="center" class="STYLE3">快速询问</div>
                    <div align="center"></div></td>
              </tr>
              <tr>
                <td width="51" bgcolor="#F0F0F0" class="STYLE140"><div align="right" class="STYLE126"><strong>*姓名</strong>:</div></td>
                <td width="249" bgcolor="#F0F0F0" class="STYLE126"><input type="text" name="name"  data-options="required:true,validType:'string'"/><!--  -->
                    <select name="sex" id="select">
                      <option value="1">先生</option>
                      <option value="0">女士</option>
                    </select>
                    <label></label>
                </td>
              </tr>
              <tr>
                <td bgcolor="#F0F0F0" class="STYLE140"><div align="right" class="STYLE126"><strong>*电邮</strong>:</div></td>
                <td bgcolor="#F0F0F0" class="STYLE126"><input type="text" class="easyui-validatebox textbox" name="email" data-options="required:true,validType:'email'"/>
                    <a href="#">Explains</a>&gt;&gt; </td>
              </tr>
              <tr>
                <td bgcolor="#F0F0F0" class="STYLE140"><div align="right"><strong>电话</strong>:</div></td>
                <td bgcolor="#F0F0F0" class="STYLE126"><input type="text" name="mobile" class="easyui-validatebox textbox" data-options="validType:'phoneNum'"/>
                    <a href="#">Explains</a>&gt;&gt; </td>
              </tr>
              <tr>
                <td bgcolor="#F0F0F0" class="STYLE140"><div align="right"><strong>标题</strong>:</div></td>
                <td bgcolor="#F0F0F0" class="STYLE140"><label>
                  <input type="text" name="title" />
                </label></td>
              </tr>
              <tr>
                <td bgcolor="#F0F0F0" class="STYLE140"><div align="right"><strong>内容</strong>:</div></td>
                <td bgcolor="#F0F0F0" class="STYLE140"><label>
                  <textarea name="content" cols="30" rows="5" ></textarea>
                </label></td>
              </tr>
              <tr>
                <td bgcolor="#F0F0F0" class="STYLE140">验证码</td>
                <td bgcolor="#F0F0F0" class="STYLE126"><div class="tip">
     		 	<input type="text" id="verifyCode" class=" easyui-validatebox" title="验证码" name="verifyCode"  data-options="required:true,message:'请输入验证码!'"/><br/>
           		<img alt="点击更换" src="${basePath}ImageServlet" id="validateCodeImg" onclick="document.getElementById('validateCodeImg').src='${basePath}ImageServlet?'+Math.random()">
           		&nbsp;&nbsp;<a href="javascript:void(0)" onclick="document.getElementById('validateCodeImg').src='${basePath}ImageServlet?'+Math.random()">看不清，换一张</a>
      </div></td>
              </tr>
              <tr>
                <td bgcolor="#F0F0F0" class="STYLE140">&nbsp;</td>
                <td bgcolor="#F0F0F0" class="STYLE140"><input type="button" name="SubmitSend" value="Send" /></td>
              </tr>
              <tr>
                <td bgcolor="#F0F0F0" class="STYLE140">&nbsp;</td>
                <td bgcolor="#F0F0F0" class="STYLE140">*我们会对您的资料保密。</td>
              </tr>
          </table></td>
          <td width="733" valign="top"><div>
         		<div id="fbcontent"></div>
			    <ul id='fbpage'></ul>
			</div>
		
            </td>
        </tr>
      </table></form></td>
  </tr>
  <tr>
    <td><img src="images/frame1-3.gif" width="100%" height="7" /></td>
  </tr>
</table>
  </div>
  <div id="consulting" style="display:none;">
   <table width="100%" border="0" align="center" cellpadding="5" cellspacing="0">
	  <tr>
	    <td width="32"><img src="${basePath}images/heart02.png" width="32" height="32" /></td>
	    <td width="1028"><span class="h2-24"><span class="STYLE148"><span 
	class="STYLE14"><span class="STYLE2">服务及报价</span></span></span></span></td>
	  </tr>
	</table>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><img src="images/frame1-1.gif" width="100%" height="7" /></td>
  </tr>
  <tr>
    <td background="images/frame1-2.gif">
	<table width="100%" border="0" align="center" cellpadding="10" cellspacing="0">
        <tr>
          <td valign="top"><br />
          <table width="1100" border="0" align="center" cellpadding="4" cellspacing="2">
              <tr>
                <td width="95" bgcolor="#f0f0f0"><p align="right"><strong>门票：</strong></p></td>
                <td width="529"><span class="STYLE126"> 1.</span>海子沟门票50元<br />
                    <span class="STYLE126">2.</span>长坪沟户外门票150元<br />
                    <span class="STYLE126">3.毕棚沟门票80元/人
                      观光车 70元/人</span></td>
                <td width="444">350元/人</td>
              </tr>
              <tr>
                <td bgcolor="#f0f0f0"><div align="right"><strong>导游：</strong></div></td>
                <td><span class="STYLE126"> 全程中文导游 </span></td>
                <td>450元/人</td>
              </tr>
              <tr>
                <td bgcolor="#f0f0f0"><div align="right"><strong>酒店：<br />
                </strong></div></td>
                <td>1.贵山商务酒店 2夜<br />
                  2.露营 2夜 <br />
                  3.汶川大酒店 1夜<br />
                  <span class="STYLE10"></span></td>
                <td>420元/人</td>
              </tr>
              <tr>
                <td bgcolor="#f0f0f0"><div align="right"><strong>用车：<br />
                </strong></div></td>
                <td><span class="STYLE126"> 全程用车</span><br /></td>
                <td>1100元/人</td>
              </tr>
              <tr>
                <td bgcolor="#f0f0f0"><div align="right"><strong>用餐：<br />
                          <br />
                </strong></div></td>
                <td><label> 早餐酒店用<br />
                  正餐 共11餐，特色餐2餐（<span class="STYLE126">钦善斋药膳火锅 </span>、道地四川火锅）</label>              </td>
                <td>500元/人</td>
              </tr>
              <tr>
                <td bgcolor="#f0f0f0"><div align="right"><strong>保险：</strong></div></td>
                <td><span class="STYLE126">
                  <label></label>
                </span><span class="STYLE126">内宾旅游意外保险 </span></td>
                <td>10元/人</td>
              </tr>
              <tr>
                <td bgcolor="#f0f0f0"><div align="right"><strong>综费</strong><strong>：</strong></div></td>
                <td><span class="STYLE126">旅行社综合服务费</span></td>
                <td>200元/人</td>
              </tr>
              <tr>
                <td bgcolor="#f0f0f0"><div align="right"><strong>娱乐：</strong></div></td>
                <td>成都川剧表演 </td>
                <td>200元/人</td>
              </tr>

              <tr>
                <td bgcolor="#f0f0f0"><div align="center"><strong>报价</strong></div></td>
                <td>大人：3230元/人*4人<br />
                  小孩：2330元/人*2人（小孩不含门票） </td>
                <td>&nbsp;</td>
              </tr>
			  <tr><td><a href="${basePath}hiking/toQuote2/${rt.alias}">预定</a></td></tr>	
            </table>          
            <br /></td></tr>
      </table>
      </td>
      </tr>
      </table>
  </div>
  </div>
  </div>
<script type="text/javascript" src="${basePath}js/ux/front/light/detail.js"></script>
<%@include file="/front/footer.jsp" %>
</body>
</html>



