<%@ page language="java" import="java.lang.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="/WEB-INF/views/server/resource.jsp"  %>
<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
 <meta http-equiv="description" content="This is my page"> 
<title>目的地详情</title>
<link rel="stylesheet" type="text/css" href="${basePath}css/easing.css">
<script type="text/javascript" src="${basePath}js/plug-in/easing.js"></script>
<script type="text/javascript" src="${basePath}js/plug-in/jquery.easing.compatibility.js"></script> 
<link rel="stylesheet" type="text/css" href="${basePath}css/ScrollPic.css">
<script type="text/javascript" src="${basePath}js/commons/ScrollPic.js"></script>
</head>
<body>
<table class="commontb" align="center">
  <tr>
    <td><%@include file="/front/header.jsp"  %></td>
  </tr>
</table>
<!-- <table class="commontb" align="center">
  <tr>
    <td>目的地》四川》四姑娘山》四姑娘山长坪沟</td>
  </tr>
</table> -->
<table class="commontb" align="center">
          <tr>
            <td height="30" bgcolor="#990000"><div align="center" class="STYLE6">旅遊目的地</div></td>
            <td rowspan=3>
            <!--滚动图片 start-->
			<DIV class=rollphotos>
			<DIV class=blk_29>
			<DIV class=LeftBotton id=LeftArr>
			<img src="${basePath}images/arrow01-1.gif" width="20" height="40" /></DIV>
			<DIV class=Cont id=ISL_Cont_1><!-- 图片列表 begin -->
			<c:forEach items="${rt.photoList}" var="photo">
			<DIV class=box>
			<a class=imgBorder target=_blank><IMG height=84 alt="landscape" src="${basePath }${photo}" width=124 border=0></a> 
			</DIV>
			</c:forEach>
			<!-- 图片列表 end --></DIV>
			<DIV class=RightBotton id=RightArr><img src="${basePath}images/arrow01-2.gif" width="20" height="40" /></DIV></DIV>
			<script language="javascript" type="text/javascript">
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
			</script>
			</DIV>
<!--滚动图片 end-->
            </td>
          </tr>
          <tr>
            <td valign="top">
            <div class="treebox">
				<ul class="menu">
				<c:forEach items="${scopes}" var="scope" varStatus="status">
					<li class="level1">
						<a href="javascript:void(0)"><em class="ico ico${status.index + 1}"></em><c:out value="${scope.value}"></c:out><i class="down"></i></a>
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
	  	 <td width="843"  bgcolor="#f0f0f0"></td></tr>
       <tr><td valign="top"><span class="STYLE1">备注：向下面这个图片用灰线隔一下</span><br />
      <img src="images/未标题-2 拷贝.jpg" width="220" height="374" /></td>
      <td width="843" valign="top" bgcolor="#f0f0f0"></td></tr>
</table>
<%@include file="/front/footer.jsp"  %>
</body>
</html>
