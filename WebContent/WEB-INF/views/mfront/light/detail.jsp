<%@ page language="java" import="java.lang.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="/WEB-INF/views/server/mResource.jsp"  %>
<!DOCTYPE html>
<html>
<head>
<title>轻旅行-${rt.title }</title>
<meta http-equiv="keywords" content="轻旅行">  
<meta http-equiv="description" content="${rt.shortContent }"> 
<link rel="stylesheet" href="cssm/magiczoom.css" type="text/css" media="screen" />   
<link rel="stylesheet" href="${basePath}cssm/bootstrap/bootstrapv3.css" />
<link rel="stylesheet" href="${basePath}cssm/bootstrap/qunit-1.11.0.css" />  
<link rel="stylesheet" type="text/css" href="${basePath}cssm/ScrollPic.css">
<script type="text/javascript" src="${basePath}jsm/commons/ScrollPic.js"></script>
<script type="text/javascript" src="${basePath}jsm/plug-in/easing.js"></script>
<script type="text/javascript" src="${basePath}jsm/plug-in/easytab/jquery.easytabs.min.js"></script>
<script type="text/javascript" src="${basePath}jsm/plug-in/easytab/jquery.hashchange.min.js"></script>
<script type="text/javascript" src="${basePath}jsm/plug-in/bootstrap/bootstrapv3.js"></script>
<script type="text/javascript" src="${basePath}jsm/plug-in/bootstrap/bootstrap-paginator.js"></script>
<script type="text/javascript" src="${basePath}jsm/plug-in/bootstrap/qunit-1.11.0.js"></script>
<script type="text/javascript" src="${basePath}jsm/plug-in/zeroclip/ZeroClipboard.js"></script>
<script type="text/javascript" src="${basePath}jsm/plug-in/zeroclip/ZeroClipboard.swf"></script>
<script type="text/javascript" src="${basePath}jsm/plug-in/pdf/html2canvas.min.js"></script>
<script type="text/javascript" src="${basePath}jsm/plug-in/pdf/jspdf.min.js"></script>
<script type="text/javascript" src="${basePath}jsm/plug-in/magiczoom.js"></script>
<script type="text/javascript">
</script>
</head>
<body>
 <%@include file="/frontm/header.jsp"  %>
  <div class="bdsharebuttonbox">
<a href="#" class="bds_more" data-cmd="more"></a> 
 <a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>
 <a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a>
 <a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a> 
 <a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a>
  <a href="#"  class="bds_fbook" data-cmd="fbook" title="分享到脸书"></a>
<a href="#"  class="bds_twi" data-cmd="twi" title="分享到twitter"></a></div>  
<center>
<table class="commontb" align="center" width="100%" style="width:100%;text-align:center;float:middle" >
  <tr>
    <td width="60%" style="float:middle" class="h1-black">${rt.title}</td><td><input type="hidden" name="idrt" value="${rt.routeCode}"></td>
  </tr>
  <tr>
   <td>
      <table style="float:middle;text-align:center;" align="center" valign="top" >
        <tr>
        <td width="100%" name="magnifying"><div class="bigImage"><img src="${basePath}${rt.cover}" style="border:none;width:100%;float:middle" border="0px" width="100%"/></div></td>
      </tr>
      <tr>
        <td height="69">
            <div align="center">
<!--滚动图片 start-->
<DIV class=rollphotos>
<DIV class=blk_29>
<DIV class=LeftBotton  style="margin-right:15px" id=LeftArr><img src="${basePath}images/arrow01-1.gif" width="20" height="40" /></DIV>
<DIV style="margin-left:15px" class=Cont id=ISL_Cont_1><!-- 图片列表 begin -->
<c:forEach items="${rt.photoList}" var="photo">
<div class=box><A class=imgBorder target=_blank><IMG alt="landscape" src="${basePath }${photo}"   border=0 /></A> 
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
        scrollPic_02.frameWidth     = '100%';//显示框宽度
        scrollPic_02.pageWidth      = '25%'; //翻页宽度
        scrollPic_02.speed          = 20; //移动速度(单位毫秒，越小越快)
        scrollPic_02.space          = 10; //每次移动像素(单位px，越大越快)
        scrollPic_02.autoPlay       = true; //自动播放
        scrollPic_02.autoPlayTime   = 3; //自动播放间隔时间(秒)
        scrollPic_02.initialize(); //初始化
        //--><!]]>
