<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
    application.setAttribute("basePath", basePath);
    pageContext.setAttribute("basePath", basePath);
    
%>
<script type="text/javascript">
var basePath = '${basePath}';
var getTimestamp=new Date().getTime();
</script>
<!-- 公共资源CSS,JS  -->
<!--Css -->
<link rel="stylesheet" type="text/css" href="${basePath}/js/jquery-easyui-1.3.2/themes/bootstrap/easyui.css">
<link rel="stylesheet" type="text/css" href="${basePath}/js/jquery-easyui-1.3.2/themes/icon.css">
<link rel="stylesheet" type="text/css" href="${basePath}/css/base.css">
<!-- ** Javascript ** -->
<%-- <script type="text/javascript" src="${basePath}/js/commons/jquery-1.12.3.js"></script> --%>
<script type="text/javascript" src="${basePath}/js/jquery-easyui-1.5.1/jquery.min.js"></script>
<!-- <script src="http://code.jquery.com/jquery-migrate-1.1.1.js"></script> -->
<script type="text/javascript" src="${basePath}/js/commons/jquery-migrate-1.1.0.min.js"></script>
<script type="text/javascript" src="${basePath}/js/commons/jquery.form.js"></script>
<script type="text/javascript" src="${basePath}/js/commons/package.js"></script>
<script type="text/javascript" src="${basePath}/js/jquery-easyui-1.3.2/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${basePath}/js/commons/urls.js?v=getTimestamp"></script>
<script type="text/javascript" src="${basePath}/js/commons/ajaxfileupload.js"></script> 
<script type="text/javascript" src="${basePath}/js/commons/base.js?v=getTimestamp"></script>
<script type="text/javascript" src="${basePath}/js/commons/YDataGrid.js"></script>
<script type="text/javascript" src="${basePath}/js/jquery-easyui-1.3.2/locale/easyui-lang-zh_CN.js"></script>
