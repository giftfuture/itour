<%@ page language="java" import="java.lang.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%    
String path = request.getContextPath();    
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";    
pageContext.setAttribute("basePath",basePath);    
%>
 <script type="text/javascript" src="${basePath}js/jquery-2.1.1.min.js"></script>
 <script type="text/javascript">
 var basePath = '${basePath}';
</script>
<link href="${basePath}css/index.css" rel="stylesheet" type="text/css" />
    <div id="top-menu" width="100%" height="153" >
    <table width="100%" align="center" style="border:0;cursor:pointer">
    	<tr><th colspan="2"><img src="${basePath}images/head2016.gif" /></th>
    	<th colspan="4"><img src="${basePath}images/chinatravel.png" alt="" />
    	<span style="padding-bottom:5px;">旗下&nbsp;定製旅行服務團隊</span></th>
    	<th><span style="color:red">一鍵撥號：<a href="tel:+8602885580038">+86&nbsp;28&nbsp;85580038</a></span>&nbsp;&nbsp;&nbsp;<!-- <a href="sms:139xxxxxxx">一键发送短信</a> --></th>
    	<th><a href="mailto:info@iTours.com.cn">info@iTours.com.cn</a></th></tr>
    	<tr class="trbanner" align="center" border=0><td href="#">首頁</td><td>徒步</td><td>登山</td><td>自駕</td><td>輕驢行</td><td>回憶興福</td><td>目的地</td><td><a href="${basePath}front/whyus/Why.jsp">Why Us</a></td></tr>
    </table>
     </div>
  