</SCRIPT>
</DIV>
<!--滚动图片 end-->
</div>
     </td></tr></table></td>
</tr>
<!-- </table>
<table class="commontb" align="center" width="100%"  style="width:100%;text-align:center;float:middle" > -->
<tr>
 <td style="text-align:center;float:middle; "> 
     <table style="text-align:center;float:middle;" align="center">
      <tbody><tr>
        <td><img src="images/frame2-1.gif" height="7"></td>
      </tr>
      <tr>
        <td background="images/frame2-2.gif"><table cellspacing="0" cellpadding="0" border="0" align="center">
          <tbody><tr>
            <td><div align="center"><span class="STYLE2">这条线路适合我吗？</span></div></td>    
          </tr>
          <tr>
            <td><table class="STYLE126" width="100%" cellspacing="2" cellpadding="4" border="0">
              <tbody><tr>
          <td class="STYLE126"><div align="right"><strong>类型</strong></div></td>
          <td class="STYLE126" style="text-align:left"><strong>${rt.travelStyle} </strong><a href="javascript:void(0)" title="${rt.travelStyle}"> </a></td>
        </tr>
        <tr>
          <td width=" " class="STYLE126"><div align="right"><strong>线路编号</strong></div></td>
          <td width=" " class="STYLE126" style="text-align:left">${rt.routeCode}</td>
        </tr>
        <tr>
          <td class="STYLE126"><div align="right"><strong>旅行天数</strong></div></td>
          <td class="STYLE126" style="text-align:left">${rt.rcdDays}天<strong> </strong><a href="javascript:void(0)" title="${rt.rcdDays}"> </a></td>
        </tr>
        <tr>
          <td class="STYLE126"><div align="right"><strong>最高海拔</strong></div></td>
          <td class="STYLE126" style="text-align:left">${rt.mileage}米</td>
        </tr>
        <tr>
          <td class="STYLE126"><div align="right"><strong>起始地</strong></div></td>
          <td class="STYLE126" style="text-align:left">${rt.departure }<a href="javascript:void(0)" title="${rt.departure}"> </a></td>
        </tr>
        <tr>
          <td class="STYLE126"><div align="right"><strong>完成地</strong></div></td>
          <td class="STYLE126" style="text-align:left">${rt.arrive }</td>
        </tr>
       <tr>
          <td class="STYLE126"><div align="right"><strong>路线</strong></div></td>
          <td class="STYLE126" style="text-align:left">${rt.routeLine }</td>
        </tr>
        <tr>
          <td class="STYLE126"><div align="right"><strong>交通方式</strong></div></td>
          <td class="STYLE126" style="text-align:left">${rt.transportation }</td>
        </tr>
         <c:if test="${not empty rt.difficultyRate}">
        <tr>
          <td class="STYLE126"><div align="right"><strong>徒步难度</strong></div></td>
          <td class="STYLE126" style="text-align:left">
          <c:forEach items="${rt.diffRate}" var="dr">
             <img src="${basePath}images/shoe-1.gif" width="16" height="16" />
          </c:forEach>
          <c:forEach items="${rt.undiffRate}" var="rd">
             <img src="${basePath}images/shoe-2.gif" width="16" height="16" />
          </c:forEach>
           <a href="javascript:void(0)" title="深色鞋子标识徒步难度等级"> </a></td>
        </tr>
        </c:if>
         <c:if test="${not empty rt.trekDistance}">
        <tr>
          <td class="STYLE126"><div align="right"><strong>徒步距离 </strong></div></td>
          <td class="STYLE126" style="text-align:left">${rt.trekDistance }km</td>
        </tr>
        </c:if>
         <c:if test="${not empty rt.mountStyle}">
        <tr>
          <td class="STYLE126"><div align="right"><strong>山峰类型</strong></div></td>
          <td class="STYLE126" style="text-align:left">${rt.mountStyle } <a href="javascript:void(0)" title="${rt.mountStyle}"> </a></td>
        </tr>
        </c:if>
          <tr>
        <td colspan=2><span class="STYLE148">注：每个团的需求都不同，可根据您的假期重新调整设计行程。</span></td>
        </tr>
      </table>
    <table class="f12-gao1">
      <tr>
        <%-- <td><img src="${basePath}images/facebook.png" width=" " height=" " />
        <a target="_blank" href="https://www.facebook.com/dialog/feed">分享至FB</a></td>
        <td><img src="${basePath}images/share.png" width=" " height=" " />
        <a target="_blank" id="copyurl" href="javascript:void(0)" data-clipboard-target="flashcopier">复制链接</a><div style="display:none" id="flashcopier"></div></td> --%>
        <td style="text-align:left;"><img src="${basePath}images/favorite01.png" width=" " height=" " />
        <a target="_blank"  href="javascript:itour.hiking.addFavorite()" rel="sidebar">收藏本页</a></td>
       <%--  <td><img src="${basePath}images/print.png" width=" " height=" " />
        <a target="_blank"  href="javascript:itour.hiking.printff()">打印页面</a></td> --%>
      </tr>
    <%--   <tr><td><a href="${basePath}light/toQuote2/${rt.alias}" class="easyui-linkbutton">预定本路线</a></td></tr> --%>
    </table></td>
  </tr>
