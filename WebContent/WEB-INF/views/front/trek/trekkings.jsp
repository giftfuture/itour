<%@ page language="java" import="java.lang.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="/WEB-INF/views/server/resource.jsp"  %>
<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
 <meta http-equiv="description" content=""> 
<title>徒步旅行</title>
</head>
<body>
<table class="commontb" align="center">
   <tr>
    <td> <%@include file="/front/header.jsp"  %> </td>
  </tr>
  <tr>
    <td><img src="images/banner-trekking.jpg"  /></td><!-- width="100%" height="100%" -->
  </tr>
</table>
<table class="commontb" align="center">
  <tr>
    <td height="106" valign="top" bgcolor="#fafafa">
    <table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
      <tr>
        <td class="h1-black" style="text-align:left">徒步登山</td>
      </tr>
      <tr>
        <td class="h1-2" style="text-align:left">專業團隊為您提供後勤保障</td>
      </tr>
      <tr>
        <td style="text-align:left"><p>帶上家人，約上朋友 </p>
          <p>登山頂峰<br />  
              <br />
         <%--    》》<a href="${basePath}hiking/main">了解更多</a> --%></p>
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
<%-- <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="94" bgcolor="#CCCCCC"><div align="center"><strong>快速搜索</strong></div></td>
    <td width="956" bgcolor="#CCCCCC" class="f14-gao1">
      <label>旅行方式：
        <input id="travelstyle" name="travelstyle" class="easyui-combobox"  style="width:150px;" data-options="valueField:'alias',textField:'type',mode:'remote',panelHeight:'auto',editable:false, method:'get',url:'${basePath}travelStyle/loadStyles'">
       	 区域：
        <input class="easyui-combobox" id="selectScopes" name="selectScopes" style="width:100px;"  data-options="valueField:'scopeAlias',textField:'scope',mode:'remote',method:'get',panelHeight:'auto',editable:false, url:'${basePath}travelItem/allScopes',
        onChange:function(n,o){var urlurl = '${basePath}travelItem/queryByScope?scopeAlias='+n;
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
</table> --%>
<table class="commontb" align="center">
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
        <td><a href="${basePath }hiking/hiking/${rt.alias}"><img src="${basePath }${rt.cover}" width="353" height="166" ></a></td>
      </tr>
      <tr>
        <td class="f12-gao1">${rt.shortContent}</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table></td>
    </c:forEach>
  </tr></c:forEach>
</table>
<script type="text/javascript" src="${basePath}js/ux/front/trek/trekkings.js"></script>
<%@include file="/front/footer.jsp" %>
</body>
</html>
