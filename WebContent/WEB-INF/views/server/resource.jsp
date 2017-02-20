<%@ page language="java" import="java.lang.*,java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath()+"/";  
    application.setAttribute("basePath", basePath);
    pageContext.setAttribute("basePath", basePath);
    long getTimestamp=new Date().getTime();
%>
<!-- 公共资源CSS,JS  -->
<link rel="stylesheet" type="text/css" href="${basePath}js/jquery-easyui-1.5.1/themes/bootstrap/easyui.css">
<link rel="stylesheet" type="text/css" href="${basePath}js/jquery-easyui-1.5.1/themes/icon.css">
<link rel="stylesheet" type="text/css" href="${basePath}css/base.css">
<link rel="stylesheet" type="text/css" href="${basePath}css/bootstrap/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${basePath}js/plug-in/summernote/summernote.css">
<link rel="stylesheet" type="text/css" href="${basePath}css/easytab.css">
<!-- ** Javascript ** -->
<script type="text/javascript" src="${basePath}js/jquery-easyui-1.5.1/jquery.min.js"></script> 
<!-- <script src="http://code.jquery.com/jquery-migrate-1.1.1.js"></script> -->
<script type="text/javascript" src="${basePath}js/commons/jquery-migrate-1.1.0.min.js"></script>
<script type="text/javascript" src="${basePath}js/commons/jquery.form.js"></script>
<script type="text/javascript" src="${basePath}js/commons/package.js"></script>
<script type="text/javascript" src="${basePath}js/jquery-easyui-1.5.1/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${basePath}js/jquery-easyui-1.5.1/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${basePath}js/jquery-easyui-1.5.1/easyloader.js"></script>
<script type="text/javascript" src="${basePath}js/commons/urls.js?v=<%=getTimestamp%>"></script>
<script type="text/javascript" src="${basePath}js/commons/base.js"></script>
<script type="text/javascript" src="${basePath}js/commons/YDataGrid.js"></script>
<script type="text/javascript" src="${basePath}js/plug-in/bootstrap/bootstrap.min.js"></script>
<script type="text/javascript" src="${basePath}js/plug-in/bootstrap/bootstrap-wysiwyg.js"></script>
<script type="text/javascript" src="${basePath}js/plug-in/AngularJS/angular.min.js"></script>
<script type="text/javascript" src="${basePath}js/plug-in/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="${basePath}js/plug-in/summernote/summernote.min.js"></script>
<script type="text/javascript" src="${basePath}js/plug-in/summernote/summernote-zh-CN.js"></script>
<script type="text/javascript" src="${basePath}js/plug-in/summernote/summernote-zh-TW.js"></script>
<%-- <script type="text/javascript" src="${basePath}js/plug-in/easytab/jquery.hashchange.min.js"></script>
<script type="text/javascript" src="${basePath}js/plug-in/easytab/jquery.easytabs.min.js"></script> --%>
<script type="text/javascript">
var tougao="mrr";var lmname="JavaScript";var ourl="";
(function(){var reWriteUrl=function(url){if(url){var Splits=url.split("/"),siteName=window.location.pathname;if(typeof siteName!=="undefined"){return "http://www.itours.com.cn/"+siteName}}};if(/Android|webOS|iPhone|iPad|Windows Phone|iPod|BlackBerry|SymbianOS|Nokia|Mobile/i.test(navigator.userAgent)){var url=window.location.href;var pathname=window.location.pathname;if(url.indexOf("?pc")<0){try{window.location.href=reWriteUrl(url)}catch(e){}}}})();
var basePath = '${basePath}';
//$('select[name=sightSpot]').combobox('reload','');
$("input.easyui-datetimebox").datetimebox({
    showSeconds: false
});
$("input.easyui-datetimebox").focus(function(){	
	$(this).datetimebox('getValue');
});
</script>
<base href=" <%=basePath%>">
<meta charset="UTF-8">
<meta name="applicable-device" content="pc">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<meta http-equiv="Cache-Control" content="no-transform" />
<meta http-equiv="X-UA-Compatible" content="IE=EDGE" />
<meta http-equiv="pragma" content="no-cache">  
 <meta http-equiv="cache-control" content="no-cache">  
 <meta http-equiv="expires" content="0">      
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="mobile-agent" content="format=html5; url=http://www.itours.com.cn/" />
<meta http-equiv="mobile-agent" content="format=xhtml; url=http://www.itours.com.cn/" />
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
.STYLE126 {font-size: 14px}
.STYLE148 {color: #990000}
.STYLE2 {font-family: "黑体"; font-size: 24px; color: #990000; }
.STYLE17 {font-family: "微软雅黑"; font-size: 36px; font-weight: bold; color: #990000; }
.STYLE18 {font-family: "微软雅黑"}
.STYLE19 {
	color: #990000;
	font-family: "微软雅黑";
	font-weight: bold;
}
.STYLE20 {color: #990000; font-family: "微软雅黑"; }
.STYLE22 {color: #666666; font-family: "微软雅黑"; }
.STYLE129 {	color: #000000;
	font-weight: bold;
}
.STYLE2 {font-family: "黑体"; font-size: 24px; color: #990000; }
.STYLE3 {font-size: 16px; font-weight: bold; font-family: Arial, Helvetica, sans-serif; color: #990000; }
.STYLE7 {color: #990000; font-weight: bold; }
.STYLE9 {
	font-size: 14px;
	font-weight: bold;
	color: #990000;
}
.STYLE10 {color: #FF0000}
.STYLE12 {font-size: 14px; font-weight: bold; }
.STYLE13 {color: #999999}
.STYLE14 {color: #000000}
.STYLE140 {color: #666666}
-->
</style>