</tbody></table>
    </td>
  </tr>
  <tr>
    <td><img src="images/frame2-3.gif" height="7"></td>
  </tr>
  </tbody>
</table>
</td></tr>
<tr><td style="text-align:center;float:middle;width:100%;" align="center"> 
<div class="frametb" id="tab-container" class='tab-container' width="100%"  style="width:100%;text-align:center;float:middle" >
 <ul class='etabs' style="text-align:left;float:left">
   <li width="15%" bgcolor="#F0F0F0" class='tab'><a href="${basePath}light-${alias}#review" target="_self">整体概览</a></li>
   <li width="15%" bgcolor="#F0F0F0" class='tab'><a href="${basePath}light-${alias}#detail-route" target="_self">详细行程</a></li>
   <li width="15%" bgcolor="#F0F0F0" class='tab'><a href="${basePath}light-${alias}#need-know" target="_self">行前需知</a></li>
   <li width="15%" bgcolor="#F0F0F0" class='tab'><a href="${basePath}light-${alias}#show-happy" target="_self">回忆幸福</a></li>
 <!--   <li width="110" bgcolor="#F0F0F0" class='tab'><a href="#consulting">咨询预定</a></li> -->
 </ul>
 <div class='panel-container'>
 <div id="review" name="review">
  <table class="frametb"   align="center">
  <tr>
      <td width="100%" style="align:left;float:left"><img  src="${basePath}images/frame1-1.gif" height="7" /></td>
  </tr>
  <tr>
    <td background="${basePath}images/frame1-2.gif" width="100%"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="40%" valign="top" class="STYLE126" style="text-align:left"><span class="STYLE3">设计理念</span><span class="STYLE2">：</span><br />
            ${rt.designConcept }
          <span class="STYLE148"><strong>主角旅行團隊定製服務：</strong><br />
          ${rt.customizedService }</span>
        </td>
         <c:if test="${not empty rt.routeMap}">
	        <td width="60%" valign="top" class="STYLE126"><div align="center"><span class="STYLE3">行程地图</span><br />
	            <div>
	                <a href="${basePath}${rt.routeMap}" class="MagicZoom" rel="zoom-position:top">
	                    <img src="${basePath}${rt.routeMap}" alt="" width="100%"   height="127" />
	                </a>
	            </div>
	          </div>
	        </td>
        </c:if>
      </tr>
    </table>
    </td>
    </tr> <tr>
    <td style="float:left"><img style="float:left" src="images/frame1-3.gif" width="100%" height="7" /></td>
  </tr> 
    </table>
  </div>
  <div id="detail-route" name="detail-route">
   <table  class="frametb"  align="center">
  <tr>
    <td colspan=2 style="padding-top:30;"><span class="h2-24" style="float:left"><img src="${basePath}images/detail.png" width="32" height="32" /></span> 
    <span class="h2-24" style="float:left"><span class="STYLE148">简要日程</span></span></td>
  </tr>
     <tr>
    <td width="100%" style="align:left;float:left"><img src="${basePath}images/frame1-1.gif" height="7" /></td>
  </tr>
  <tr><td colspan="2" background="images/frame1-2.gif" >${qf.showTrip }</td></tr>   
  <tr>
  <tr>
    <td style="float:left"><img style="float:left" src="images/frame1-3.gif" width="100%" height="7" /></td>
  </tr>  
  <tr>
    <td colspan=2 style="padding-top:30;"><span class="h2-24" style="float:left"><img src="${basePath}images/detail.png" width="32" height="32" /></span>
    <span class="h2-24" style="float:left"><span class="STYLE148">详细日程</span></span></td>
  </tr>
  <tr><td colspan="2" background="images/frame1-2.gif">${qf.agodaDetail }</td></tr>
