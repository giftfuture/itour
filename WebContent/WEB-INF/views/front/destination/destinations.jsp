<%@ page language="java" import="java.lang.*,java.util.Date" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="/WEB-INF/views/server/resource.jsp"  %> 
<!DOCTYPE html>
<html lang="zh-CN">
<head>
 <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
 <meta http-equiv="description" content="This is my page"> 
<link rel="stylesheet" type="text/css" href="${basePath}css/easing.css">
<script type="text/javascript" src="${basePath}js/plug-in/easing.js"></script>
<script type="text/javascript" src="${basePath}js/plug-in/jquery.easing.compatibility.js"></script> 
<title>目的地</title>
</head>
<body>
 <%@include file="/front/header.jsp"  %>
<center>
<table class="frametb" align="center" style="text-align:center;">
 
  <tr>
    <td width="197" valign="top">
      <table width="197" border="0" cellspacing="0" cellpadding="5"float:right;>
          <tr>
            <td height="30" valign="top" style="width:20%;height:auto" bgcolor="#990000"><!-- padding-left:150 -->
            <div style="align:center;font-size:18px;background-color:#8B0000;text-decoration:none;color:white;">旅遊目的地</div>
            <div class="treebox" >
				<ul class="menu">
				<c:forEach items="${scopes}" var="scope" varStatus="status">
					<li class="level1">
						<a href="javascript:void(0)"><%-- <em class="ico ico${status.index + 1}"></em> --%>
						<!-- <img src="images/arrow4-1.gif" width="10" height="10"> -->
						<c:out value="${scope.value}"></c:out><i class="down"></i></a>
						<ul class="level2" style="float:middle">
							<c:forEach items="${items}" var="item">
								<c:if test="${scope.key==item.scope }">
									<li style="float:middle"><a href="${basePath }destination/detail/${item.alias}"><c:out value="${item.item}"></c:out></a></li>		
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
        <td border="0" align="center" cellpadding="0" cellspacing="0"  style="padding-left:0;margin-left:0;width:80%;" ><!-- rowspan=2 -->
       		<c:forEach var="sortitem" items="${sortedItems}" varStatus="">
	        <table border="0" align="center" cellpadding="0" cellspacing="0" style="padding-left:10;margin-left:10;width:100%;" >
		      <tbody><tr bgcolor="#f0f0f0" width="100%">
		        <td colspan=3 width="100%" >
		        <span class="STYLE5" style="text-align:left;float:left;"><c:out value="${fn:split(sortitem.key, '_')[1]}"></c:out></span>
		        <span style="text-align:right;float:right;"><div align="right">
		        <c:out value="${tiSizes[sortitem.key]}"></c:out>个目的地
		        <c:if test="${fn:length(sortitem.value)>= maxd}">
		         |<a href="${basePath}destination/moredests/${fn:split(sortitem.key, '_')[0]}">显示更多</a>
		         </c:if>
		        </div></span></td>
		      </tr>
		      <tr>
			     <c:forEach items="${sortitem.value}" var="ti" varStatus="ix">
				     <c:choose>
					     <c:when test="${ix.index==0}">
					        <td style="text-align:left;align:left">
		                        <a href="${basePath }destination/detail/${ti.alias}">${ti.item}<br/><img width="550px" height="309px" alt="" src="${basePath }${ti.cover}"/></a>
		                    </td>
					     </c:when>
					     <c:otherwise>
					      	<td style="text-align:left;align:left">
					      		<a href="${basePath }destination/detail/${ti.alias}">${ti.item}<br/><img width="262px" height="145px" alt="" src="${basePath }${ti.cover}"/></a>
					      	</td>
					     </c:otherwise>
				     </c:choose>
		         </c:forEach>
		      </tr>
		    </tbody></table>
		  </c:forEach>
        </td>
        </tr>
</table>
<script type="text/javascript" src="${basePath}js/ux/front/destination/destinations.js"></script>
 <%@include file="/front/footer.jsp"  %>  
 </center>
</body>
</html>
