<%@ page language="java" import="java.lang.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="/WEB-INF/views/server/resource.jsp"  %>
<!DOCTYPE html>
<html>
<head>
<base href=" <%=basePath%>">
 <meta http-equiv="pragma" content="no-cache">  
 <meta http-equiv="cache-control" content="no-cache">  
 <meta http-equiv="expires" content="0">      
 <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
 <meta http-equiv="description" content=""> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>徒步旅行</title>
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
<%-- <script type="text/javascript" src="${basePath}js/jquery-easyui-1.5.1/jquery.min.js"></script>
<script type="text/javascript" src="${basePath}js/commons/package.js"></script> --%>
</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
   <tr>
    <td>
		 <%@include file="/front/header.jsp"  %>
    </td>
  </tr>
  <tr>
    <td><img src="images/banner-trekking.jpg" width="100%" height="100%" /></td>
  </tr>
</table>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="106" valign="top" bgcolor="#fafafa">
    
    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
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
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="94" bgcolor="#CCCCCC"><div align="center"><strong>快速搜索</strong></div></td>
    <td width="956" bgcolor="#CCCCCC" class="f14-gao1">
      <label>旅行方式：
        <input id="travelstyle" name="travelstyle" class="easyui-combobox"  style="width:150px;" data-options="valueField:'alias',textField:'type',mode:'remote',panelHeight:'auto',editable:false, method:'get',url:'${basePath}travelStyle/loadStyles'">
       	 区域：
        <input class="easyui-combobox" id="selectScopes" name="selectScopes" style="width:100px;"  data-options="valueField:'key',textField:'value',mode:'remote',method:'get',panelHeight:'auto',editable:false, url:'${basePath}travelItem/allScopes',
        onSelect:function(v){var urlurl = '${basePath}travelItem/queryByScope?scopeAlias='+v.key;
        $('#sightSpot').combobox('reload',urlurl);}"><!-- $('#selectScopes').combobox('getValue') -->
        <input id="sightSpot" name="sightSpot" class="easyui-combobox" style="width:100px;"  data-options="valueField:'alias',textField:'item',mode:'remote',panelHeight:'auto',editable:false, method:'get'"> 
        <br />
        假期天数：<select name="vacation" style="width:100px;">
        	<option>-所有-</option>
        	<option value="3-5">3-5天</option>
        	<option value="6-9">6-9天</option>
        	<option value="10-15">10-15天</option>
        	<option value="16">16天+</option>
        </select>
</label></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td class="f14-gao1">&nbsp;</td>
  </tr>
</table>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
<c:forEach begin="0" end="${rows}" varStatus="status">
  <tr>
    <c:forEach items="${rts.get(status.index)}" var="rt" >
    <td valign="top">
    <table width="353" border="0" align="left" cellpadding="0" cellspacing="0">
      <tr>
        <td><table width="300" border="0" align="left" cellpadding="0" cellspacing="0">
            <tr>
             <!--  <td width="57"><img src="images/icon-01.jpg" width="57" height="43" /></td>ISO-8859-1 -->
            <%--   <td width="296" class="h2-24"><a href="${basePath}hiking/detail/${rt.alias}">${rt.title}</a></td> --%>
              <td width="296" class="h2-24"><a href="${basePath}hiking/hiking/${rt.alias}">${rt.title}</a></td>
            </tr>
        </table></td>
      </tr>
      <tr>
        <td class="f12-gao1">${rt.shortContent}</td>
      </tr>
      <tr>
        <td><a href="${basePath }hiking/hiking/${rt.alias}"><img src="${basePath }${rt.cover}" width="353" height="166" ></a></td>
      </tr>
     <%--  <tr>
        <td><span class="f14-gao1">${item.content}</span></td>
      </tr> --%>
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table></td>
    </c:forEach>
   <!--  <td valign="top"><table width="353" border="0" align="center" cellpadding="0" cellspacing="0">
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
    </table></td> -->
  </tr></c:forEach>
</table>
<!--<table width="1140" border="0" align="center" cellpadding="0" cellspacing="0">
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
</table>-->
<script type="text/javascript" src="${basePath}js/ux/front/trek/trekkings.js"></script>
<%@include file="/front/footer.jsp" %>
</body>
</html>