<tr> <td colspan="2" style="text-align:left"><span class="STYLE7">注：以上行程僅供參考，可根据您的假期重新调整设计。</span></td> </tr>
      </table> 
  </div>
  <div id="need-know" name="need-know">
  <table  class="frametb"  align="center"  >
  <tr>
    <td colspan=2 style="text-align:left;float:left;padding-top:30;"><img src="images/document2.png" width="32" height="32" /> 
    <span class="h2-24" style="float:left"><span class="STYLE148">行前需知</span></span></td>
  </tr>
  <tr>
    <td colspan=2 style="text-align:left;align:left;">${rt.beforeInstruction }</td>
  </tr>
    <tr>
    <td colspan=2 style="float:left;padding-top:30;"><img style="float:left" src="${basePath}images/heart02.png" width="32" height="32" />
    <span class="h2-24" style="float:left"><span class="STYLE148"><span class="STYLE14"><span class="STYLE2">服务及报价</span></span></span></span></td>
  </tr>
  <tr>
    <td colspan=2 style="text-align:left;align:left">${rt.serviceAndQuote }</td>
  </tr>
     <tr>
    <td colspan=2 style="float:left;padding-top:30;"><img style="float:left" src="${basePath}images/heart02.png" width="32" height="32" />
    <span class="h2-24" style="float:left"><span class="STYLE148"><span class="STYLE14"><span class="STYLE2">相关线路</span></span></span></span></td>
  </tr>
  <tr>
    <td  colspan=2 width="100%" style="float:left"><img style="float:left; vertical-align:text-top;" valign="top" src="${basePath}images/frame1-1.gif" height="7" /></td>
  </tr>
  <tr><td colspan=2 style="float:left" background="images/frame1-2.gif" style="valign:top;"> 
     <c:forEach items="${rt.relates}" var="relat"><br>
     <a href="${basePath}light-${relat.alias}" >${relat.title }</a>
       <%-- <a href="${basePath}climb/toQuote2/${relat.alias}" class="easyui-linkbutton" >${relat.title }</a> --%>
     </c:forEach>
     </td></tr>
   <tr>
    <td colspan=2 style="float:left"><img style="float:left" src="images/frame1-3.gif" width="100%" height="7" /></td>
  </tr>
 <tr>
     <td colspan=2 style="padding-top:30;"><span class="STYLE3" style="text-align:left;float:left">告诉我们您的需求，免费为您策划方案 GO! </span>&nbsp;&nbsp; 
     <span class="STYLE3"  style="text-align:left;float:left;"><a style="text-align:left;float:left;" href="${basePath}light-selfbooking-${rt.alias}">
     <img style="float:middle" src="${basePath }images/tailor.gif" width="134" height="32" ></a></span></td>
   </tr>
</table>
  </div>
  <div id="feed-back" name="feed-back">
  <table  class="frametb"  align="center">
  <tr>
    <td width="32" style="text-align:left"><img src="${basePath}images/ask03.png" width="32" height="32" /></td>
    <td width="100%" style="text-align:left"><span class="h2-24"><span class="STYLE148"><span class="STYLE14"><span class="STYLE2" style="text-align:left;float:left">还想了解什么吗？快来跟我们说说：</span><a href="#"></a></span></span></span></td>
  </tr>
