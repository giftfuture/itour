<%@ page language="java" import="java.lang.*,java.util.Date" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="/WEB-INF/views/server/resource.jsp"  %> 
<!DOCTYPE html >
<html>
<head>
<base href=" <%=basePath%>">
 <meta http-equiv="pragma" content="no-cache">  
 <meta http-equiv="cache-control" content="no-cache">  
 <meta http-equiv="expires" content="0">      
 <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
 <meta http-equiv="description" content="This is my page"> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="${basePath}css/easing.css">
<script type="text/javascript" src="${basePath}js/plug-in/easing.js"></script>
<script type="text/javascript" src="${basePath}js/plug-in/jquery.easing.compatibility.js"></script> 
<title>目的地</title>
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
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
    <td>
		 <%@include file="/front/header.jsp"  %>
    </td>
  </tr>
</table>

<table width="100%"  border="0" align="center" cellpadding="15" cellspacing="0">
  <tr>
    <td>目的地》四川》四姑娘山》四姑娘山长坪沟</td>
  </tr>
</table>
<br />
<table width="100%" height="60%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr style="height:500px">
    <td width="275" valign="top">
    <div align="center">
      <table width="275" border="0" cellspacing="0" cellpadding="5">
          <tr>
            <td height="30" bgcolor="#990000"><div align="center" class="STYLE6">旅遊目的地</div></td>
          </tr>
          <tr>
  			<td><div class="treebox">
				<ul class="menu">
				<c:forEach items="${scopes}" var="scope" varStatus="status">
					<li class="level1">
						<a href="javascript:void(0)"><em class="ico ico${ status.index + 1}"></em><c:out value="${scope.value}"></c:out><i class="down"></i></a>
						<ul class="level2">
							<c:forEach items="${items}" var="item">
								<c:if test="${scope.key==item.scopeAlias }">
									<li><a href="javascript:;"><c:out value="${item.item}"></c:out></a></li>
								</c:if>
							</c:forEach>
						</ul>
					</li>
					</c:forEach>
				</ul>
			</div>
			</td>
          </tr>
        </table>
        </td>
        <td rowspan=2>
        		<c:forEach var="sortitem" items="${sortedItems}" varStatus="">
		        <table width="835" border="0" align="center" cellpadding="10" cellspacing="0" bgcolor="#f0f0f0">
		      <tr>
		        <td width="648"><span class="STYLE5"><c:out value="${sortitem.key }"></c:out></span></td>
		        <td width="432"><div align="right"><c:out value="${tiSizes[sortitem.key]}"></c:out>个目的地
		        <c:if test="${fn:length(sortitem.value)>= maxd}">
		         | <a href="${basePath}destination/moredests">显示更多</a>
		         </c:if>
		        </div> </td>
		      </tr>
		    </table>
		      <table border="0" align="center" cellpadding="5" cellspacing="0">
		      <tr>
			     <c:forEach items="${sortitem.value}" var="ti">
			      	<td><c:out value="${ti.item}"></c:out><img alt="" src="${basePath }${ti.cover}"></td>
			      </c:forEach>
		       <!--  <td rowspan="2"><img src="images/Route001.jpg" width="420" height="233" /></td>
		        <td><img src="images/Route001.jpg" width="197" height="110" /></td>
		        <td><img src="images/Route001.jpg" width="197" height="110" /></td> -->
		      </tr>
		     <!--  <tr>
		        <td><img src="images/Route001.jpg" width="197" height="110" /></td>
		        <td><img src="images/Route001.jpg" width="197" height="110" /></td>
		      </tr> -->
		    </table>
		    </c:forEach>
        </td>
        </tr>
        <tr height="30%">
    	<td width="275" valign="top">
   		 <div align="center">
        <table width="275" height="30%" border="0" align="center" cellpadding="5" cellspacing="0">
          <tr>
            <td width="48" valign="middle" bgcolor="#CCCCCC"><div align="center" class="STYLE2"><img src="images/search.png" width="48" height="48" /></div></td>
            <td width="162" valign="middle" bgcolor="#CCCCCC"><span class="STYLE2">线路搜索</span></td>
          </tr>
          <tr>
            <td colspan="2" bgcolor="#CCCCCC"><span class="f14-gao1">
            	旅游区域：
              <label>
              <form:form method="post">
                 <input name="scopes" class="easyui-combobox"  id="scopes" style="width:100px;" data-options="valueField:'key',textField:'value',mode:'remote',panelHeight:'auto',editable:false, method:'get',url:'${basePath}travelItem/allScopes',
                   onSelect:function(v){
                   	var urlurl = '${basePath}travelItem/queryByScope?scopeAlias='+v.key;
                   	if(v.key){
                   	$('#sightSpots').combobox('reload',urlurl);}}">
                  <input name="sightSpots" id="sightSpots" class="easyui-combobox" style="width:100px;" data-options="valueField:'alias',textField:'item',mode:'remote',panelHeight:'auto',editable:false, method:'get'">
                  <br />
                旅行方式：
                <input name="travelstyles" class="easyui-combobox" style="width:100px;" data-options="valueField:'alias',textField:'type',mode:'remote',panelHeight:'auto',editable:false,method:'get',url:'${basePath}travelStyle/loadStyles'">
                <br />
                假期时间：<select name="vacation" class="easyui-combobox" style="width:100px;" data-options="panelHeight:'auto',editable:false,mode:'remote'">
                 <option> -不限-</option>
                 <option value="1-5">1-5天</option>
                 <option value="6-9">6-9天</option>
                 <option value="10-15">10-15天</option>
                 <option value="16">16天+</option>
                </select>
                </form:form>
                </label>
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
        <img src="images/未标题-2 拷贝.jpg" width="229" height="374" />
        </div></td>
    <td width="70%" valign="top">
    <%-- <table width="835" border="0" align="center" cellpadding="10" cellspacing="0" bgcolor="#f0f0f0">
      <tr>
        <td width="648"><span class="STYLE5">四川</span></td>
        <td width="432"><div align="right">12个目的地 | <a href="${basePath }destination/toMoreDest">显示更多</a></div></td>
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
      <table width="835" border="0" align="center" cellpadding="10" cellspacing="0" bgcolor="#f0f0f0">
        <tr>
          <td width="648"><span class="STYLE5">西藏</span></td>
          <td width="432"><div align="right">12个目的地 | <a href="${basePath }destination/toMoreDest">显示更多</a></div></td>
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
          <td width="432"><div align="right">12个目的地 | <a href="${basePath }destination/toMoreDest">显示更多</a></div></td>
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
          <td width="432"><div align="right">12个目的地 | <a href="${basePath }destination/toMoreDest">显示更多</a></div></td>
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
          <td width="432"><div align="right">12个目的地 | <a href="${basePath }destination/toMoreDest">显示更多</a></div></td>
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
      </table>--%>
      
      </td>
  </tr>
</table>
<script type="text/javascript" src="${basePath}js/ux/front/destination/destinations.js"></script>
 <%@include file="/front/footer.jsp"  %>  
</body>
</html>