</table>
<table class="frametb"  align="center">
  <tr>
    <td style="float:left"><img style="float:left" src="${basePath}images/frame1-1.gif" height="7" /></td>
  </tr>
  <tr>
    <td background="${basePath}images/frame1-2.gif">
    <form name="fastask"  class="ui-form">
    <table class="frametb" align="center">
        <tr>
          <td width="31%" valign="top"><table width="357" border="0" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
              <tr>
                <td height="30" colspan="2" bgcolor="#CCCCCC" class="STYLE140"><div align="center" class="STYLE3">快速询问</div>
                    <div align="center"></div></td>
              </tr>
              <tr>
                <td width="51" bgcolor="#F0F0F0" class="STYLE140"><div align="right" class="STYLE126"><strong>*姓名</strong>:</div></td>
                <td width="249" bgcolor="#F0F0F0" class="STYLE126" style="padding-left:20px;text-align:left"><input type="text" name="name"  class="easyui-textbox" data-options="height:22,prompt:'请键入您的大名',validType:'string'"/><!--  -->
                    <select name="sex" id="sex" class="easyui-combobox" data-options="width:60,height:22,editable:false,panelHeight:80">
                      <option value="1">先生</option>
                      <option value="0">女士</option>
                    </select>
                </td>
              </tr>
              <tr>
                <td bgcolor="#F0F0F0" class="STYLE140"><div align="right" class="STYLE126"><strong>*电邮</strong>:</div></td>
                <td bgcolor="#F0F0F0" class="STYLE126" style="padding-left:20px;text-align:left"><input type="text"  class="easyui-textbox" name="email" data-options="height:22,prompt:'请键入合法的电邮',validType:'email'"/>
                   <%--  <a href="javascript:void(0)" title="${合法的电子邮箱}">Explains</a>&gt;&gt; --%> </td>
              </tr>
              <tr>
                <td bgcolor="#F0F0F0" class="STYLE140"><div align="right"><strong>电话</strong>:</div></td>
                <td bgcolor="#F0F0F0" class="STYLE126" style="padding-left:20px;text-align:left"><input type="text" name="mobile"  class="easyui-numberbox" data-options="height:22,prompt:'请键入您的联系电话'"/>
                    <!-- <a href="javascript:void(0)" title="合法且正在使用的11位大陆手机号码">Explains</a>&gt;&gt; --> </td>
              </tr>
          <!--     <tr>
                <td bgcolor="#F0F0F0" class="STYLE140"><div align="right"><strong>标题</strong>:</div></td>
                <td bgcolor="#F0F0F0" class="STYLE140"><label>
                  <input type="text" name="title" />
                </label></td>
              </tr> -->
              <tr>
                <td bgcolor="#F0F0F0" class="STYLE140"><div align="right"><strong>内容</strong>:</div></td>
                <td bgcolor="#F0F0F0" class="STYLE140" style="padding-left:20px;text-align:left"> 
                   <textarea name="content" cols="30" rows="5" class="easyui-textbox" data-options="multiline:true,width:205,height:89,prompt:'您要说什么...'"></textarea>
                </td>
              </tr>
              <tr>
                <td bgcolor="#F0F0F0" class="STYLE140"><strong>验证码：</strong></td>
                <td bgcolor="#F0F0F0" class="STYLE126" style="padding-left:20px;text-align:left"><div class="tip">
                <input type="text" id="verifyCode"  class="easyui-textbox" title="验证码" name="verifyCode"  data-options="height:22,prompt:'请键入正确的验证码!'"/><br/>
                <img alt="点击更换" src="${basePath}ImageServlet" id="validateCodeImg" onclick="document.getElementById('validateCodeImg').src='${basePath}ImageServlet?'+Math.random()">
                &nbsp;&nbsp;<a href="javascript:void(0)" onclick="document.getElementById('validateCodeImg').src='${basePath}ImageServlet?'+Math.random()">看不清，换一张</a>
      </div></td>
              </tr>
              <tr>
                <td colspan=2 bgcolor="#F0F0F0" class="STYLE140"><input type="hidden" name="route" value="${rt.routeCode}"/> 
               <a class="easyui-linkbutton" iconcls="icon-ok" name="SubmitSend">提问</a></td>
              </tr>
              <tr>
                <td bgcolor="#F0F0F0" class="STYLE140">&nbsp;</td>
                <td bgcolor="#F0F0F0" class="STYLE140">*我们会对您的资料保密。</td>
              </tr>
          </table></td>
         
        </tr>
      </table></form></td>
  </tr>
 <tr><td>
   <table  class="frametb" align="center">
        <div id="fbcontent"></div>
   </table>
  </td></tr>
  <tr>
    <td style="float:left"><img style="float:left" src="images/frame1-3.gif" width="100%" height="7" /></td>
  </tr>
   <tr>
    <td style="text-align:center">  <ul id='fbpage'></ul></td>
  </tr>
</table>
  </div>
    <div id="show-happy" name="show-happy">
    <table style="margin-bottom:30"><tr>
    <td colspan=2 style="float:left"><img style="float:left" src="${basePath}images/heart02.png" width="32" height="32" />
    <span class="h2-24" style="float:left"><span class="STYLE148"><span class="STYLE14"><span class="STYLE2">回忆幸福</span></span></span>——将幸福定格</span></td>
  </tr>
  <tr>
    <td colspan=2 width="1140" style="float:left"><img style="float:left;vertical-align:text-top;" valign="top" src="${basePath}images/frame1-1.gif" height="7" /></td>
  </tr>
  <tr><td colspan=2 style="float:left" background="images/frame1-2.gif" style="valign:top;"> 
                <table width='100%' border='0' align='center' cellpadding='10' cellspacing='0'> 
                            <tr> 
                              <td valign='top'><table width='100%' border='0' cellspacing='0' cellpadding='20'> 
                                   <tr> 
                                    <td style='width:26.8%'><table  border='0' align='center' cellpadding='0' cellspacing='0'> 
                                      <tr>
                                        <td><table border='0' cellspacing='0' cellpadding='0'>
                                            <tr>
                                              <td style='width:100%;'><a href='${basePath}showhappy-detail-${shvo.shCode}'><img src='${basePath}${shvo.cover}' width='100%' /></a></td>
                                              <td width='11' rowspan='2' valign='bottom'><img src='${basePath}images/tu-k-02.gif' width='11' height='122' /></td>
                                            </tr>
                                            <tr>
                                              <td><div align='right'><img src='${basePath}images/tu-k-01.gif' width='191' height='9' /></div></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                    </table></td>
                                    <td width='73.2%' valign='bottom'><table width='100%' border='0' cellpadding='2' cellspacing='2' class='STYLE126'>
                                      <tr>
                                        
                                        <td style='text-align:left'><span class='STYLE19'>${shvo.title} </span><span class='STYLE22'>${shvo.tourTime}</span></td>
                                      </tr>
                                      <tr>
                                        <td width='100%' style='text-align:left'><span class='STYLE18'>${shvo.shortContent}<a href='${basePath}showhappy-detail-${shvo.shCode}'>走进她的回憶</a>》》<img src='images/quote-2.gif' width='18' height='14' /></span></td>
                                      </tr>
                                      <tr>
                                        <td style='text-align:right'><div class='STYLE20'>${shvo.signature} From ${shvo.areaname}</div></td>
                                      </tr>
                                    </table></td>
                                  </tr>
                                </table>
                                  <div>
                                </div>
                              </td>
                            </tr>
						    <tr>
						      <td valign="top"><span class="STYLE126"><a href="${basePath}showhappy">更多回憶》》</a></span></td>
						    </tr>
                          </table>
   </td></tr>
   <tr>
    <td colspan=2 style="float:left"><img style="float:left" src="images/frame1-3.gif" width="1140" height="7" /></td>
  </tr>
  </table>
  </div> 
  </div>
  </div>
  </td></tr>
      <tr><td><%@include file="/frontm/footer.jsp" %></td></tr>
</table>
<script type="text/javascript" src="${basePath}jsm/ux/front/light/detail.js"></script>
</center>
</body>
</html>



